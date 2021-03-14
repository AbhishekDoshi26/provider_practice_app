import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice_app/home.dart';
import 'package:provider_practice_app/service/data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: ChangeNotifierProvider(
        create: (BuildContext context) => Functionality(),
        child: HomePage(),
      ),
    );
  }
}
