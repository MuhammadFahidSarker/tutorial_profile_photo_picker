import 'dart:io';

import 'package:flutter/material.dart';
import 'package:profile_photo_chooser/profile_photo_chooser.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String? path;

  void choosePhoto(BuildContext context) async {
    final pickedFile = await pickAnImage();
    if (pickedFile == null) {
      return;
    }

    final path = pickedFile.path;

    final croppedFile = await cropImage(path);

    if (croppedFile == null) {
      return;
    }

    setState(() {
      this.path = croppedFile.path;
    });
  }

  @override
  Widget build(BuildContext context) {
    final path = this.path;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (path != null)
              SizedBox(
                height: 150,
                width: 150,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10000),
                  child: Image.file(
                    File(
                      path,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ElevatedButton(
              child: const Text('Choose Profile Photo'),
              onPressed: () => choosePhoto(context),
            ),
          ],
        ),
      ),
    );
  }
}
