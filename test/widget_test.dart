// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:intra_42/core/log/logger.dart';
import 'package:intra_42/data/api/client.dart';
import 'package:intra_42/data/locale_storage/locale_storage.dart';
import 'package:intra_42/data/api/client_interceptor/log_interceptor.dart' as logInterceptor;
import 'package:intra_42/data/repositories/user_repository.dart';


void main() async {
  await LocaleStorage().init();
  //todo: properly check this
  await Client().initApi();
  Client.addHeader('Authorization', 'Bearer f34ff8a4fb557a20a99d531a263bd6629a27a35783452c5717814bdc7661a685');
 Client.addHeader('cookie', '_intra_42_session_production=b656cbff4ee2d88f6587a7d7853fbe88; ');
 var log = Log();

  test("test", () async {
    var me = await UserRepository().projectData(21, 21, "");
    log.e(me);
    // var headers = {
    //   "Authorization":"12335455555",
    //   "cookie":"_intra_42_session_production=b656cbff4ee2d88f6587a7d7853fbe88; ",
    //   'Host' : 'projects.intra.42.fr'
    // };
    // var dio = Dio();
    // dio.interceptors.add(logInterceptor.LogInterceptor());
    // dio.options.headers = headers;
    // var response = await dio.get('https://projects.intra.42.fr/project_data.json?cursus_id=21&campus_id=21');
    // log.e(response.data);
  });
}
