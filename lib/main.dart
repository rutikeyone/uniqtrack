import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'my_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await _initializeFirebase();

  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}


// Future<void> _initializeFirebase() {
//   return Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
// }

