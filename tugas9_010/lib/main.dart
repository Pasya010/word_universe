import 'package:flame_audio/bgm.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:tugas9_010/auth/main_page.dart';
import 'package:tugas9_010/pages/first_page.dart';
import 'package:flame_audio/flame_audio.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tugas9_010/pages/home_page.dart';
import 'package:tugas9_010/providers/theme_provider.dart';
import 'package:tugas9_010/utils/theme_preferences.dart';

import 'constants/themes.dart';
import 'providers/controller.dart';
import 'page/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  runApp(const MyApp());

  FlameAudio.bgm.initialize();
  bool musicplaying = false;

  if (!musicplaying) {
    FlameAudio.bgm.play('bg.ogg');
    musicplaying = true;
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Controller()),
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
      ],
      child: FutureBuilder(
        initialData: false,
        future: ThemePreferences.getTheme(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
              Provider.of<ThemeProvider>(context, listen: false)
                  .setTheme(turnOn: snapshot.data as bool);
            });
          }
          return Consumer<ThemeProvider>(
            builder: (_, notifier, __) => MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Word Universe',
              theme: notifier.isDark ? darkTheme : lightTheme,
              home: const Material(child: firstPage()),
            ),
          );
        },
      ),
    );
  }
}
