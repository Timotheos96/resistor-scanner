import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

import 'camera_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
        position: DecorationPosition.background,
        decoration: new BoxDecoration(
            image: new DecorationImage(
                image: new AssetImage("assets/images/bgImageRes.png"),
                fit: BoxFit.cover)),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xFFf8b195))),
                onPressed: () async {
                  await availableCameras().then(
                    (value) => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CameraPage(
                          cameras: value,
                        ),
                      ),
                    ),
                  );
                },
                child: const Text(
                  'Launch Camera',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xFF355c7d))),
                onPressed: () async {},
                child: const Text(
                  'Browse image',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
