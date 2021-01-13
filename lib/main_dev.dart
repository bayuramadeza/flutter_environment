import 'package:flutter_cicd_from_youtube/main_common.dart';

import 'environment.dart';

Future<void> main ()async{
  await mainCommon(Environment.dev);
}