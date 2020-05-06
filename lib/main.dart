import 'package:flustars/flustars.dart';
import 'package:flutter/material.dart';
import 'package:flutterchallenge/constant.dart';
import 'package:flutterchallenge/darkmode/dark_mode_page.dart';
import 'package:flutterchallenge/darkmode/dark_mode_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: DarkModeProvider()),
      ],
      child: Consumer<DarkModeProvider>(
        builder: (context, darkModeProvider, _) {
          return darkModeProvider.darkMode == 2
              ? MaterialApp(
                  title: 'Flutter Demo',
                  theme: ThemeData(
                    primarySwatch: Colors.blue,
                  ),
                  darkTheme: ThemeData.dark(),
                  home: MyHomePage(title: 'Flutter Dark Theme Demo'),
                )
              : MaterialApp(
                  title: 'Flutter Demo',
                  theme: darkModeProvider.darkMode == 1
                      ? ThemeData.dark()
                      : ThemeData(
                          primarySwatch: Colors.blue,
                        ),
                  home: MyHomePage(title: 'Flutter Challenge Demo'),
                );
        },
      ),
    );
  }
}

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
              title: Text("切换深/浅色模式"),
              onTap: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new DarkModePage()));
              },
            ),
          ]).toList(),
        )));
  }
}
