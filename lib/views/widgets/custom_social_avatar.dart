import 'package:flutter/material.dart';

class CustomSocialAvatar extends StatelessWidget {
  const CustomSocialAvatar({super.key,  this.radius=24});
  final double radius;

  @override
  Widget build(BuildContext context) {
    return   Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: radius,
                    backgroundImage: const AssetImage(
                      'assets/images/instagram-1675670_1920.png',
                    ),
                  ),
                  // Spacer(),
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: radius,
                    backgroundImage: AssetImage(
                      'assets/images/facebook-2935402_1280.png',
                    ),
                  ),
                  // Spacer(),
                  CircleAvatar(
                    backgroundColor: Color.fromRGBO(249, 168, 37, 1),
                    radius: radius,
                    backgroundImage: AssetImage(
                      'assets/images/youtube-2433301_1920.png',
                    ),
                  ),
                  // Spacer(),
                  CircleAvatar(
                    backgroundColor: Color.fromRGBO(249, 168, 37, 1),
                    radius: radius,
                    backgroundImage: AssetImage(
                      'assets/images/linked-in-2668700_1920.png',
                    ),
                  ),
                ],
              );
  }
}