// GENERATED CODE - DO NOT MODIFY BY HAND

part of weather_lat_long;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WeatherLatLong> _$weatherLatLongSerializer =
    new _$WeatherLatLongSerializer();

class _$WeatherLatLongSerializer
    implements StructuredSerializer<WeatherLatLong> {
  @override
  final Iterable<Type> types = const [WeatherLatLong, _$WeatherLatLong];
  @override
  final String wireName = 'WeatherLatLong';

  @override
  Iterable<Object?> serialize(Serializers serializers, WeatherLatLong object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.coord;
    if (value != null) {
      result
        ..add('coord')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(Coord)));
    }
    value = object.weather;
    if (value != null) {
      result
        ..add('weather')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Weather)])));
    }
    value = object.base;
    if (value != null) {
      result
        ..add('base')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.main;
    if (value != null) {
      result
        ..add('main')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(Main)));
    }
    value = object.visibility;
    if (value != null) {
      result
        ..add('visibility')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.wind;
    if (value != null) {
      result
        ..add('wind')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(Wind)));
    }
    value = object.clouds;
    if (value != null) {
      result
        ..add('clouds')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(Clouds)));
    }
    value = object.dt;
    if (value != null) {
      result
        ..add('dt')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.sys;
    if (value != null) {
      result
        ..add('sys')
        ..add(serializers.serialize(value, specifiedType: const FullType(Sys)));
    }
    value = object.timezone;
    if (value != null) {
      result
        ..add('timezone')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cod;
    if (value != null) {
      result
        ..add('cod')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  WeatherLatLong deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WeatherLatLongBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'coord':
          result.coord.replace(serializers.deserialize(value,
              specifiedType: const FullType(Coord))! as Coord);
          break;
        case 'weather':
          result.weather.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Weather)]))!
              as BuiltList<Object?>);
          break;
        case 'base':
          result.base = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'main':
          result.main.replace(serializers.deserialize(value,
              specifiedType: const FullType(Main))! as Main);
          break;
        case 'visibility':
          result.visibility = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'wind':
          result.wind.replace(serializers.deserialize(value,
              specifiedType: const FullType(Wind))! as Wind);
          break;
        case 'clouds':
          result.clouds.replace(serializers.deserialize(value,
              specifiedType: const FullType(Clouds))! as Clouds);
          break;
        case 'dt':
          result.dt = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'sys':
          result.sys.replace(serializers.deserialize(value,
              specifiedType: const FullType(Sys))! as Sys);
          break;
        case 'timezone':
          result.timezone = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'cod':
          result.cod = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$WeatherLatLong extends WeatherLatLong {
  @override
  final Coord? coord;
  @override
  final BuiltList<Weather>? weather;
  @override
  final String? base;
  @override
  final Main? main;
  @override
  final int? visibility;
  @override
  final Wind? wind;
  @override
  final Clouds? clouds;
  @override
  final int? dt;
  @override
  final Sys? sys;
  @override
  final int? timezone;
  @override
  final int? id;
  @override
  final String? name;
  @override
  final int? cod;

  factory _$WeatherLatLong([void Function(WeatherLatLongBuilder)? updates]) =>
      (new WeatherLatLongBuilder()..update(updates)).build();

  _$WeatherLatLong._(
      {this.coord,
      this.weather,
      this.base,
      this.main,
      this.visibility,
      this.wind,
      this.clouds,
      this.dt,
      this.sys,
      this.timezone,
      this.id,
      this.name,
      this.cod})
      : super._();

  @override
  WeatherLatLong rebuild(void Function(WeatherLatLongBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WeatherLatLongBuilder toBuilder() =>
      new WeatherLatLongBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WeatherLatLong &&
        coord == other.coord &&
        weather == other.weather &&
        base == other.base &&
        main == other.main &&
        visibility == other.visibility &&
        wind == other.wind &&
        clouds == other.clouds &&
        dt == other.dt &&
        sys == other.sys &&
        timezone == other.timezone &&
        id == other.id &&
        name == other.name &&
        cod == other.cod;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc($jc(0, coord.hashCode),
                                                    weather.hashCode),
                                                base.hashCode),
                                            main.hashCode),
                                        visibility.hashCode),
                                    wind.hashCode),
                                clouds.hashCode),
                            dt.hashCode),
                        sys.hashCode),
                    timezone.hashCode),
                id.hashCode),
            name.hashCode),
        cod.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('WeatherLatLong')
          ..add('coord', coord)
          ..add('weather', weather)
          ..add('base', base)
          ..add('main', main)
          ..add('visibility', visibility)
          ..add('wind', wind)
          ..add('clouds', clouds)
          ..add('dt', dt)
          ..add('sys', sys)
          ..add('timezone', timezone)
          ..add('id', id)
          ..add('name', name)
          ..add('cod', cod))
        .toString();
  }
}

class WeatherLatLongBuilder
    implements Builder<WeatherLatLong, WeatherLatLongBuilder> {
  _$WeatherLatLong? _$v;

  CoordBuilder? _coord;
  CoordBuilder get coord => _$this._coord ??= new CoordBuilder();
  set coord(CoordBuilder? coord) => _$this._coord = coord;

  ListBuilder<Weather>? _weather;
  ListBuilder<Weather> get weather =>
      _$this._weather ??= new ListBuilder<Weather>();
  set weather(ListBuilder<Weather>? weather) => _$this._weather = weather;

  String? _base;
  String? get base => _$this._base;
  set base(String? base) => _$this._base = base;

  MainBuilder? _main;
  MainBuilder get main => _$this._main ??= new MainBuilder();
  set main(MainBuilder? main) => _$this._main = main;

  int? _visibility;
  int? get visibility => _$this._visibility;
  set visibility(int? visibility) => _$this._visibility = visibility;

  WindBuilder? _wind;
  WindBuilder get wind => _$this._wind ??= new WindBuilder();
  set wind(WindBuilder? wind) => _$this._wind = wind;

  CloudsBuilder? _clouds;
  CloudsBuilder get clouds => _$this._clouds ??= new CloudsBuilder();
  set clouds(CloudsBuilder? clouds) => _$this._clouds = clouds;

  int? _dt;
  int? get dt => _$this._dt;
  set dt(int? dt) => _$this._dt = dt;

  SysBuilder? _sys;
  SysBuilder get sys => _$this._sys ??= new SysBuilder();
  set sys(SysBuilder? sys) => _$this._sys = sys;

  int? _timezone;
  int? get timezone => _$this._timezone;
  set timezone(int? timezone) => _$this._timezone = timezone;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _cod;
  int? get cod => _$this._cod;
  set cod(int? cod) => _$this._cod = cod;

  WeatherLatLongBuilder();

  WeatherLatLongBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _coord = $v.coord?.toBuilder();
      _weather = $v.weather?.toBuilder();
      _base = $v.base;
      _main = $v.main?.toBuilder();
      _visibility = $v.visibility;
      _wind = $v.wind?.toBuilder();
      _clouds = $v.clouds?.toBuilder();
      _dt = $v.dt;
      _sys = $v.sys?.toBuilder();
      _timezone = $v.timezone;
      _id = $v.id;
      _name = $v.name;
      _cod = $v.cod;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WeatherLatLong other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WeatherLatLong;
  }

  @override
  void update(void Function(WeatherLatLongBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$WeatherLatLong build() {
    _$WeatherLatLong _$result;
    try {
      _$result = _$v ??
          new _$WeatherLatLong._(
              coord: _coord?.build(),
              weather: _weather?.build(),
              base: base,
              main: _main?.build(),
              visibility: visibility,
              wind: _wind?.build(),
              clouds: _clouds?.build(),
              dt: dt,
              sys: _sys?.build(),
              timezone: timezone,
              id: id,
              name: name,
              cod: cod);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'coord';
        _coord?.build();
        _$failedField = 'weather';
        _weather?.build();

        _$failedField = 'main';
        _main?.build();

        _$failedField = 'wind';
        _wind?.build();
        _$failedField = 'clouds';
        _clouds?.build();

        _$failedField = 'sys';
        _sys?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'WeatherLatLong', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
