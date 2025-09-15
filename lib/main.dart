import 'package:ch8_exercise/provider.dart';
import 'package:ch8_exercise/screens/detail_screen.dart';
import 'package:ch8_exercise/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    ChangeNotifierProvider<DataProvider>(
      create: (_) => DataProvider(),
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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => const HomeScreen(),
        DetailScreen.routeName: (context) => const DetailScreen(),
      },
    );
  }
}
