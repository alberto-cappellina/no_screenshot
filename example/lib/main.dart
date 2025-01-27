import 'package:flutter/material.dart';
import 'package:no_screenshot/no_screenshot.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _noScreenshot = NoScreenshot.instance;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('NoScreenShot Plugin app'),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              child: const Text('Press to toggle screenshot'),
              onPressed: () async {
                final result = await _noScreenshot.toggleScreenshot();
                debugPrint(result.toString());
              },
            ),
            ElevatedButton(
              child: const Text('Press to turn off screenshot'),
              onPressed: () async {
                final result = await _noScreenshot.screenshotOff();
                debugPrint(result.toString());
              },
            ),
            ElevatedButton(
              child: const Text('Press to turn on screenshot'),
              onPressed: () async {
                final result = await _noScreenshot.screenshotOn();
                debugPrint(result.toString());
              },
            ),
          ],
        )),
      ),
    );
  }
}
