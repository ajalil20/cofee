import 'package:coffee/screens/wrapper.dart';
import 'package:coffee/services/auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
//import 'dart:io';
//import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';
import 'package:coffee/models/user.dart';

/*
void main() {
  FlutterError.onError = (FlutterErrorDetails details) {
    FlutterError.dumpErrorToConsole(details);
    if (kReleaseMode) exit(1);
  };
  runApp(MyApp());
}
*/
// rest of `flutter create` code...
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

/*
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(MyApp());
}
*/
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Firebase.initializeApp();
    return StreamProvider<Users>.value(
      value: Authservice().user,
      child: MaterialApp(
        home: Wrapper(),
      ),
    );
  }
}
//naya banao chal jaye gaa
