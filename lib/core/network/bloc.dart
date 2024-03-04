import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:danamonTest/common/logger/loggy_types.dart';

import 'event.dart';
import 'state.dart';

class NetworkBloc extends Bloc<NetworkEvent, NetworkState> with BlocLoggy {
  NetworkBloc() : super(ConnectionInitial()) {
    on<ListenConnection>(_observe);
    on<ConnectionChanged>(_notifyStatus);
  }
  int attemp = 0;

  void _observe(event, emit) {
    Connectivity().onConnectivityChanged.listen((result) {
      loggy.info("NetworkBloc >> $result");
      if (result == ConnectivityResult.none) {
        add(ConnectionChanged(ConnectionFailure()));
      } else {
        add(ConnectionChanged(ConnectionSuccess(result)));
      }
      attemp++;
    });
  }

  void _notifyStatus(ConnectionChanged event, emit) {
    if (attemp > 1) {
      emit(event.connection);
    }
  }
}
