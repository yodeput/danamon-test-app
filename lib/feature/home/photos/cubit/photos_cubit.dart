import 'package:bloc/bloc.dart';
import 'package:danamonTest/common/logger/loggy_types.dart';
import 'package:danamonTest/feature/home/photos/model/photo.dart';
import 'package:danamonTest/feature/home/photos/repository/photos_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'photos_state.dart';
part 'photos_cubit.freezed.dart';

class PhotosCubit extends Cubit<PhotosState> with BlocLoggy {
  PhotosCubit({required this.repository}) : super(PhotosState.initial()) {
    fetchData();
  }

  int page = 1;
  int limit = 10;
  bool isFetching = false;

  final PhotosRepository repository;

  Future<void> fetchData({bool isRefresh = false}) async {
    if (isRefresh) page = 1;
    emit(PhotosLoading());
    try {
      final result = await repository.getPhotos(page: page, limit: limit);
      result.fold((l) {
        emit(PhotosError(message: l.errorMessage));
      }, (r) {
        emit(PhotosSuccess(dataList: r ?? []));
        page++;
      });
    } catch (e) {
      loggy.error("fetchData >> $e");
    }
  }
}
