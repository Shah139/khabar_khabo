import 'package:flutter/material.dart';
import 'package:khabar_khabo/services/auth/auth_gate.dart';
import 'package:khabar_khabo/firebase_options.dart';
import 'package:khabar_khabo/models/restaurent.dart';
import 'package:khabar_khabo/themes/themes_provider.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => ThemesProvider()),
      ChangeNotifierProvider(create: (context) => Restaurent()),
    ],
    child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const  AuthGate(),
    theme: Provider.of<ThemesProvider>(context).themeData,
  );

  }
}

