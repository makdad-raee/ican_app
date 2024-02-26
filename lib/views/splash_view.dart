import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ican_app/views/company_view.dart';
import 'package:ican_app/views/home_view.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
    slidingAnimation.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: const CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 253, 216, 40),
                  radius: 24,
                  child: Icon(
                    FontAwesomeIcons.userGroup,
                    size: 18,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const CompanyView(),
                  ));
                },
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Image.asset(
                'assets/images/ican after edit.jpg',
                width: 250,
                height: 200,
                //  scale:1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 90),
              child: Container(
                height: 1,
                color: Colors.grey,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            SlideTransition(
                position: slidingAnimation,
                child: Text(
                  'Make your life Easier ',
                  style: GoogleFonts.aboreto(
                      fontWeight: FontWeight.w600, fontSize: 24),
                  textAlign: TextAlign.center,
                )),
            const SizedBox(
              height: 70,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 30,
                    backgroundImage: AssetImage(
                      'assets/images/instagram-1675670_1920.png',
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 30,
                    backgroundImage: AssetImage(
                      'assets/images/facebook-2935402_1280.png',
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Color.fromRGBO(249, 168, 37, 1),
                    radius: 30,
                    backgroundImage: AssetImage(
                      'assets/images/youtube-2433301_1920.png',
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Color.fromRGBO(249, 168, 37, 1),
                    radius: 30,
                    backgroundImage: AssetImage(
                      'assets/images/linked-in-2668700_1920.png',
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            SizedBox(
              width: 250.0,
              child: DefaultTextStyle(
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                ),
                child: AnimatedTextKit(
                  animatedTexts: [
                    FadeAnimatedText('Do IT!'),
                    FadeAnimatedText('Do it RIGHT!!'),
                    FadeAnimatedText('Do it RIGHT NOW!!!'),
                  ],
                  onTap: () {
                    // print("Tap Event");
                  },
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const HomeView(),
                  ));
                },
                child: Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    gradient: const LinearGradient(
                        colors: [Colors.black, Colors.black87, Colors.yellow],
                        begin: Alignment.centerLeft,
                        end: Alignment.topRight),
                  ),
                  child: Center(
                    child: DefaultTextStyle(
                      style: const TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.w500),
                      child: AnimatedTextKit(
                        animatedTexts: [
                          WavyAnimatedText(
                            'Lets Go',
                          ),
                          WavyAnimatedText('Lets Do it'),
                        ],
                        isRepeatingAnimation: true,
                        onTap: () {
                          print("Tap Event");
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
