import 'package:flutter/material.dart';
import 'package:ican_app/views/android_view.dart';

class IosViewSection extends StatelessWidget {
  const IosViewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text('Ios Services '),
      ),
      body: const Column(
        children: [
            DescriptionTopic()
        ],
      ),
    );
  }
}