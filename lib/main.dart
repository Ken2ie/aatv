import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:aatvmobilevsn/pages/home.dart';
import 'package:aatvmobilevsn/pages/login-signup/login.dart';
import 'package:aatvmobilevsn/pages/login-signup/register.dart';
import 'package:aatvmobilevsn/services/authservice.dart';
import 'package:provider/provider.dart';
import 'providers/theme_provider.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';


void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: MaterialAppWrapper(),
    );
  }
  
}

class MaterialAppWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Akwasi Awuah TV',
      theme: themeProvider.getTheme(),
      // home: AuthService(),
      initialRoute: '/',
      routes: {
        '/': (context) => AuthService(),
        '/login': (context) => Login(),
        '/register': (context) => Register(),
        '/home': (context) => Home(),
      },
    );
  }
}
