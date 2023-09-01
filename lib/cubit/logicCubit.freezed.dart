// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'logicCubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MainStateData {
  String? get code => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainStateDataCopyWith<MainStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainStateDataCopyWith<$Res> {
  factory $MainStateDataCopyWith(
          MainStateData value, $Res Function(MainStateData) then) =
      _$MainStateDataCopyWithImpl<$Res, MainStateData>;
  @useResult
  $Res call({String? code});
}

/// @nodoc
class _$MainStateDataCopyWithImpl<$Res, $Val extends MainStateData>
    implements $MainStateDataCopyWith<$Res> {
  _$MainStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MainStateDataCopyWith<$Res>
    implements $MainStateDataCopyWith<$Res> {
  factory _$$_MainStateDataCopyWith(
          _$_MainStateData value, $Res Function(_$_MainStateData) then) =
      __$$_MainStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? code});
}

/// @nodoc
class __$$_MainStateDataCopyWithImpl<$Res>
    extends _$MainStateDataCopyWithImpl<$Res, _$_MainStateData>
    implements _$$_MainStateDataCopyWith<$Res> {
  __$$_MainStateDataCopyWithImpl(
      _$_MainStateData _value, $Res Function(_$_MainStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
  }) {
    return _then(_$_MainStateData(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_MainStateData implements _MainStateData {
  const _$_MainStateData({this.code});

  @override
  final String? code;

  @override
  String toString() {
    return 'MainStateData(code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MainStateData &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MainStateDataCopyWith<_$_MainStateData> get copyWith =>
      __$$_MainStateDataCopyWithImpl<_$_MainStateData>(this, _$identity);
}

abstract class _MainStateData implements MainStateData {
  const factory _MainStateData({final String? code}) = _$_MainStateData;

  @override
  String? get code;
  @override
  @JsonKey(ignore: true)
  _$$_MainStateDataCopyWith<_$_MainStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MainState {
  MainStateData? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MainStateData? data) initial,
    required TResult Function(MainStateData? data) getMenu,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MainStateData? data)? initial,
    TResult? Function(MainStateData? data)? getMenu,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MainStateData? data)? initial,
    TResult Function(MainStateData? data)? getMenu,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetMenu value) getMenu,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetMenu value)? getMenu,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetMenu value)? getMenu,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainStateCopyWith<MainState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainStateCopyWith<$Res> {
  factory $MainStateCopyWith(MainState value, $Res Function(MainState) then) =
      _$MainStateCopyWithImpl<$Res, MainState>;
  @useResult
  $Res call({MainStateData? data});

  $MainStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$MainStateCopyWithImpl<$Res, $Val extends MainState>
    implements $MainStateCopyWith<$Res> {
  _$MainStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as MainStateData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MainStateDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $MainStateDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> implements $MainStateCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MainStateData? data});

  @override
  $MainStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$Initial(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as MainStateData?,
    ));
  }
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial({this.data});

  @override
  final MainStateData? data;

  @override
  String toString() {
    return 'MainState.initial(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Initial &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialCopyWith<_$Initial> get copyWith =>
      __$$InitialCopyWithImpl<_$Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MainStateData? data) initial,
    required TResult Function(MainStateData? data) getMenu,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MainStateData? data)? initial,
    TResult? Function(MainStateData? data)? getMenu,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MainStateData? data)? initial,
    TResult Function(MainStateData? data)? getMenu,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetMenu value) getMenu,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetMenu value)? getMenu,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetMenu value)? getMenu,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements MainState {
  const factory Initial({final MainStateData? data}) = _$Initial;

  @override
  MainStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetMenuCopyWith<$Res> implements $MainStateCopyWith<$Res> {
  factory _$$GetMenuCopyWith(_$GetMenu value, $Res Function(_$GetMenu) then) =
      __$$GetMenuCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MainStateData? data});

  @override
  $MainStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetMenuCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$GetMenu>
    implements _$$GetMenuCopyWith<$Res> {
  __$$GetMenuCopyWithImpl(_$GetMenu _value, $Res Function(_$GetMenu) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetMenu(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as MainStateData?,
    ));
  }
}

/// @nodoc

class _$GetMenu implements GetMenu {
  const _$GetMenu({this.data});

  @override
  final MainStateData? data;

  @override
  String toString() {
    return 'MainState.getMenu(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMenu &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetMenuCopyWith<_$GetMenu> get copyWith =>
      __$$GetMenuCopyWithImpl<_$GetMenu>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MainStateData? data) initial,
    required TResult Function(MainStateData? data) getMenu,
  }) {
    return getMenu(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MainStateData? data)? initial,
    TResult? Function(MainStateData? data)? getMenu,
  }) {
    return getMenu?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MainStateData? data)? initial,
    TResult Function(MainStateData? data)? getMenu,
    required TResult orElse(),
  }) {
    if (getMenu != null) {
      return getMenu(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetMenu value) getMenu,
  }) {
    return getMenu(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetMenu value)? getMenu,
  }) {
    return getMenu?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetMenu value)? getMenu,
    required TResult orElse(),
  }) {
    if (getMenu != null) {
      return getMenu(this);
    }
    return orElse();
  }
}

abstract class GetMenu implements MainState {
  const factory GetMenu({final MainStateData? data}) = _$GetMenu;

  @override
  MainStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetMenuCopyWith<_$GetMenu> get copyWith =>
      throw _privateConstructorUsedError;
}
