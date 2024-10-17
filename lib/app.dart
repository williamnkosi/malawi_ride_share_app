import 'package:flutter/material.dart';
import 'package:malawi_ride_share_app/bottom_navigation_bar.dart';

class App extends StatelessWidget {
  final String flavor;
  const App({super.key, required this.flavor});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const AppBottomNavigationBar(),
    );
  }
}
