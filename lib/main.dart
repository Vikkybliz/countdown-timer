import 'package:flutter/material.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  CountDownController _controller = CountDownController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          centerTitle: true,
          title: const Text('TIMER APP'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: CircularCountDownTimer(
                autoStart: false,
                controller: _controller,
                width: 200,
                height: 200,
                duration: 60,
                fillColor: Colors.blue,
                ringColor: Colors.red,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    _controller.start();
                  },
                  child: Text('Start'),
                ),
                ElevatedButton(
                  onPressed: () {
                    _controller.pause();
                  },
                  child: Text('Pause'),
                ),
                ElevatedButton(
                  onPressed: () {
                    _controller.resume();
                  },
                  child: Text('Resume'),
                ),
                ElevatedButton(
                  onPressed: () {
                    _controller.restart();
                  },
                  child: Text('Restart'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
