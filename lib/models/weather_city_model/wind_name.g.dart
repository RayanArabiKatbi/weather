// GENERATED CODE - DO NOT MODIFY BY HAND

part of wind_name;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WindName> _$windNameSerializer = new _$WindNameSerializer();

class _$WindNameSerializer implements StructuredSerializer<WindName> {
  @override
  final Iterable<Type> types = const [WindName, _$WindName];
  @override
  final String wireName = 'WindName';

  @override
  Iterable<Object?> serialize(Serializers serializers, WindName object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.speed;
    if (value != null) {
      result
        ..add('speed')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.deg;
    if (value != null) {
      result
        ..add('deg')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.gust;
    if (value != null) {
      result
        ..add('gust')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  WindName deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WindNameBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'speed':
          result.speed = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'deg':
          result.deg = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'gust':
          result.gust = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
      }
    }

    return result.build();
  }
}

class _$WindName extends WindName {
  @override
  final double? speed;
  @override
  final int? deg;
  @override
  final double? gust;

  factory _$WindName([void Function(WindNameBuilder)? updates]) =>
      (new WindNameBuilder()..update(updates)).build();

  _$WindName._({this.speed, this.deg, this.gust}) : super._();

  @override
  WindName rebuild(void Function(WindNameBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WindNameBuilder toBuilder() => new WindNameBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WindName &&
        speed == other.speed &&
        deg == other.deg &&
        gust == other.gust;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, speed.hashCode), deg.hashCode), gust.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('WindName')
          ..add('speed', speed)
          ..add('deg', deg)
          ..add('gust', gust))
        .toString();
  }
}

class WindNameBuilder implements Builder<WindName, WindNameBuilder> {
  _$WindName? _$v;

  double? _speed;
  double? get speed => _$this._speed;
  set speed(double? speed) => _$this._speed = speed;

  int? _deg;
  int? get deg => _$this._deg;
  set deg(int? deg) => _$this._deg = deg;

  double? _gust;
  double? get gust => _$this._gust;
  set gust(double? gust) => _$this._gust = gust;

  WindNameBuilder();

  WindNameBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _speed = $v.speed;
      _deg = $v.deg;
      _gust = $v.gust;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WindName other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WindName;
  }

  @override
  void update(void Function(WindNameBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$WindName build() {
    final _$result =
        _$v ?? new _$WindName._(speed: speed, deg: deg, gust: gust);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
