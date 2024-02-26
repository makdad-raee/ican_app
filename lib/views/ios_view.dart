import 'package:flutter/material.dart';
import 'package:ican_app/views/android_view.dart';
import 'package:ican_app/views/widgets/custom_social_avatar.dart';

class IosViewSection extends StatelessWidget {
  const IosViewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.yellow[600],
        title: const Text('Ios Services '),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            AndroidPhotoIosWeb(imagesectiontitle: 'Ios Application'),
            SizedBox(
              height: 12,
            ),
            DescriptionTopic(topic: 'Ios Application'),
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
