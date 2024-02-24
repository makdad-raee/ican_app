import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ican_app/views/home_view.dart';

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Image.asset(
              'assets/images/ican after edit.jpg',
              width: 200,
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
          OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: const BorderSide(
                    width: 3.0, color: Color.fromARGB(255, 252, 200, 71)),
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>const HomeView(),
                ));
              },
              child: Text('Start Browsing',
                  style: GoogleFonts.aboreto(
                      color: Colors.black, fontWeight: FontWeight.w600))),
        ],
      ),
    );
  }
}
