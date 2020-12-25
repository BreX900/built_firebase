import 'package:built_collection/built_collection.dart';
import 'package:built_firebase/by_pass_serializer.dart';
import 'package:built_value/serializer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:test/test.dart';

void main() {
  group('UnSerializer tests', () {
    test('simple test', () {
      final serializers = (Serializers().toBuilder()..add(ByPassSerializer<GeoPoint>())).build();

      final res = serializers.serialize(GeoPoint(0.0, 0.0), specifiedType: FullType(GeoPoint));

      expect(res, GeoPoint(0.0, 0.0));
    });

    test('list test', () {
      final builtListFullType = FullType(BuiltList, [FullType(GeoPoint)]);

      final serializers = (Serializers().toBuilder()
            ..add(ByPassSerializer<GeoPoint>())
            ..addBuilderFactory(
              builtListFullType,
              () => ListBuilder<GeoPoint>(),
            ))
          .build();

      final serialized = serializers.serialize(
        BuiltList.of([GeoPoint(0.0, 0.0), GeoPoint(1.1, 1.1)]),
        specifiedType: builtListFullType,
      );

      expect(serialized, [GeoPoint(0.0, 0.0), GeoPoint(1.1, 1.1)]);

      final deserialized = serializers.deserialize(serialized, specifiedType: builtListFullType);

      expect(deserialized, BuiltList.of([GeoPoint(0.0, 0.0), GeoPoint(1.1, 1.1)]));
    });
  });
}
