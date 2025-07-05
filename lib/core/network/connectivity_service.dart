import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:injectable/injectable.dart';

@singleton
class ConnectivityService {
  ConnectivityService()
      : _connectivity = Connectivity(),
        _connectionStatusController = StreamController<bool>.broadcast() {
    _init();
  }
  final Connectivity _connectivity;
  final StreamController<bool> _connectionStatusController;

  Stream<bool> get connectionStatus => _connectionStatusController.stream;
  bool _isConnected = true;
  bool get isConnected => _isConnected;

  void _init() {
    _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);

    // Initial check
    _checkConnectivity();
  }

  Future<void> _checkConnectivity() async {
    final result = await _connectivity.checkConnectivity();
    _updateConnectionStatus(result);
  }

  void _updateConnectionStatus(ConnectivityResult result) {
    _isConnected = result != ConnectivityResult.none;
    _connectionStatusController.add(_isConnected);
  }

  Future<bool> checkConnection() async {
    final result = await _connectivity.checkConnectivity();
    _updateConnectionStatus(result);
    return _isConnected;
  }

  void dispose() {
    _connectionStatusController.close();
  }
}
