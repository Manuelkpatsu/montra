import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'router.dart';
import 'screen/splash/splash_screen.dart';
import 'theme/custom_color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: CustomColor.light100Color,
        fontFamily: 'Inter',
        canvasColor: Colors.transparent,
        primarySwatch: CustomColor.primarySwatchColor,
        appBarTheme: const AppBarTheme(
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle.dark,
        ),
      ),
      home: const SplashScreen(),
      onGenerateRoute: AppRouter.generateRoute,
    );
  }
}
