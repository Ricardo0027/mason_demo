import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mason_demo/generated/locale_keys.g.dart';
import 'package:mason_demo/routes.dart';

import 'core/di/injection_container.dart' as di;
import 'core/navigation/bloc/bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  //Localization Code generation command run at root path of app
  //flutter pub run easy_localization:generate -f keys -S assets/lang -o locale_keys.g.dart
  await di.init();
  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('en', 'US'),
        Locale('fr', 'FR'), // Add all other supported lang code here
      ],
      path: 'assets/lang',
      fallbackLocale: const Locale('en', 'US'),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final router = AppRouter.goRouter;
    return MultiBlocProvider(
      providers: [
        BlocProvider<NavigationBloc>(
          create: (context) => NavigationBloc(goRouter: router),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: router,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        title: LocaleKeys.common_appName.tr(),
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          primarySwatch: Colors.purple,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
      ),
    );
  }
}
