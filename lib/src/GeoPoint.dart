import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'GeoPoint.g.dart';

/// Represents a geographical point by its longitude and latitude
@BuiltValue()
abstract class GeoPoint implements Built<GeoPoint, GeoPointBuilder> {
  static Serializer<GeoPoint> get serializer => _$geoPointSerializer;

  GeoPoint._();

  factory GeoPoint([void Function(GeoPointBuilder b) updates]) = _$GeoPoint;
  factory GeoPoint.of(double latitude, double longitude) => _$GeoPoint((b) => b
    ..latitude = latitude
    ..longitude = longitude);

  double get latitude;
  double get longitude;
}
