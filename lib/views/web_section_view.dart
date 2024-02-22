import 'package:flutter/material.dart';
import 'package:ican_app/views/android_view.dart';

class WebViewSection extends StatelessWidget {
  const WebViewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text('Web Services '),
      ),
      body: const Column(
        children: [
            DescriptionTopic()
        ],
      ),
    );
  }
}
