
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intra_42/core/extensions/provider_ext.dart';
import 'package:intra_42/main.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:touchable/touchable.dart';
import 'dart:ui' as ui;
import '../../../../data/models/cluster_item.dart';
import '../../../../data/models/empty_cluster.dart';
import '../../../../data/repositories/cluster_repository.dart';
import 'cluster_painter.dart';

class ClusterItemScreen  extends ConsumerStatefulWidget {
  final String url;
  final Map<String, ClusterItem> clusters;
  final StateProvider<Map<String, ui.Image>> imagesProvider;
  final Function(int count) onClusterSize;
  const ClusterItemScreen (this.url, this.clusters, this.imagesProvider, {required this.onClusterSize, Key? key}) : super(key: key);

  @override
  ConsumerState<ClusterItemScreen> createState() =>  _ClusterItemState();
}

class _ClusterItemState extends ConsumerState<ClusterItemScreen> with AutomaticKeepAliveClientMixin {
  late FutureProvider<List<EmptyCluster>> futureProvider;


  @override
  void initState() {
    futureProvider = FutureProvider((ref) async {
      return ref.read(ClusterRepository().futureProvider).emptyClusters(widget.url).then((value){
        widget.onClusterSize(value.where((element) => !element.isText).length);
        return value;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ref.watch(futureProvider).when(
        data: (data){
          return Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
                gradient: RadialGradient(
                    colors: [
                      Color(0xFF002534),Color(0xFF090a0f)
                    ]
                )
            ),
            child: FittedBox(
              fit: BoxFit.cover,
              child: InteractiveViewer(
                panEnabled: true,
                boundaryMargin: const EdgeInsets.all(5000),
                maxScale: 10,
                minScale: 0.01,
                scaleEnabled: true,
                child: CanvasTouchDetector(
                  gesturesToOverride: const [GestureType.onTapDown],
                  builder: (context) {
                    return CustomPaint(
                        size:  const Size(2000, 2000),
                        painter: ClusterPainter(data, widget.clusters, context, ref.watch(widget.imagesProvider))
                    );
                  },
                ),
              ),
            ),
          );
        },
        error: (_, __) => Text(_.toString()),
        loading: () => Center(
          child: LoadingAnimationWidget.prograssiveDots(color: App.colorScheme.primary, size: 100,),
        )
    );
  }

  @override
  bool get wantKeepAlive => true;
}