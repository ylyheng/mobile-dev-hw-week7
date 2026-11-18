import 'package:flutter/material.dart';

List<String> images = [
  "assets/bird.jpg",
  "assets/bird2.jpg",
  "assets/insect.jpg",
  "assets/girl.jpg",
  "assets/man.jpg",
];

void main() => runApp(
  const MaterialApp(debugShowCheckedModeBanner: false, home: ImageViewer()),
);

class ImageViewer extends StatefulWidget {
  const ImageViewer({super.key});

  @override
  State<ImageViewer> createState() => _ImageViewerState();
}

class _ImageViewerState extends State<ImageViewer> {
  int imageNumber = 0;

  void previousImage() {
    setState(() {
      if (imageNumber == 0) {
        imageNumber = images.length - 1;
      } else {
        imageNumber--;
      }
    });
  }

  void nextImage() {
    setState(() {
      if (imageNumber == images.length - 1) {
        imageNumber = 0;
      } else {
        imageNumber++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        title: const Text('Image viewer'),
        actions: [
          IconButton(
            icon: const Icon(Icons.navigate_before),
            tooltip: 'Go to the previous image',
            onPressed: previousImage,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 50),
            child: IconButton(
              icon: const Icon(Icons.navigate_next),
              tooltip: 'Go to the next image',
              onPressed: nextImage,
            ),
          ),
        ],
      ),
      body: SizedBox.expand(
        child: Image.asset(images[imageNumber], fit: BoxFit.cover),
      ),
    );
  }
}
