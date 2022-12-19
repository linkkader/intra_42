// Created by linkkader on 17/11/2022
import 'dart:async';
import 'dart:convert';
import 'package:intra_42/core/utils/pair.dart';
import 'package:intra_42/data/api/client.dart';
import 'package:intra_42/main.dart';
import 'package:web_socket_channel/io.dart';


class WebSocketManager {

  List<dynamic> _queue = [];
  bool _connected = false;
  static final WebSocketManager _instance = WebSocketManager._internal();
  WebSocketManager._internal();
  factory WebSocketManager() => _instance;

  late IOWebSocketChannel _channel;
  final List<Pair<String, Function(dynamic)>> _listeners = [];
  StreamSubscription? _subscription;

  //TODO:manage error
  void start() {
    var headers = <String, String>{};
    Client().headers().forEach((key, value) => headers[key] = value.toString());
    headers["Origin"] = " https://profile.intra.42.fr";
    headers["Upgrade"] = "websocket";
    _channel = IOWebSocketChannel.connect('wss://profile.intra.42.fr/cable', headers: headers);
    _subscription = _channel.stream.listen((data) {
      var event = json.decode(data);
      if (event["type"] == "welcome")
      {
        App.log.i("WebSocket connected");
        for (var element in _queue) {
          if (element != null) _channel.sink.add(element);
        }
        _queue = [];
        _connected = true;
      }
      if (event["type"] != "ping" && event["type"] != "welcome")
      {
       for (var element in _listeners) {
          if (event["identifier"].toString().contains(element.first)) element.second(event["message"]);
       }
      }
    });
    _subscription?.onError((error) {
      _connected = false;
      App.log.e("WebSocket error: $error");
    });
  }

  void stop() {
    _listeners.clear();
    _channel.sink.close();
    _subscription?.cancel();
  }

  void restart() {
    stop();
    start();
  }

  void addListener({required Function(dynamic) listener, required String type,dynamic data}) {
    if (!_connected) {
      start();
      _queue.add(data);
    }else{
      if (data != null) _channel.sink.add(data);
    }

    _listeners.add(Pair(type, listener));
  }

  void removeListener(Function(dynamic) listener) {
    _listeners.removeWhere((element) => element.second == listener);
  }

  bool get isConnected => _connected;
}