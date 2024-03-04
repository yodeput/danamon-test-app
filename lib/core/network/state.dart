import 'package:connectivity_plus/connectivity_plus.dart';

abstract class NetworkState {}

class ConnectionInitial extends NetworkState {}

class ConnectionSuccess extends NetworkState {
  ConnectionSuccess(this.result);
  final ConnectivityResult result;
}

class ConnectionFailure extends NetworkState {}
