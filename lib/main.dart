import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'constants/colors.dart';
import 'screens/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(390, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (child, _) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              scaffoldBackgroundColor: ColorValues.whiteColor,
              fontFamily: 'Inter',
              primaryColor: ColorValues.primaryColor,
              visualDensity: VisualDensity.adaptivePlatformDensity,
              colorScheme: ThemeData()
                  .colorScheme
                  .copyWith(primary: ColorValues.primaryColor)
                  .copyWith(background: ColorValues.whiteColor),
            ),
            home: const HomeScreen(),
          );
        });
  }
}
