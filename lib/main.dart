// Created by linkkader on 8/11/2022

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intra_42/data/api/client.dart';
import 'package:intra_42/presentation/page/start_page.dart';
import 'package:logger/logger.dart';
import 'core/params/colors.dart';
import 'data/locale_storage/locale_storage.dart';
import 'data/manager/notification_manager.dart';
import 'generated/l10n.dart';
import 'l10n/l10n.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await LocaleStorage().init();
  Client().initApi();
  NotificationManager.start();
  runApp(const App());
}

class NavigationService {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
}

class App extends StatelessWidget {
  static StateProvider<bool> restartState = StateProvider((ref) => false);
  static late WidgetRef ref;

  const App({Key? key}) : super(key: key);


  static void restart(){
    ref.read(restartState.notifier).state = !ref.read(restartState);
  }

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: Consumer(
        builder: (context, ref, child) {
          App.ref = ref;
          ref.watch(restartState);
          return MaterialApp(
              themeMode: ThemeMode.light,
              navigatorKey: NavigationService.navigatorKey,
              supportedLocales: L10n.all,
              debugShowCheckedModeBanner: false,
              localizationsDelegates: const [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate
              ],
              theme: ThemeData(
                scaffoldBackgroundColor: ColorConstants.kBackgroundColor,
                backgroundColor: ColorConstants.kBackgroundColor,
                colorScheme: const ColorScheme.light().copyWith(
                  primary: ColorConstants.primary,
                  secondary: ColorConstants.secondary,
                  tertiary: ColorConstants.tertiary,
                  background: ColorConstants.kBackgroundColor,
                  onPrimary: Colors.white,
                ),
                primaryColor: Colors.white,
              ),
              home: const StartPage());
        },
      ),
    );
  }

  static BuildContext get context => NavigationService.navigatorKey.currentContext!;

  static ThemeData get theme => Theme.of(context);

  static TextTheme get textTheme => Theme.of(context).textTheme;

  static ColorScheme get colorScheme => theme.colorScheme;

  static S get s => S.of(context);

  static Logger get log => Logger();

  static double get width => MediaQuery.of(context).size.width;

  static double get height => MediaQuery.of(context).size.height;

  static String get currentLanguage => "en";//Localizations.localeOf(context).languageCode;

  static get constantColors  => ColorConstants();
}
