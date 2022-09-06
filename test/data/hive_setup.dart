import 'dart:io';
import 'dart:math';
import 'package:path/path.dart' as p;
import 'package:flutter_test/flutter_test.dart';
import 'package:hive/hive.dart';

import 'package:gitlook/common/constant.dart';

final _random = Random();
String _tempPath = p.join(Directory.current.path, '.dart_tool', 'test', 'tmp');

/// Returns a temporary directory in which a Hive can be initialized
Future<Directory> getTempDir() async {
  var name = _random.nextInt(pow(2, 32) as int);
  var dir = Directory(p.join(_tempPath, '${name}_tmp'));

  if (await dir.exists()) await dir.delete(recursive: true);

  await dir.create(recursive: true);
  return dir;
}

Future<void> setUpTestHive() async {
  final tempDir = await getTempDir();
  Hive.init(tempDir.path);
  await _setUpTestHiveOpenBox();
}

Future<void> _setUpTestHiveOpenBox() async {
  await Hive.openBox(boxNameSettings);
}

/// Deletes the temporary [Hive].
Future<void> tearDownTestHive() async {
  await Hive.deleteFromDisk();
}
