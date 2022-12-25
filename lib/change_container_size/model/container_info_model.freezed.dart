// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'container_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ContainerInfoModel {
  double get width => throw _privateConstructorUsedError;
  double get height => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ContainerInfoModelCopyWith<ContainerInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContainerInfoModelCopyWith<$Res> {
  factory $ContainerInfoModelCopyWith(
          ContainerInfoModel value, $Res Function(ContainerInfoModel) then) =
      _$ContainerInfoModelCopyWithImpl<$Res, ContainerInfoModel>;
  @useResult
  $Res call({double width, double height});
}

/// @nodoc
class _$ContainerInfoModelCopyWithImpl<$Res, $Val extends ContainerInfoModel>
    implements $ContainerInfoModelCopyWith<$Res> {
  _$ContainerInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = null,
    Object? height = null,
  }) {
    return _then(_value.copyWith(
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ContainerInfoModelCopyWith<$Res>
    implements $ContainerInfoModelCopyWith<$Res> {
  factory _$$_ContainerInfoModelCopyWith(_$_ContainerInfoModel value,
          $Res Function(_$_ContainerInfoModel) then) =
      __$$_ContainerInfoModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double width, double height});
}

/// @nodoc
class __$$_ContainerInfoModelCopyWithImpl<$Res>
    extends _$ContainerInfoModelCopyWithImpl<$Res, _$_ContainerInfoModel>
    implements _$$_ContainerInfoModelCopyWith<$Res> {
  __$$_ContainerInfoModelCopyWithImpl(
      _$_ContainerInfoModel _value, $Res Function(_$_ContainerInfoModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = null,
    Object? height = null,
  }) {
    return _then(_$_ContainerInfoModel(
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_ContainerInfoModel implements _ContainerInfoModel {
  const _$_ContainerInfoModel({this.width = 100.0, this.height = 100.0});

  @override
  @JsonKey()
  final double width;
  @override
  @JsonKey()
  final double height;

  @override
  String toString() {
    return 'ContainerInfoModel(width: $width, height: $height)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContainerInfoModel &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height));
  }

  @override
  int get hashCode => Object.hash(runtimeType, width, height);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContainerInfoModelCopyWith<_$_ContainerInfoModel> get copyWith =>
      __$$_ContainerInfoModelCopyWithImpl<_$_ContainerInfoModel>(
          this, _$identity);
}

abstract class _ContainerInfoModel implements ContainerInfoModel {
  const factory _ContainerInfoModel({final double width, final double height}) =
      _$_ContainerInfoModel;

  @override
  double get width;
  @override
  double get height;
  @override
  @JsonKey(ignore: true)
  _$$_ContainerInfoModelCopyWith<_$_ContainerInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}
