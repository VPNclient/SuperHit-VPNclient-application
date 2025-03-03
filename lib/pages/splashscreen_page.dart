import 'package:flutter/material.dart';
import 'package:super_hit/design/dimensions.dart';

import 'package:super_hit/design/images.dart';
import 'package:super_hit/pages/main/main_page.dart';
import 'package:flutter/services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  double _progress = 0.0;

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    _startLoading();
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: SystemUiOverlay.values,
    );
    super.dispose();
  }

  void _startLoading() async {
    final tasks = [_loadConfigurations];

    for (int i = 0; i < tasks.length; i++) {
      await tasks[i]();
      setState(() {
        _progress = (i + 1) / tasks.length;
      });
    }

    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => const HomePage()),
    );
  }

  Future<void> _loadConfigurations() async {
    await Future.delayed(const Duration(seconds: 2));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              child: splashscreenLogo,
            ),
            Text(
              'Добро пожаловать',
              style: TextStyle(
                fontSize: fontSize20,
                fontFamily: fontFamilySFPro,
                color: Theme.of(context).colorScheme.onSecondary,
                fontWeight: FontWeight.w700,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 12),
              child: Text(
                'Настраиваем приложение.',
                style: TextStyle(
                  fontSize: fontSize17,
                  fontFamily: fontFamilySFPro,
                  color: Theme.of(context).colorScheme.onSecondary,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Container(
              height: 8,
              width: 240,
              margin: const EdgeInsets.only(top: 20),
              child: LinearProgressIndicator(
                value: _progress,
                borderRadius: const BorderRadius.all(Radius.circular(4)),
                backgroundColor: Theme.of(context).colorScheme.onPrimary,
                valueColor: AlwaysStoppedAnimation<Color>(
                  Theme.of(context).colorScheme.primary,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
