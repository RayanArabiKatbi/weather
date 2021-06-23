// GENERATED CODE - DO NOT MODIFY BY HAND

part of sys_name;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SysName> _$sysNameSerializer = new _$SysNameSerializer();

class _$SysNameSerializer implements StructuredSerializer<SysName> {
  @override
  final Iterable<Type> types = const [SysName, _$SysName];
  @override
  final String wireName = 'SysName';

  @override
  Iterable<Object?> serialize(Serializers serializers, SysName object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.country;
    if (value != null) {
      result
        ..add('country')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.sunrise;
    if (value != null) {
      result
        ..add('sunrise')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.sunset;
    if (value != null) {
      result
        ..add('sunset')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  SysName deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SysNameBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'country':
          result.country = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'sunrise':
          result.sunrise = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'sunset':
          result.sunset = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$SysName extends SysName {
  @override
  final int? type;
  @override
  final int? id;
  @override
  final String? country;
  @override
  final int? sunrise;
  @override
  final int? sunset;

  factory _$SysName([void Function(SysNameBuilder)? updates]) =>
      (new SysNameBuilder()..update(updates)).build();

  _$SysName._({this.type, this.id, this.country, this.sunrise, this.sunset})
      : super._();

  @override
  SysName rebuild(void Function(SysNameBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SysNameBuilder toBuilder() => new SysNameBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SysName &&
        type == other.type &&
        id == other.id &&
        country == other.country &&
        sunrise == other.sunrise &&
        sunset == other.sunset;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, type.hashCode), id.hashCode), country.hashCode),
            sunrise.hashCode),
        sunset.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SysName')
          ..add('type', type)
          ..add('id', id)
          ..add('country', country)
          ..add('sunrise', sunrise)
          ..add('sunset', sunset))
        .toString();
  }
}

class SysNameBuilder implements Builder<SysName, SysNameBuilder> {
  _$SysName? _$v;

  int? _type;
  int? get type => _$this._type;
  set type(int? type) => _$this._type = type;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _country;
  String? get country => _$this._country;
  set country(String? country) => _$this._country = country;

  int? _sunrise;
  int? get sunrise => _$this._sunrise;
  set sunrise(int? sunrise) => _$this._sunrise = sunrise;

  int? _sunset;
  int? get sunset => _$this._sunset;
  set sunset(int? sunset) => _$this._sunset = sunset;

  SysNameBuilder();

  SysNameBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _id = $v.id;
      _country = $v.country;
      _sunrise = $v.sunrise;
      _sunset = $v.sunset;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SysName other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SysName;
  }

  @override
  void update(void Function(SysNameBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SysName build() {
    final _$result = _$v ??
        new _$SysName._(
            type: type,
            id: id,
            country: country,
            sunrise: sunrise,
            sunset: sunset);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
