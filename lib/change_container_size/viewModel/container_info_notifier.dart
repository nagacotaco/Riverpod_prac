import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_practice/change_container_size/model/container_info_model.dart';

class ContainerInfoNotifier extends StateNotifier<ContainerInfoModel> {
  // 初期値の指定
  ContainerInfoNotifier() : super(const ContainerInfoModel());

  void changeWidth(double value) async {
    state = state.copyWith(width: value);
  }

  void changeHeight(double value) async {
    state = state.copyWith(height: value);
  }
}

// ContainerInfoNotifierの状態を管理する
final containerInfoProvider = StateNotifierProvider<ContainerInfoNotifier, ContainerInfoModel>(
  (ref) => ContainerInfoNotifier(),
);
