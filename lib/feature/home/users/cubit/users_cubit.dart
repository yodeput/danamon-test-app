import 'package:bloc/bloc.dart';
import 'package:danamonTest/common/logger/loggy_types.dart';
import 'package:danamonTest/feature/home/users/model/user_data/user_data.dart';
import 'package:danamonTest/feature/home/users/repository/users_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'users_state.dart';
part 'users_cubit.freezed.dart';

class UsersCubit extends Cubit<UsersState> with BlocLoggy {
  UsersCubit({required this.repository}) : super(const UsersState.initial()) {
    fetchData();
  }

  final UsersRepository repository;

  int page = 1;
  int limit = 10;
  bool isFetching = false;

  Future<void> fetchData({bool isRefresh = false}) async {
    if (isRefresh) page = 1;
    emit(UsersListLoading());
    try {
      final result = await repository.getDataList(page: page, limit: limit);
      result.fold((l) {
        emit(UsersListError(message: l.errorMessage));
      }, (r) {
        emit(UsersListSuccess(dataList: r ?? []));
        page++;
      });
    } catch (e) {
      loggy.error("fetchData >> $e");
    }
  }

  Future<void> update(Map<String, String> params) async {
    emit(UsersFormLoading());
    try {
      final result = await repository.updateData(params);
      result.fold((l) {
        emit(UserFormError(message: l.errorMessage));
      }, (r) {
        emit(UserFormSuccess());
      });
    } catch (e) {
      loggy.error("update >> $e");
    }
  }

  Future<void> create(Map<String, String> params) async {
    emit(UsersFormLoading());
    try {
      final result = await repository.createData(params);
      result.fold((l) {
        emit(UserFormError(message: l.errorMessage));
      }, (r) {
        emit(UserFormSuccess());
      });
    } catch (e) {
      loggy.error("create >> $e");
    }
  }

  Future<void> delete(String userId) async {
    emit(UsersFormLoading());
    try {
      final result = await repository.deleteData(userId);
      result.fold((l) {
        emit(UserFormError(message: l.errorMessage));
      }, (r) {
        emit(UserFormSuccess());
      });
    } catch (e) {
      loggy.error("delete >> $e");
    }
  }
}
