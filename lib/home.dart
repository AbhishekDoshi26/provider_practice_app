import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice_app/service/data.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Functionality data;
  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    data = Provider.of<Functionality>(context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: buildBottomBar(),
      appBar: AppBar(
        title: Text('Counter App with Provider'),
        actions: [
          IconButton(
            icon: Icon(
              Icons.refresh,
              size: 30,
            ),
            onPressed: () => data.reload(),
          ),
        ],
      ),
      body: Consumer<Functionality>(
        builder: (context, data, child) {
          return Center(
            child: Text(
              "${data.count}",
              style: TextStyle(
                fontSize: 50,
                color: Colors.black,
              ),
            ),
          );
        },
      ),
    );
  }

  Widget buildBottomBar() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () => data.increment(),
                child: Container(
                  height: 50,
                  color: Colors.blue,
                  child: Icon(
                    Icons.add,
                    size: 35,
                    color: Colors.greenAccent,
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () => data.decrement(),
                child: Container(
                  height: 50,
                  color: Colors.blue,
                  child: Icon(
                    Icons.remove,
                    size: 35,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
          ],
        ),
        GestureDetector(
          onTap: () => data.random(),
          child: Container(
            height: 50,
            width: double.infinity,
            color: Colors.blue,
            child: Icon(
              Icons.shuffle,
              size: 35,
              color: Colors.yellow,
            ),
          ),
        ),
      ],
    );
  }
}
