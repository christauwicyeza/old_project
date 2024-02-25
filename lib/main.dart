import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:flutter/scheduler.dart';
import 'package:flutter_task_manager/core/app_export.dart';

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  ///Please update theme as per your need if required.
  ThemeHelper().changeTheme('primary');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          theme: theme,
          title: 'flutter',
          debugShowCheckedModeBanner: false,
          initialRoute: AppRoutes.welcomeScreen,
          routes: AppRoutes.routes,
        );
      },
    );
  }
}
