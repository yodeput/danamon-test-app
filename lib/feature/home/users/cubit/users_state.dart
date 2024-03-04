part of 'users_cubit.dart';

@freezed
class UsersState with _$UsersState {
  const factory UsersState.initial() = _Initial;

  const factory UsersState.loading() = UsersListLoading;
  const factory UsersState.error({required String message}) = UsersListError;
  const factory UsersState.success({@Default([]) List<User> dataList}) =
      UsersListSuccess;

  const factory UsersState.formLoading() = UsersFormLoading;
  const factory UsersState.formError({required String message}) = UserFormError;
  const factory UsersState.formSuccess() = UserFormSuccess;
}
