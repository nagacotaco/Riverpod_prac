import 'package:freezed_annotation/freezed_annotation.dart';

// 完成したら以下を実行
// flutter pub run build_runner watch --delete-conflicting-outputs
// 生成されるファイル名を指定する（ `生成元ファイル名.freezed.dart` ）
part 'container_info_model.freezed.dart';

@freezed
abstract class ContainerInfoModel with _$ContainerInfoModel {
  const factory ContainerInfoModel({
    @Default(100.0) double width,
    @Default(100.0) double height,
  }) = _ContainerInfoModel;
}
