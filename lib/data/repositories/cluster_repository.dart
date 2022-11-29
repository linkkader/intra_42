
import 'dart:convert';
import 'dart:ui' as ui;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:html/parser.dart';
import 'package:intra_42/core/extensions/element_ext.dart';
import 'package:intra_42/core/extensions/string_ext.dart';
import 'package:intra_42/core/utils/pair.dart';
import 'package:intra_42/data/api/client.dart';
import 'package:intra_42/data/models/cluster_item.dart';
import 'package:intra_42/data/models/empty_cluster.dart';
import 'package:intra_42/data/models/user.dart';
import 'package:intra_42/data/repositories/user_repository.dart';
import 'package:intra_42/domain/api_interface/custer_interface.dart';
import '../../domain/util_interface/provider_interface.dart';
import '../../main.dart';
import '../api/api.dart';
import '../api/web_socket/web_manager.dart';
import '../locale_storage/locale_storage.dart';
import '../manager/image_manager.dart';
import '../models_izar/user_isar.dart';

class ClusterRepository extends ClusterInterface with ProviderInterface {
  late Api _api;
  bool _isInit = false;
  Provider<ClusterRepository>? _pr;

  static final ClusterRepository _instance = ClusterRepository._internal();
  ClusterRepository._internal();
  factory ClusterRepository() => _instance;

  ClusterRepository init(Api api) {
    assert(!_isInit, "ClusterRepository already initialized");
    _api = api;
    _isInit = true;
    return this;
  }

  @override
  Provider get provider => _pr ??= Provider((ref) => this);

  @override
  Future<Map<Pair<String, String>, Map<String, ClusterItem>>> clusterItems() {
    assert(_isInit, "AuthRepository not initialized");
    return _api.clusterItems().then((value) async {
      List<Pair<String, String>> lst = [];
      var doc = parse(await _api.clusters());
      for(var element in doc.querySelectorAll('div.map-container')){
        lst.add(Pair(element.outerHtml.substringAfter('data-floor="').substringBefore('"'), element.outerHtml.substringAfter('data-image="').substringBefore('"')));
      }
      return mapClusterItemFromJson(value, lst);
    });
  }


  @override
  Future<List<EmptyCluster>> emptyClusters(String url) async{
    var diffX = 500;
    var diffY = 500;
    assert(_isInit, "AuthRepository not initialized");
    var doc = await Client().docWithHeader(url);
    var elements = doc.querySelectorAll("rect");
    var items = <EmptyCluster>[];

    for (var value in elements) {
      items.add(EmptyCluster(id: value.attr("id"), x: value.attr("x").toInt() + diffX, y: value.attr("y").toInt() + diffY, height: value.attr("height").toInt(), width: value.attr("width").toInt(), isText: false));
    }
    App.log.i(items.length);

    elements = doc.querySelectorAll("text");
    for (var value in elements) {
      var id = value.text;
      var x = value.outerHtml.substringAfter(' 1 ').substringBefore(' ').toInt() + diffX;
      var y = value.outerHtml.substringBefore(')').substringAfterLast(' ').toInt() + diffY;
      items.add(EmptyCluster(id: id, x: x, y: y, height: 0, width: 0, isText: true));
    }
    return items;
  }

  ///listen 42 cable websocket and update cluster
  void cable(Function(ClusterItem item, ui.Image? img, User user) onNew, ) {
    var user = LocaleStorage().getMe;
    var d = {"command":"subscribe","identifier":"{\"channel\":\"LocationChannel\",\"user_id\":${user?.id}}"};
    WebSocketManager().addListener(
        type: "LocationChannel",
        data: json.encode(d),
        listener: (message) async {
          ClusterItem? clusterItem;
          var location = message["location"];
          clusterItem = ClusterItem(
              beginAt: location["begin_at"],
              campusId: location["campus_id"],
              cdnUri: location["image"],
              // cdnUri: "https://cdn.intra.42.fr/users/31614ff60a430545303830a4bec37360/small_acouliba.jpg",
              host: location["host"],
              endAt: location["end_at"],
              login: location["login"],
              image: location["image"]
          );

          if (clusterItem.campusId == user?.campus?.first.id) {
            App.log.d("Cluster: $message");
            if (clusterItem.endAt != null){
              onNew(clusterItem, null, user!);
              return;
            }
            else if (clusterItem.cdnUri == null && location["user_id"] != null) {
              var u = LocaleStorage().getUser(location["user_id"]!);
              u ??= await UserRepository().user(location["user_id"]!);
              clusterItem = clusterItem.copyWith(
                  cdnUri: u.image?.versions?.medium
              );
            }
            ImageManager().fetchAllImage([clusterItem.cdnUri], (images) {
              if (images.length > 1)
              {
                onNew(clusterItem!, images.values.elementAt(1), user!);
              }
            });
          }

          ///when user logout

          else{

          }
        }
    );
  }
}