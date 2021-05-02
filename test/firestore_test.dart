import 'package:built_firebase/firestore.dart';
import 'package:built_value/serializer.dart';
import 'package:cloud_firestore/cloud_firestore.dart' as fs;
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('FirestoreSerializerPlugin tests', () {
    test('it if beforeDeserialize() returns a library GeoPoint', () {
      final firestoreSerializerPlugin = FirestoreSerializerPlugin();

      final lat = 0.0;
      final long = 0.0;

      final res =
          firestoreSerializerPlugin.beforeDeserialize(fs.GeoPoint(lat, long), FullType(GeoPoint));

      expect(res, ['latitude', 0.0, 'longitude', 0.0]); // GeoPoint.of(lat, long)
    });
  });
}
