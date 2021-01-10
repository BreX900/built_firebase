import 'package:built_value/serializer.dart';
import 'package:cloud_firestore/cloud_firestore.dart' as fs;
import 'package:pure_extensions/pure_extensions.dart' show GeoPoint;

class GeoPointConfig {
  final Type type;
  final String latitudeName;
  final String longitudeName;

  const GeoPointConfig({
    this.type = GeoPoint,
    this.latitudeName = 'latitude',
    this.longitudeName = 'longitude',
  })  : assert(type != null),
        assert(latitudeName != null),
        assert(longitudeName != null);
}

/// Built [SerializerPlugin] to convert the data received from the cloud_firestore
/// into the common type of built
///
/// Converts:
/// cloud_firestore: [fs.GeoPoint] to built_list
/// cloud_firestore: [fs.Timestamp] to [DateTime]
class FirestoreSerializerPlugin implements SerializerPlugin {
  final GeoPointConfig geoPointConfig;

  const FirestoreSerializerPlugin({
    this.geoPointConfig = const GeoPointConfig(),
  });

  @override // (GeoPoint) -> Value -> _ | _ -> Json -> _
  Object beforeSerialize(Object object, FullType specifiedType) {
    if (object is DateTime && specifiedType.root == DateTime) {
      return object.toUtc();
    }
    return object;
  }

  @override // _ -> Value -> (Map) | _ -> Json -> _
  Object afterSerialize(Object object, FullType specifiedType) {
    if (object is int && specifiedType.root == DateTime) {
      return fs.Timestamp.fromMicrosecondsSinceEpoch(object);
    } else if (object is Iterable && specifiedType.root == geoPointConfig.type) {
      final iterator = object.iterator;
      final latitude = _serializeValue(iterator, geoPointConfig.latitudeName);
      final longitude = _serializeValue(iterator, geoPointConfig.longitudeName);
      return latitude is double && longitude is double ? fs.GeoPoint(latitude, longitude) : object;
    }
    return object;
  }

  @override // _ -> Value -> _ | (FIRESTORE -> MAP) -> Json -> _
  Object beforeDeserialize(Object object, FullType specifiedType) {
    if (object is fs.Timestamp && specifiedType.root == DateTime) {
      return object.microsecondsSinceEpoch;
    } else if (object is fs.GeoPoint && specifiedType.root == geoPointConfig.type) {
      return [
        geoPointConfig.latitudeName,
        object.latitude,
        geoPointConfig.longitudeName,
        object.longitude,
      ];
    }
    return object;
  }

  @override // _ -> Value -> _ | _ -> Json -> (GeoPoint)
  Object afterDeserialize(Object object, FullType specifiedType) {
    if (object is DateTime && specifiedType.root == DateTime) {
      return object.toLocal();
    }
    return object;
  }

  T _serializeValue<T>(Iterator<dynamic> iterator, String name) {
    if ((iterator..moveNext()).current == name) {
      final value = (iterator..moveNext()).current;
      return value is T ? value : null;
    }
    return null;
  }
}
