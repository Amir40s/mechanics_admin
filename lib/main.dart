import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mechanics_admin/home_screen.dart';
import 'package:mechanics_admin/provider/MenuAppController.dart';
import 'package:mechanics_admin/provider/data_provider.dart';
import 'package:mechanics_admin/provider/text_color_provider.dart';
import 'package:mechanics_admin/provider/value_provider.dart';
import 'package:provider/provider.dart';

import 'firebase_options.dart';
import 'main_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => DataProvider()),
        ChangeNotifierProvider(create: (_) => ValueProvider()),
        ChangeNotifierProvider(create: (_) => TextColorProvider()),
        ChangeNotifierProvider(create: (_) => MenuAppController()),
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home:  MainScreen(),
      ),
    );
  }
}

