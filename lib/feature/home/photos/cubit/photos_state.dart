part of 'photos_cubit.dart';

@freezed
abstract class PhotosState with _$PhotosState {
  factory PhotosState.initial() = _Initial;

  factory PhotosState.loading() = PhotosLoading;

  factory PhotosState.error({@Default('') String message}) = PhotosError;

  factory PhotosState.success({@Default([]) List<Photo> dataList}) =
      PhotosSuccess;
}
