import 'package:freezed_annotation/freezed_annotation.dart';

// 完成したら以下を実行
// flutter pub run build_runner watch --delete-conflicting-outputs
// 生成されるファイル名を指定する（ `生成元ファイル名.freezed.dart` ）
part 'user_info_model.freezed.dart';

@freezed
abstract class UserInfoModel with _$UserInfoModel {
  const factory UserInfoModel({
    @Default('') String name,
    @Default('') String nameKana,
    @Default('') String mail,
    @Default('') String telNum,
  }) = _UserInfoModel;
}
