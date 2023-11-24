import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_theme/home_screen.dart';
import 'package:flutter_theme/styles.dart';
import 'package:flutter_theme/theme_prpvider.dart';

void main() {
  runApp(
    ProviderScope(
      child: FlutterTheme(),
    ),
  );
}

class FlutterTheme extends StatelessWidget {
  FlutterTheme({super.key});

  Styles styles = Styles();

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      final themeNotifier = ref.watch(themeProvider);
      return MaterialApp(
        theme: styles.getTheme(context, themeNotifier.isDarkTheme),
        home: HomeScreen(),
      );
    });
  }
}
