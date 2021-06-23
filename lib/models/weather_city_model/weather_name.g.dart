// GENERATED CODE - DO NOT MODIFY BY HAND

part of weather_name;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WeatherName> _$weatherNameSerializer = new _$WeatherNameSerializer();

class _$WeatherNameSerializer implements StructuredSerializer<WeatherName> {
  @override
  final Iterable<Type> types = const [WeatherName, _$WeatherName];
  @override
  final String wireName = 'WeatherName';

  @override
  Iterable<Object?> serialize(Serializers serializers, WeatherName object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.main;
    if (value != null) {
      result
        ..add('main')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.icon;
    if (value != null) {
      result
        ..add('icon')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  WeatherName deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WeatherNameBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'main':
          result.main = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'icon':
          result.icon = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$WeatherName extends WeatherName {
  @override
  final int? id;
  @override
  final String? main;
  @override
  final String? description;
  @override
  final String? icon;

  factory _$WeatherName([void Function(WeatherNameBuilder)? updates]) =>
      (new WeatherNameBuilder()..update(updates)).build();

  _$WeatherName._({this.id, this.main, this.description, this.icon})
      : super._();

  @override
  WeatherName rebuild(void Function(WeatherNameBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WeatherNameBuilder toBuilder() => new WeatherNameBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WeatherName &&
        id == other.id &&
        main == other.main &&
        description == other.description &&
        icon == other.icon;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, id.hashCode), main.hashCode), description.hashCode),
        icon.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('WeatherName')
          ..add('id', id)
          ..add('main', main)
          ..add('description', description)
          ..add('icon', icon))
        .toString();
  }
}

class WeatherNameBuilder implements Builder<WeatherName, WeatherNameBuilder> {
  _$WeatherName? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _main;
  String? get main => _$this._main;
  set main(String? main) => _$this._main = main;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _icon;
  String? get icon => _$this._icon;
  set icon(String? icon) => _$this._icon = icon;

  WeatherNameBuilder();

  WeatherNameBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _main = $v.main;
      _description = $v.description;
      _icon = $v.icon;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WeatherName other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WeatherName;
  }

  @override
  void update(void Function(WeatherNameBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$WeatherName build() {
    final _$result = _$v ??
        new _$WeatherName._(
            id: id, main: main, description: description, icon: icon);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
