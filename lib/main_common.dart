import 'package:flutter/material.dart';
import 'package:flutter_cicd_from_youtube/config_reader.dart';
import 'package:flutter_cicd_from_youtube/environment.dart';
import 'package:provider/provider.dart';

Future<void> mainCommon (String env)async{
  WidgetsFlutterBinding.ensureInitialized();
  await ConfigReader.initialize();

  Color primaryColor;
  switch(env){
    case Environment.dev:
      primaryColor = Colors.blue;
      break;
    case Environment.prod:
      primaryColor = Colors.red;
      break;
  }

  runApp(Provider.value(value: primaryColor));
}