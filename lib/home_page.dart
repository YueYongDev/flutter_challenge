import 'package:flustars/flustars.dart';
import 'package:flutter/material.dart';
import 'package:flutterchallenge/constant.dart';
import 'package:flutterchallenge/darkmode/dark_mode_page.dart';
import 'package:flutterchallenge/darkmode/dark_mode_provider.dart';
import 'package:flutterchallenge/generated/l10n.dart';
import 'package:flutterchallenge/localizations/localization_page.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    _initAsync();
  }

  _initAsync() async {
    await SpUtil.getInstance();
    int localMode = SpUtil.getInt(SpConstant.DARK_MODE);
    Provider.of<DarkModeProvider>(context, listen: false).changeMode(localMode);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
            child: ListView(
          children: ListTile.divideTiles(context: context, tiles: [
            ListTile(
              title: Text(S.of(context).changeDarkMode),
              onTap: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new DarkModePage()));
              },
            ),
            ListTile(
              title: Text(S.of(context).changeLanguage),
              onTap: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new LocalizetionPage()));
              },
            ),
          ]).toList(),
        )));
  }
}
