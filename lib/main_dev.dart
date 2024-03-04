import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'common/gen/assets.gen.dart';
import 'start.dart';

Future<void> main() async {
  await dotenv.load(fileName: Assets.env.envDev);
  start();
}
