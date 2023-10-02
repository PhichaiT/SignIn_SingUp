import "package:flutter/material.dart";
// import "package:flutter_signin/screens/onborading_screen.dart";
// import "package:widgets_basic/sign_in/sign_in.dart";
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'auth_page.dart';


// ...


void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'OO BORADING SCREEN',
      theme: ThemeData.light(useMaterial3: true),
      home:  AuthPage(),
    );
  }
}