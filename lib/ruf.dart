import 'package:flutter/material.dart';
import 'package:screenshot/screenshot.dart';
import 'package:shaped_image/shaped_image.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScreenshotController screenshotController = ScreenshotController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ShapedImage(
                imageTye: ImageType.NETWORK,
                path: 'https://resize.indiatvnews.com/en/resize/newbucket/730_-/2023/06/nature-1686808887.jpg',
                shape: Shape.SHAPE08,
                width: 200,
                height: 200),
            ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                      (Route<dynamic> route) => false,
                );
                // setState(() {
                //
                // });
              },
              child: const Text("Press"),
            ),
          ],
        ),
      ),
    );
  }
}
