import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ration_shop/presentation/common/Splash%20screen.dart';
import 'core/controller/controller.dart';
import 'presentation/common/user or owner selection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyCfU6C9vJiKTGC4yuP0Gc16s_3yQgboLQI",
          appId: "1:485648811449:android:c50cb0ad45c3220093e268",
          messagingSenderId: "",
          projectId: "ration-shop-6406f",
          storageBucket: "ration-shop-6406f.appspot.com"));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => tile_controller(),
        child:
            MaterialApp(debugShowCheckedModeBanner: false, home: ration_splash()));
  }
}