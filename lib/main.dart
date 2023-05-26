import 'package:ccaves_management_app/data/routes.dart';
import 'package:flutter/material.dart';
import 'package:ccaves_management_app/data/firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);
    runApp(const MyApp());
  } catch (error) {
    print("Firebase initialization error: $error");
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      initialRoute: Routes.home,
      onGenerateRoute: Routes.generateRoute
    );
  }
}