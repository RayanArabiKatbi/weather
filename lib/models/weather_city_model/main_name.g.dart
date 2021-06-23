// GENERATED CODE - DO NOT MODIFY BY HAND

part of main_name;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MainName> _$mainNameSerializer = new _$MainNameSerializer();

class _$MainNameSerializer implements StructuredSerializer<MainName> {
  @override
  final Iterable<Type> types = const [MainName, _$MainName];
  @override
  final String wireName = 'MainName';

  @override
  Iterable<Object?> serialize(Serializers serializers, MainName object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.temp;
    if (value != null) {
      result
        ..add('temp')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.feelsLike;
    if (value != null) {
      result
        ..add('feels_like')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.tempMin;
    if (value != null) {
      result
        ..add('temp_min')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.tempMax;
    if (value != null) {
      result
        ..add('temp_max')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.pressure;
    if (value != null) {
      result
        ..add('pressure')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.humidity;
    if (value != null) {
      result
        ..add('humidity')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  MainName deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MainNameBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'temp':
          result.temp = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'feels_like':
          result.feelsLike = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'temp_min':
          result.tempMin = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'temp_max':
          result.tempMax = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'pressure':
          result.pressure = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'humidity':
          result.humidity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$MainName extends MainName {
  @override
  final double? temp;
  @override
  final double? feelsLike;
  @override
  final double? tempMin;
  @override
  final double? tempMax;
  @override
  final int? pressure;
  @override
  final int? humidity;

  factory _$MainName([void Function(MainNameBuilder)? updates]) =>
      (new MainNameBuilder()..update(updates)).build();

  _$MainName._(
      {this.temp,
      this.feelsLike,
      this.tempMin,
      this.tempMax,
      this.pressure,
      this.humidity})
      : super._();

  @override
  MainName rebuild(void Function(MainNameBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MainNameBuilder toBuilder() => new MainNameBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MainName &&
        temp == other.temp &&
        feelsLike == other.feelsLike &&
        tempMin == other.tempMin &&
        tempMax == other.tempMax &&
        pressure == other.pressure &&
        humidity == other.humidity;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, temp.hashCode), feelsLike.hashCode),
                    tempMin.hashCode),
                tempMax.hashCode),
            pressure.hashCode),
        humidity.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MainName')
          ..add('temp', temp)
          ..add('feelsLike', feelsLike)
          ..add('tempMin', tempMin)
          ..add('tempMax', tempMax)
          ..add('pressure', pressure)
          ..add('humidity', humidity))
        .toString();
  }
}

class MainNameBuilder implements Builder<MainName, MainNameBuilder> {
  _$MainName? _$v;

  double? _temp;
  double? get temp => _$this._temp;
  set temp(double? temp) => _$this._temp = temp;

  double? _feelsLike;
  double? get feelsLike => _$this._feelsLike;
  set feelsLike(double? feelsLike) => _$this._feelsLike = feelsLike;

  double? _tempMin;
  double? get tempMin => _$this._tempMin;
  set tempMin(double? tempMin) => _$this._tempMin = tempMin;

  double? _tempMax;
  double? get tempMax => _$this._tempMax;
  set tempMax(double? tempMax) => _$this._tempMax = tempMax;

  int? _pressure;
  int? get pressure => _$this._pressure;
  set pressure(int? pressure) => _$this._pressure = pressure;

  int? _humidity;
  int? get humidity => _$this._humidity;
  set humidity(int? humidity) => _$this._humidity = humidity;

  MainNameBuilder();

  MainNameBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _temp = $v.temp;
      _feelsLike = $v.feelsLike;
      _tempMin = $v.tempMin;
      _tempMax = $v.tempMax;
      _pressure = $v.pressure;
      _humidity = $v.humidity;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MainName other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MainName;
  }

  @override
  void update(void Function(MainNameBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MainName build() {
    final _$result = _$v ??
        new _$MainName._(
            temp: temp,
            feelsLike: feelsLike,
            tempMin: tempMin,
            tempMax: tempMax,
            pressure: pressure,
            humidity: humidity);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
