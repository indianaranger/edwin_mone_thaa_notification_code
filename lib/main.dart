
import 'package:flutter/material.dart';
import 'package:sample_noti/homepage.dart';
//import 'package:local_notification/homepage.dart';
//import 'package:local_notification/services/notify.dart';
import 'package:sample_noti/services/notify.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await NotificationService().initNotification();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(title:'Flutter local notifications'),
    );
  }
}