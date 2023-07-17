import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  static String name = 'progress_screen';
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Progress Screen'),
      ),
      body: const _ProgressView(),
    );
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 20.0,
          ),
          Text('Circular Progress Indicator'),
          SizedBox(
            height: 20.0,
          ),
          CircularProgressIndicator(
            strokeWidth: 2.0,
            color: Colors.red,
            backgroundColor: Colors.white,
          ),
          SizedBox(
            height: 20.0,
          ),
          Text('Progress Indicator Controlado'),
          SizedBox(
            height: 20.0,
          ),
          _ControlledProgressIndicator(),
        ],
      ),
    );
  }
}

class _ControlledProgressIndicator extends StatelessWidget {
  const _ControlledProgressIndicator();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: Stream.periodic(const Duration(milliseconds: 300),
            (int value) => (value * 2) / 100).takeWhile((value) => value < 100),
        builder: (context, snapshot) {
          final progressValue = snapshot.data ?? 0;
          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(
                  value: progressValue,
                  strokeWidth: 2.0,
                  color: Colors.red,
                  backgroundColor: Colors.white,
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Expanded(
                    child: LinearProgressIndicator(
                  value: progressValue,
                ))
              ],
            ),
          );
        });
  }
}
