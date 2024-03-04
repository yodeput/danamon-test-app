import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_secure_storage/get_secure_storage.dart';
import 'package:danamonTest/common/logger/loggy_types.dart';

class StorageProvider with ProviderLoggy {
  StorageProvider(this.box);

  final GetSecureStorage box;

  Future<bool> setString(String key, String value) async {
    try {
      await box.write(key, value);
      return true;
    } catch (error) {
      loggy.error(error.toString(), error);
      return false;
    }
  }

  Future<bool> setInt(String key, int value) async {
    try {
      await box.write(key, value);
      return true;
    } catch (error) {
      loggy.error(error.toString(), error);
      return false;
    }
  }

  Future<bool> setBool(String key, bool value) async {
    try {
      await box.write(key, value);
      return true;
    } catch (error) {
      loggy.error(error.toString(), error);
      return false;
    }
  }

  Future<bool> setList(String key, List<String> value) async {
    try {
      await box.write(key, value);
      return true;
    } catch (error) {
      loggy.error(error.toString(), error);
      return false;
    }
  }

  String getString(String key) {
    return box.read(key) ?? '';
  }

  int getInt(String key) {
    return box.read(key) ?? 000000;
  }

  bool getBool(String key) {
    return box.read(key) ?? false;
  }

  List<String> getList(String key) {
    return box.read(key) ?? [];
  }

  Future<bool> remove(String key) async {
    try {
      await box.remove(key);
      return true;
    } catch (error) {
      return false;
    }
  }
}
