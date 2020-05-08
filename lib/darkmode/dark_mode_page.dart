import 'package:flutter/material.dart';
import 'package:flutterchallenge/darkmode/dark_mode_provider.dart';
import 'package:flutterchallenge/generated/l10n.dart';
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
          title: Text(S.of(context).darkMode),
        ),
        body: Center(
            child: ListView(
          children: ListTile.divideTiles(context: context, tiles: [
            ListTile(
              title: Text(S.of(context).lightMode),
              onTap: () {
                Provider.of<DarkModeProvider>(context, listen: false)
                    .changeMode(0);
              },
            ),
            ListTile(
              title: Text(S.of(context).darkMode),
              onTap: () {
                Provider.of<DarkModeProvider>(context, listen: false)
                    .changeMode(1);
              },
            ),
            ListTile(
              title: Text(S.of(context).automatic),
              onTap: () {
                Provider.of<DarkModeProvider>(context, listen: false)
                    .changeMode(2);
              },
            )
          ]).toList(),
        )));
  }
}
