import 'package:flutter/material.dart';
import 'package:flutter_graduation_research_3/screens/home/home_screen.dart';
import 'package:flutter_graduation_research_3/screens/login/login_screen.dart';
import 'package:flutter_graduation_research_3/screens/research_list/research_list_screen.dart';

const String ROUTER_SPLASH = "/";
const String ROUTER_LOGIN = "login";
const String ROUTER_HOME = "home";
const String ROUTER_LIST_RESEARCH = "list_research";

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    Map<String, dynamic> arguments = settings.arguments;
    switch (settings.name) {
      case ROUTER_LOGIN:
        return _getPageRoute(
          routeName: settings.name,
          viewToShow: AuthScreen(),
        );
      case ROUTER_HOME:
        return _getPageRoute(
          routeName: settings.name,
          viewToShow: HomeScreen(),
        );
      case ROUTER_LIST_RESEARCH:
        return _getPageRoute(
          routeName: settings.name,
          viewToShow: ResearchListScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }

  static PageRoute _getPageRoute({String routeName, Widget viewToShow}) {
    return MaterialPageRoute(
      settings: RouteSettings(
        name: routeName,
      ),
      builder: (_) => viewToShow,
    );
  }
}
