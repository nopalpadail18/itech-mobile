import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:itech/screens/home_screen.dart';
import 'package:itech/screens/naviation_screen.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({super.key});

  final introKey = GlobalKey<IntroductionScreenState>();

  @override
  Widget build(BuildContext context) {
    final pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w700,
      ),
      bodyTextStyle: TextStyle(fontSize: 19),
      bodyPadding: EdgeInsets.fromLTRB(16, 0, 16, 16),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );
    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      pages: [
        PageViewModel(
            title: "Mobile Apps",
            body: "Mau Buat Aplikasi Mobile Apa Aja ? Di ITECH Sekarang",
            image: Image.asset(
              'assets/images/mobile.png',
              width: 200,
            ),
            decoration: pageDecoration),
        PageViewModel(
            title: "Website Apps",
            body: "Mau Buat Website Apa Aja ? Di ITECH Sekarang",
            image: Image.asset(
              'assets/images/web.png',
              width: 200,
            ),
            decoration: pageDecoration),
        PageViewModel(
          title: "Artificial Intelligence",
          body: "Mau Buat Aplikasi Berbasis AI  ? Di ITECH Sekarang",
          image: Image.asset(
            'assets/images/ai.png',
            width: 200,
          ),
          decoration: pageDecoration,
          footer: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 50),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NavigationScreen()));
              },
              child: const Text("Get Started",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18)),
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(55),
                  backgroundColor: const Color(0xFF4f4fda),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  )),
            ),
          ),
        ),
      ],
      showSkipButton: false,
      showDoneButton: false,
      showBackButton: true,
      back: const Text(
        "Back",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      next: const Text(
        "Next",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      onDone: () {},
      onSkip: () {},
      dotsDecorator: DotsDecorator(
        size: const Size.square(10.0),
        activeSize: const Size(20.0, 10.0),
        activeColor: const Color(0xFF4f4fda),
        color: Colors.black26,
        spacing: const EdgeInsets.symmetric(horizontal: 3),
        activeShape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      ),
    );
  }
}
