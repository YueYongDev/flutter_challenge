import 'package:flustars/flustars.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterchallenge/constant.dart';
import 'package:flutterchallenge/generated/l10n.dart';

class LocalizetionPage extends StatefulWidget {
  @override
  _LocalizetionPageState createState() => _LocalizetionPageState();
}

class _LocalizetionPageState extends State<LocalizetionPage> {
  String groupValue = 'zh';

  @override
  Widget build(BuildContext context) {
    void _changed(value) {
      if (value != null) {
        SpUtil.putString(SpConstant.LANGUAGE, value);
        setState(() {
          groupValue = value;
          if (value == "zh") S.load(Locale('zh', 'CN'));
          if (value == "en") S.load(Locale('en', 'US'));
        });
      }
    }

    return new Scaffold(
        appBar: new AppBar(
          title: Text(
            S.of(context).changeLanguage,
          ),
        ),
        body: new Column(
          children: [
            SizedBox(height: 20),
            Text(S.of(context).test, style: TextStyle(fontSize: 20)),
            new ExpansionTile(
              title: Text(S.of(context).changeLanguage),
              leading: Icon(Icons.language),
              initiallyExpanded: false,
              children: [
                RadioListTile<String>(
                  title: Text('汉语'),
                  value: 'zh',
                  groupValue: groupValue,
                  onChanged: _changed,
                ),
                RadioListTile<String>(
                    title: Text('English'),
                    value: 'en',
                    groupValue: groupValue,
                    onChanged: _changed),
              ],
            ),
          ],
        ));
  }
}
