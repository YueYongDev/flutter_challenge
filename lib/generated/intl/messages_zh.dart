// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a zh locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'zh';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "appName" : MessageLookupByLibrary.simpleMessage("Flutter 实战"),
    "automatic" : MessageLookupByLibrary.simpleMessage("跟随系统"),
    "changeDarkMode" : MessageLookupByLibrary.simpleMessage("切换深/浅色模式"),
    "changeLanguage" : MessageLookupByLibrary.simpleMessage("切换语言"),
    "darkMode" : MessageLookupByLibrary.simpleMessage("深色模式"),
    "lightMode" : MessageLookupByLibrary.simpleMessage("浅色模式"),
    "test" : MessageLookupByLibrary.simpleMessage("语言测试")
  };
}
