import 'package:expense_tracker/screens/home/home_screen.dart';
import 'package:expense_tracker/screens/models/category/category_model.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

Future <void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  Hive.initFlutter();

   if(Hive.isAdapterRegistered(CategoryTypeAdapter().typeId)){
    Hive.registerAdapter(CategoryTypeAdapter());
  }
  if(Hive.isAdapterRegistered(CategoryModelAdapter().typeId)){
    Hive.registerAdapter(CategoryModelAdapter());
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
     
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(color: Colors.pink),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(backgroundColor: Colors.pink,foregroundColor: Colors.white)
      ),
      home:  ScreenHome(),
      
    );
  }
}

