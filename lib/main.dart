import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutterchallenge/darkmode/dark_mode_provider.dart';
import 'package:flutterchallenge/generated/l10n.dart';
import 'package:flutterchallenge/home_page.dart';
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
                  // 设置语言
                  localizationsDelegates: const [
                    S.delegate,
                    GlobalMaterialLocalizations.delegate,
                    GlobalCupertinoLocalizations.delegate,
                    GlobalWidgetsLocalizations.delegate
                  ],
                  // 讲zh设置为第一项,没有适配语言时，英语为首选项
                  supportedLocales: S.delegate.supportedLocales,
                  title: 'Flutter Demo',
                  theme: ThemeData(
                    primarySwatch: Colors.blue,
                  ),
                  darkTheme: ThemeData.dark(),
                  home: MyHomePage(title: 'Flutter Challenge Demo'),
                )
              : MaterialApp(
                  // 设置语言
                  localizationsDelegates: const [
                    S.delegate,
                    GlobalMaterialLocalizations.delegate,
                    GlobalCupertinoLocalizations.delegate,
                    GlobalWidgetsLocalizations.delegate
                  ],
                  // 讲zh设置为第一项,没有适配语言时，英语为首选项
                  supportedLocales: S.delegate.supportedLocales,
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
