import 'dart:convert';
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

const _githubHeader = <String, dynamic>{
  "Accept": "application/vnd.github+json",
  "User-Agent": "Github Search App", // need to avoid 403 error
};

final githubHeaderProvider = FutureProvider<Map<String, dynamic>>((_) async {
  const path = "assets/configuration.json";

  final jsonMap =
      json.decode(await rootBundle.loadString(path)) as Map<String, dynamic>;

  assert(jsonMap.length == 1);
  assert(jsonMap.containsKey("Authorization"));
  final value = jsonMap["Authorization"];
  if (value == "" || value == null) {
    return _githubHeader;
  } else {
    final modified = {..._githubHeader};
    modified.addAll(jsonMap);
    return modified;
  }
});
