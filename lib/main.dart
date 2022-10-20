import 'package:flutter/material.dart';

import 'package:fl_mockup/screens/screens.dart';
import 'package:provider/provider.dart';
import 'package:fl_mockup/providers/providers.dart';

void main() => runApp(const AppState());

class AppState extends StatelessWidget {
  const AppState({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => GifsServices(),),
        ChangeNotifierProvider(create: (_) => ButtonAppBarProvider(),),
        ChangeNotifierProvider(create: (_) => ButtonChoiceProvider()),

        // ChangeNotifierProvider(create: (_) => ProducstProvider()),
      ],
      child: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          appBarTheme: const AppBarTheme(color: Colors.red),
          primarySwatch: Colors.blue,
        ),
        initialRoute: 'home',
        routes: {
          'home': (_) => HomeScreen(),
        });
  }
}
