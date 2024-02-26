import 'package:flutter/material.dart';
import 'package:ican_app/views/android_view.dart';
import 'package:ican_app/views/widgets/custom_social_avatar.dart';

class WebViewSection extends StatelessWidget {
  const WebViewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.yellow[600],
        title: const Text('Web Services '),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            AndroidPhotoIosWeb(imagesectiontitle: 'Web Application'),
            SizedBox(
              height: 12,
            ),
            DescriptionTopic(topic: 'Web Application'),
              Padding(
              padding: EdgeInsets.all(8.0),
              child: CustomSocialAvatar(),
            ),
            SizedBox(height: 15,)
          ],
        ),
      ),
    );
  }
}
