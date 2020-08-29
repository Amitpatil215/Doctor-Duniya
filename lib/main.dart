import 'package:doctor_duniya/screens/profile/profile_edit_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'screens/auth_screen.dart';
import 'screens/home_screen.dart';
import 'screens/profile/profile_screen.dart';
import 'screens/profile/appointment_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor:
          Colors.white.withOpacity(0.95), // navigation bar color
      statusBarColor: Colors.white.withOpacity(0.95), // status bar color
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarIconBrightness: Brightness.dark));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'ProductSans',
        backgroundColor: Colors.white.withOpacity(0.95),
        primarySwatch: Colors.blue,
        errorColor: Colors.red,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          brightness: Brightness.light,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          textTheme: TextTheme(
            headline6: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
        accentColor: Colors.blueAccent,
        buttonColor: Colors.white,
        iconTheme: IconThemeData(opacity: 0.6),
        buttonTheme: ButtonTheme.of(context).copyWith(
          buttonColor: Colors.pink,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          ScreenUtil.init(context);
          if (snapshot.hasData) {
            return HomeScreen();
          } else {
            return AuthScreen();
          }
        },
      ),
      routes: {
        ProfileScreen.rountName: (ctx) {
          return ProfileScreen();
        },
        AppointmentScreen.routName: (ctx) {
          return AppointmentScreen();
        },
        ProfileEditScreen.routName: (ctx) {
          return ProfileEditScreen();
        },
      },
    );
  }
}
