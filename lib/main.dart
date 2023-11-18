import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:personaltrainer/functions/duygu_nav.dart';
import 'package:personaltrainer/loginPage/login_page.dart';
import 'package:personaltrainer/screens/base_scafold.dart';
import 'package:personaltrainer/screens/profile_page_screen.dart';
import 'package:personaltrainer/screens/splash_screen.dart';

void main() {
  runApp(const ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/splash',
      navigatorKey: DuyguNav.navigatorKey,
      routes: {
        '/splash': (context) => const SplashScreen(),
        '/login': (context) => const LoginPage(),
        '/profilepage': (context) => const ProfilePAgeScreen(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BaseScaffold(),
    );
  }
}
