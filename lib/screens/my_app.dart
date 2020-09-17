
import 'package:flutter/material.dart';
import 'package:nhandrew_providerstart/providers/info.dart';
import 'package:nhandrew_providerstart/screens/page_1.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Info(),
      child: MaterialApp(
        title: 'Getting Started with Provider',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Page1(),
      ),
    );
  }
}
