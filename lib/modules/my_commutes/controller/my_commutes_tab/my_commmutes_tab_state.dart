part of 'my_commmutes_tab_cubit.dart';

@freezed
class MyCommmutesTabState with _$MyCommmutesTabState {
  const factory MyCommmutesTabState.initial() = _Initial;
  const factory MyCommmutesTabState.changePage({required MyCommutesTab page}) =
      _ChangePage;
}
