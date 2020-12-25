// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'GeoPoint.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GeoPoint> _$geoPointSerializer = new _$GeoPointSerializer();

class _$GeoPointSerializer implements StructuredSerializer<GeoPoint> {
  @override
  final Iterable<Type> types = const [GeoPoint, _$GeoPoint];
  @override
  final String wireName = 'GeoPoint';

  @override
  Iterable<Object> serialize(Serializers serializers, GeoPoint object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'latitude',
      serializers.serialize(object.latitude,
          specifiedType: const FullType(double)),
      'longitude',
      serializers.serialize(object.longitude,
          specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  GeoPoint deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GeoPointBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'latitude':
          result.latitude = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'longitude':
          result.longitude = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$GeoPoint extends GeoPoint {
  @override
  final double latitude;
  @override
  final double longitude;

  factory _$GeoPoint([void Function(GeoPointBuilder) updates]) =>
      (new GeoPointBuilder()..update(updates)).build();

  _$GeoPoint._({this.latitude, this.longitude}) : super._() {
    if (latitude == null) {
      throw new BuiltValueNullFieldError('GeoPoint', 'latitude');
    }
    if (longitude == null) {
      throw new BuiltValueNullFieldError('GeoPoint', 'longitude');
    }
  }

  @override
  GeoPoint rebuild(void Function(GeoPointBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GeoPointBuilder toBuilder() => new GeoPointBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GeoPoint &&
        latitude == other.latitude &&
        longitude == other.longitude;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, latitude.hashCode), longitude.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GeoPoint')
          ..add('latitude', latitude)
          ..add('longitude', longitude))
        .toString();
  }
}

class GeoPointBuilder implements Builder<GeoPoint, GeoPointBuilder> {
  _$GeoPoint _$v;

  double _latitude;
  double get latitude => _$this._latitude;
  set latitude(double latitude) => _$this._latitude = latitude;

  double _longitude;
  double get longitude => _$this._longitude;
  set longitude(double longitude) => _$this._longitude = longitude;

  GeoPointBuilder();

  GeoPointBuilder get _$this {
    if (_$v != null) {
      _latitude = _$v.latitude;
      _longitude = _$v.longitude;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GeoPoint other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GeoPoint;
  }

  @override
  void update(void Function(GeoPointBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GeoPoint build() {
    final _$result =
        _$v ?? new _$GeoPoint._(latitude: latitude, longitude: longitude);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
