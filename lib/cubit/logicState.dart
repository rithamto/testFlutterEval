part of 'logicCubit.dart';

@freezed
class MainStateData with _$MainStateData {
  const factory MainStateData({
    String? code,
  }) = _MainStateData;
}

@freezed
class MainState with _$MainState {
  const factory MainState.initial({MainStateData? data}) = Initial;
  const factory MainState.getMenu({MainStateData? data}) = GetMenu;
}