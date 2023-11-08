// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DetailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() changePicture,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? changePicture,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? changePicture,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangePicture value) changePicture,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangePicture value)? changePicture,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangePicture value)? changePicture,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailEventCopyWith<$Res> {
  factory $DetailEventCopyWith(
          DetailEvent value, $Res Function(DetailEvent) then) =
      _$DetailEventCopyWithImpl<$Res, DetailEvent>;
}

/// @nodoc
class _$DetailEventCopyWithImpl<$Res, $Val extends DetailEvent>
    implements $DetailEventCopyWith<$Res> {
  _$DetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$DetailEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'DetailEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() changePicture,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? changePicture,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? changePicture,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangePicture value) changePicture,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangePicture value)? changePicture,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangePicture value)? changePicture,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements DetailEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$ChangePictureImplCopyWith<$Res> {
  factory _$$ChangePictureImplCopyWith(
          _$ChangePictureImpl value, $Res Function(_$ChangePictureImpl) then) =
      __$$ChangePictureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChangePictureImplCopyWithImpl<$Res>
    extends _$DetailEventCopyWithImpl<$Res, _$ChangePictureImpl>
    implements _$$ChangePictureImplCopyWith<$Res> {
  __$$ChangePictureImplCopyWithImpl(
      _$ChangePictureImpl _value, $Res Function(_$ChangePictureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChangePictureImpl implements _ChangePicture {
  const _$ChangePictureImpl();

  @override
  String toString() {
    return 'DetailEvent.changePicture()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ChangePictureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() changePicture,
  }) {
    return changePicture();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? changePicture,
  }) {
    return changePicture?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? changePicture,
    required TResult orElse(),
  }) {
    if (changePicture != null) {
      return changePicture();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangePicture value) changePicture,
  }) {
    return changePicture(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangePicture value)? changePicture,
  }) {
    return changePicture?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangePicture value)? changePicture,
    required TResult orElse(),
  }) {
    if (changePicture != null) {
      return changePicture(this);
    }
    return orElse();
  }
}

abstract class _ChangePicture implements DetailEvent {
  const factory _ChangePicture() = _$ChangePictureImpl;
}

/// @nodoc
mixin _$DetailState {
  DetailStatus get status => throw _privateConstructorUsedError;
  int get imgIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailStateCopyWith<DetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailStateCopyWith<$Res> {
  factory $DetailStateCopyWith(
          DetailState value, $Res Function(DetailState) then) =
      _$DetailStateCopyWithImpl<$Res, DetailState>;
  @useResult
  $Res call({DetailStatus status, int imgIndex});
}

/// @nodoc
class _$DetailStateCopyWithImpl<$Res, $Val extends DetailState>
    implements $DetailStateCopyWith<$Res> {
  _$DetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? imgIndex = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DetailStatus,
      imgIndex: null == imgIndex
          ? _value.imgIndex
          : imgIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailStateImplCopyWith<$Res>
    implements $DetailStateCopyWith<$Res> {
  factory _$$DetailStateImplCopyWith(
          _$DetailStateImpl value, $Res Function(_$DetailStateImpl) then) =
      __$$DetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DetailStatus status, int imgIndex});
}

/// @nodoc
class __$$DetailStateImplCopyWithImpl<$Res>
    extends _$DetailStateCopyWithImpl<$Res, _$DetailStateImpl>
    implements _$$DetailStateImplCopyWith<$Res> {
  __$$DetailStateImplCopyWithImpl(
      _$DetailStateImpl _value, $Res Function(_$DetailStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? imgIndex = null,
  }) {
    return _then(_$DetailStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DetailStatus,
      imgIndex: null == imgIndex
          ? _value.imgIndex
          : imgIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DetailStateImpl implements _DetailState {
  const _$DetailStateImpl(
      {this.status = DetailStatus.initial, required this.imgIndex});

  @override
  @JsonKey()
  final DetailStatus status;
  @override
  final int imgIndex;

  @override
  String toString() {
    return 'DetailState(status: $status, imgIndex: $imgIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.imgIndex, imgIndex) ||
                other.imgIndex == imgIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, imgIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailStateImplCopyWith<_$DetailStateImpl> get copyWith =>
      __$$DetailStateImplCopyWithImpl<_$DetailStateImpl>(this, _$identity);
}

abstract class _DetailState implements DetailState {
  const factory _DetailState(
      {final DetailStatus status,
      required final int imgIndex}) = _$DetailStateImpl;

  @override
  DetailStatus get status;
  @override
  int get imgIndex;
  @override
  @JsonKey(ignore: true)
  _$$DetailStateImplCopyWith<_$DetailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
