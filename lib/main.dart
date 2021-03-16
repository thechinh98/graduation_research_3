import 'package:flutter/material.dart';
import 'package:flutter_graduation_research_3/providers/app_providers.dart';
import 'package:flutter_graduation_research_3/services/service_locator.dart';
import 'package:flutter_graduation_research_3/shared/setting/app_router.dart';
import 'package:flutter_graduation_research_3/shared/setting/constant.dart';
import 'package:flutter_graduation_research_3/shared/setting/navigation_services.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupServiceLocator();
  await AppProvider().init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: AppProvider().providers,
      child: MaterialApp(
        title: 'Emed',
        theme: appThemeData,
        navigatorKey: NavigationService().navigationKey,
        onGenerateRoute: AppRouter.generateRoute,
        initialRoute: ROUTER_TIMETABLE,
      ),
    );
  }
}
