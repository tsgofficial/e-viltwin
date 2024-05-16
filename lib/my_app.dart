import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'core/suite/core_pages.dart';
import 'core/suite/core_routes.dart';
import 'core/suite/core_translations.dart';
import 'pages/auth/suite/auth_translations.dart';
import 'theme/my_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    List<GetPage<dynamic>> myPages = [
      ...CorePages.pages,
    ];

    Map<String, Map<String, String>> translations = {
      'en': {}
        ..addAll(CoreTranslations.enKeys)
        ..addAll(AuthTranslations.enKeys),
      'mn': {}
        ..addAll(CoreTranslations.mnKeys)
        ..addAll(AuthTranslations.mnKeys),
    };

    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus &&
            currentFocus.focusedChild != null) {
          FocusManager.instance.primaryFocus?.unfocus();
        }
      },
      child: GetMaterialApp(
        theme: MyTheme.instance.themeData,
        translationsKeys: translations,
        getPages: myPages,
        scrollBehavior:
            GetPlatform.isIOS ? const CupertinoScrollBehavior() : null,

        ///Localization
        supportedLocales: const [
          Locale('mn'),
          Locale('en'),
        ],
        defaultTransition: Transition.native,
        initialRoute: CoreRoutes.coreScreen,
      ),
    );
  }
}
