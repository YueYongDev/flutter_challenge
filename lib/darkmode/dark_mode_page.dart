import 'package:flutter/material.dart';
import 'package:flutterchallenge/darkmode/dark_mode_provider.dart';
import 'package:provider/provider.dart';

class DarkModePage extends StatefulWidget {
  @override
  _DarkModePageState createState() => _DarkModePageState();
}

class _DarkModePageState extends State<DarkModePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('深色模式'),
        ),
        body: Center(
            child: ListView(
          children: ListTile.divideTiles(context: context, tiles: [
            ListTile(
              title: Text("浅色模式"),
              onTap: () {
                Provider.of<DarkModeProvider>(context, listen: false)
                    .changeMode(0);
              },
            ),
            ListTile(
              title: Text("深色模式"),
              onTap: () {
                Provider.of<DarkModeProvider>(context, listen: false)
                    .changeMode(1);
              },
            ),
            ListTile(
              title: Text("跟随系统"),
              onTap: () {
                Provider.of<DarkModeProvider>(context, listen: false)
                    .changeMode(2);
              },
            )
          ]).toList(),
        )));
  }
}
