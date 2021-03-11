import 'dart:io';
import 'package:moor/moor.dart';
import 'package:moor/ffi.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'package:flutter/services.dart' show rootBundle;

part 'database.g.dart';

@UseMoor(
  include: {'tables.moor'},
)
class DeliveryAppDb extends _$DeliveryAppDb {
  DeliveryAppDb() : super(_openConnection());

  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'app.db'));

    if (!await file.exists()) {
      // Extract the existing database file from dataFiles
      final blob = await rootBundle.load('assets/deliveryApp.db');
      final blobBuffer = blob.buffer;
      await file.writeAsBytes(
          blobBuffer.asUint8List(blob.offsetInBytes, blob.lengthInBytes));
    }
    return VmDatabase(file);
  });
}
