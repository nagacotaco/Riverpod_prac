// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserInfoModel {
  String get name => throw _privateConstructorUsedError;
  String get nameKana => throw _privateConstructorUsedError;
  String get mail => throw _privateConstructorUsedError;
  String get telNum => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserInfoModelCopyWith<UserInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInfoModelCopyWith<$Res> {
  factory $UserInfoModelCopyWith(
          UserInfoModel value, $Res Function(UserInfoModel) then) =
      _$UserInfoModelCopyWithImpl<$Res, UserInfoModel>;
  @useResult
  $Res call({String name, String nameKana, String mail, String telNum});
}

/// @nodoc
class _$UserInfoModelCopyWithImpl<$Res, $Val extends UserInfoModel>
    implements $UserInfoModelCopyWith<$Res> {
  _$UserInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? nameKana = null,
    Object? mail = null,
    Object? telNum = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      nameKana: null == nameKana
          ? _value.nameKana
          : nameKana // ignore: cast_nullable_to_non_nullable
              as String,
      mail: null == mail
          ? _value.mail
          : mail // ignore: cast_nullable_to_non_nullable
              as String,
      telNum: null == telNum
          ? _value.telNum
          : telNum // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserInfoModelCopyWith<$Res>
    implements $UserInfoModelCopyWith<$Res> {
  factory _$$_UserInfoModelCopyWith(
          _$_UserInfoModel value, $Res Function(_$_UserInfoModel) then) =
      __$$_UserInfoModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String nameKana, String mail, String telNum});
}

/// @nodoc
class __$$_UserInfoModelCopyWithImpl<$Res>
    extends _$UserInfoModelCopyWithImpl<$Res, _$_UserInfoModel>
    implements _$$_UserInfoModelCopyWith<$Res> {
  __$$_UserInfoModelCopyWithImpl(
      _$_UserInfoModel _value, $Res Function(_$_UserInfoModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? nameKana = null,
    Object? mail = null,
    Object? telNum = null,
  }) {
    return _then(_$_UserInfoModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      nameKana: null == nameKana
          ? _value.nameKana
          : nameKana // ignore: cast_nullable_to_non_nullable
              as String,
      mail: null == mail
          ? _value.mail
          : mail // ignore: cast_nullable_to_non_nullable
              as String,
      telNum: null == telNum
          ? _value.telNum
          : telNum // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UserInfoModel implements _UserInfoModel {
  const _$_UserInfoModel(
      {this.name = '', this.nameKana = '', this.mail = '', this.telNum = ''});

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String nameKana;
  @override
  @JsonKey()
  final String mail;
  @override
  @JsonKey()
  final String telNum;

  @override
  String toString() {
    return 'UserInfoModel(name: $name, nameKana: $nameKana, mail: $mail, telNum: $telNum)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserInfoModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nameKana, nameKana) ||
                other.nameKana == nameKana) &&
            (identical(other.mail, mail) || other.mail == mail) &&
            (identical(other.telNum, telNum) || other.telNum == telNum));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, nameKana, mail, telNum);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserInfoModelCopyWith<_$_UserInfoModel> get copyWith =>
      __$$_UserInfoModelCopyWithImpl<_$_UserInfoModel>(this, _$identity);
}

abstract class _UserInfoModel implements UserInfoModel {
  const factory _UserInfoModel(
      {final String name,
      final String nameKana,
      final String mail,
      final String telNum}) = _$_UserInfoModel;

  @override
  String get name;
  @override
  String get nameKana;
  @override
  String get mail;
  @override
  String get telNum;
  @override
  @JsonKey(ignore: true)
  _$$_UserInfoModelCopyWith<_$_UserInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}
