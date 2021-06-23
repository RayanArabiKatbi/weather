// GENERATED CODE - DO NOT MODIFY BY HAND

part of coord_name;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CoordName> _$coordNameSerializer = new _$CoordNameSerializer();

class _$CoordNameSerializer implements StructuredSerializer<CoordName> {
  @override
  final Iterable<Type> types = const [CoordName, _$CoordName];
  @override
  final String wireName = 'CoordName';

  @override
  Iterable<Object?> serialize(Serializers serializers, CoordName object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.lon;
    if (value != null) {
      result
        ..add('lon')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.lat;
    if (value != null) {
      result
        ..add('lat')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  CoordName deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CoordNameBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'lon':
          result.lon = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'lat':
          result.lat = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
      }
    }

    return result.build();
  }
}

class _$CoordName extends CoordName {
  @override
  final double? lon;
  @override
  final double? lat;

  factory _$CoordName([void Function(CoordNameBuilder)? updates]) =>
      (new CoordNameBuilder()..update(updates)).build();

  _$CoordName._({this.lon, this.lat}) : super._();

  @override
  CoordName rebuild(void Function(CoordNameBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CoordNameBuilder toBuilder() => new CoordNameBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CoordName && lon == other.lon && lat == other.lat;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, lon.hashCode), lat.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CoordName')
          ..add('lon', lon)
          ..add('lat', lat))
        .toString();
  }
}

class CoordNameBuilder implements Builder<CoordName, CoordNameBuilder> {
  _$CoordName? _$v;

  double? _lon;
  double? get lon => _$this._lon;
  set lon(double? lon) => _$this._lon = lon;

  double? _lat;
  double? get lat => _$this._lat;
  set lat(double? lat) => _$this._lat = lat;

  CoordNameBuilder();

  CoordNameBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _lon = $v.lon;
      _lat = $v.lat;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CoordName other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CoordName;
  }

  @override
  void update(void Function(CoordNameBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CoordName build() {
    final _$result = _$v ?? new _$CoordName._(lon: lon, lat: lat);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
