import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:play_and_learn_flutter/pages/screens/authentification/sign_in_screen.dart';
import 'package:play_and_learn_flutter/utils/constants.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Nextplace',
      defaultTransition: Transition.cupertino,
      locale: const Locale('fr'),
      fallbackLocale: const Locale('fr'),
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
        backgroundColor: kBackground,
      ),
      //initialBinding: Binding(),
      home: const SignInScreen(),
    );
  }
}
