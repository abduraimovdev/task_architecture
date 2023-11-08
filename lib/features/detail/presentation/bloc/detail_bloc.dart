import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_event.dart';

part 'detail_state.dart';

part 'detail_bloc.freezed.dart';

class DetailBloc extends Bloc<DetailEvent, DetailState> {
  DetailBloc() : super(const DetailState(imgIndex: 0)) {
    on<_ChangePicture>(_changePicture);
  }

  void _changePicture(_ChangePicture event, Emitter<DetailState> emit) {
    if (state.imgIndex == 2) {
      emit(
          state.copyWith.call(status: DetailStatus.changePicture, imgIndex: 0));
    } else {
      emit(state.copyWith.call(
          status: DetailStatus.changePicture, imgIndex: (state.imgIndex + 1)));
    }
  }
}
