part of 'detail_bloc.dart';

enum DetailStatus {initial, changePicture}
@freezed
class DetailState with _$DetailState {
  const factory DetailState({
    @Default(DetailStatus.initial) DetailStatus status,
    required int imgIndex,
  }) = _DetailState;
}
