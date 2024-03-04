import 'package:danamonTest/common/app/di.dart';
import 'package:danamonTest/common/constant.dart';
import 'package:danamonTest/feature/user/provider/user_provider.dart';
import 'package:danamonTest/feature/user/repository/user_repository.dart';

class AuthRepository {
  const AuthRepository({
    required this.provider,
  });

  final UserProvider provider;
}
