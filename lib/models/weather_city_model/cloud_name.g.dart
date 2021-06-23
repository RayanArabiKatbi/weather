// GENERATED CODE - DO NOT MODIFY BY HAND

part of cloud_name;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CloudName> _$cloudNameSerializer = new _$CloudNameSerializer();

class _$CloudNameSerializer implements StructuredSerializer<CloudName> {
  @override
  final Iterable<Type> types = const [CloudName, _$CloudName];
  @override
  final String wireName = 'CloudName';

  @override
  Iterable<Object?> serialize(Serializers serializers, CloudName object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.all;
    if (value != null) {
      result
        ..add('all')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  CloudName deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CloudNameBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'all':
          result.all = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$CloudName extends CloudName {
  @override
  final int? all;

  factory _$CloudName([void Function(CloudNameBuilder)? updates]) =>
      (new CloudNameBuilder()..update(updates)).build();

  _$CloudName._({this.all}) : super._();

  @override
  CloudName rebuild(void Function(CloudNameBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CloudNameBuilder toBuilder() => new CloudNameBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CloudName && all == other.all;
  }

  @override
  int get hashCode {
    return $jf($jc(0, all.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CloudName')..add('all', all))
        .toString();
  }
}

class CloudNameBuilder implements Builder<CloudName, CloudNameBuilder> {
  _$CloudName? _$v;

  int? _all;
  int? get all => _$this._all;
  set all(int? all) => _$this._all = all;

  CloudNameBuilder();

  CloudNameBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _all = $v.all;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CloudName other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CloudName;
  }

  @override
  void update(void Function(CloudNameBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CloudName build() {
    final _$result = _$v ?? new _$CloudName._(all: all);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
