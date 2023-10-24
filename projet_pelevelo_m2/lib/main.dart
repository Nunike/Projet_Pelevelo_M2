import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:projet_pelevelo_m2/pages/welcome.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: const FirebaseOptions(
      apiKey: "AIzaSyAj19qPfUGr8reNH7y5DYJcMZzLLs_KlTE",
      appId: "1:882236550504:android:a75117e53ec1e2c714badd",
      messagingSenderId: "882236550504",
      projectId: "pelevelo-da59e",
    ),
);
  
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,     // We don't print the Debug Banner 
      home: WelcomePage(),                    // Main Page (= first page) 
    );
  }
}
