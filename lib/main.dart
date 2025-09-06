import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart'; // ← À ajouter
import 'pages/login_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform, // ← important
  );
  runApp(HyroxApp());
}

class HyroxApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hyrox Challenges',
      theme: ThemeData(primarySwatch: Colors.orange),
      home: LoginPage(),
    );
  }
}
