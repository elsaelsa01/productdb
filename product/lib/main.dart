import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:product/screens/addproduct_screen.dart';
import 'package:product/screens/home_screen.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PRODUCT',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 197, 21, 127)),
        useMaterial3: true,
      ),
      home: HomeScreen(),
    );
  }
}
