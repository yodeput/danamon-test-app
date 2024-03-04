import 'package:talker/talker.dart';
import 'package:danamonTest/start.dart';

import 'logger.dart';

mixin ModelLoggy implements LoggerType {
  @override
  Talker get loggy => talker;
  @override
  String get className => 'MODEL: $runtimeType';
}

mixin UiLoggy implements LoggerType {
  @override
  Talker get loggy => talker;
  @override
  String get className => 'MODEL: $runtimeType';
}

mixin BlocLoggy implements LoggerType {
  @override
  Talker get loggy => talker;
  @override
  String get className => 'MODEL: $runtimeType';
}

mixin RepositoryLoggy implements LoggerType {
  @override
  Talker get loggy => talker;
  @override
  String get className => 'MODEL: $runtimeType';
}

mixin ProviderLoggy implements LoggerType {
  @override
  Talker get loggy => talker;
  @override
  String get className => 'MODEL: $runtimeType';
}
