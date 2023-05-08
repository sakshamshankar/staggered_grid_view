import 'package:flutter/material.dart';
import 'package:stag_gridview_task/images.dart';
import 'package:stag_gridview_task/wallPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Staggered Grid View'),
      ),
      body: WallPage(),
    );
  }
}
