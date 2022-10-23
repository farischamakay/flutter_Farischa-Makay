import 'package:flutter/material.dart';

class AnimationTask extends StatefulWidget {
  static const nameRoute = '/task01';
  const AnimationTask({super.key});

  @override
  State<AnimationTask> createState() => _AnimationTaskState();
}

class _AnimationTaskState extends State<AnimationTask> {
  bool _isBig = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation Task'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _isBig = !_isBig;
                  });
                },
                child: const Text('Resize')),
            AnimatedContainer(
              duration: const Duration(
                milliseconds: 500,
              ),
              color: Colors.purple,
              width: _isBig ? 200 : 100,
              height: _isBig ? 200 : 100,
            ),
          ],
        ),
      ),
    );
  }
}
