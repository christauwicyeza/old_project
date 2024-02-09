import 'package:flutter/material.dart';
import 'package:taskmanagerfigma_to_flutter/presentation/welcome_screen/welcome_screen.dart';
import 'package:taskmanagerfigma_to_flutter/presentation/history_screen/history_screen.dart';
import 'package:taskmanagerfigma_to_flutter/presentation/settings_screen/settings_screen.dart';
import 'package:taskmanagerfigma_to_flutter/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:taskmanagerfigma_to_flutter/presentation/add_task_screen/add_task_screen.dart';
import 'package:taskmanagerfigma_to_flutter/presentation/logi_in_screen/logi_in_screen.dart';
import 'package:taskmanagerfigma_to_flutter/presentation/dashboard_screen/dashboard_screen.dart';
import 'package:taskmanagerfigma_to_flutter/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String welcomeScreen = '/welcome_screen';

  static const String historyScreen = '/history_screen';

  static const String settingsScreen = '/settings_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String addTaskScreen = '/add_task_screen';

  static const String logiInScreen = '/logi_in_screen';

  static const String dashboardScreen = '/dashboard_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    welcomeScreen: (context) => WelcomeScreen(),
    historyScreen: (context) => HistoryScreen(),
    settingsScreen: (context) => SettingsScreen(),
    signUpScreen: (context) => SignUpScreen(),
    addTaskScreen: (context) => AddTaskScreen(),
    logiInScreen: (context) => LogiInScreen(),
    dashboardScreen: (context) => DashboardScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
