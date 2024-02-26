import 'package:creeply_shop/home_page.dart';
import 'package:creeply_shop/auth_pages.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CreeplyShop',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white12,
        textTheme: const TextTheme(
          labelLarge: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w400,

          ) 
          
        )
      ),
      routes: {
        '/': (context) => const HomePage(),
        '/auth' : (context) => const AuthPage(),
        '/auth/sign_in' :(context) => const SignInPage(),
      },
      
    );
  }
      
}