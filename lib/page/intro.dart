import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:animate_do/animate_do.dart';
import 'package:miniproject_putra/page/page.dart';

class IntroScreen extends StatelessWidget {
  final Duration duration = const Duration(milliseconds: 800);

  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.lightBlue,
        body: Container(
          margin: const EdgeInsets.all(8),
          width: size.width,
          height: size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ///
              FadeInUp(
                duration: duration,
                delay: const Duration(milliseconds: 2000),
                child: Container(
                  margin: const EdgeInsets.only(
                    top: 50,
                    left: 5,
                    right: 5,
                  ),
                  width: size.width,
                  height: size.height / 2,
                  child: Lottie.network(
                      "https://assets8.lottiefiles.com/packages/lf20_5tvcbbnr.json",
                      height: 400,
                      animate: true),
                ),
              ),

              ///
              const SizedBox(
                height: 15,
              ),

              /// TITLE
              FadeInUp(
                duration: duration,
                delay: const Duration(milliseconds: 1600),
                child: const Text(
                  "Mari Kita Belajar Doa Sehari-hari",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),

              ///
              const SizedBox(
                height: 10,
              ),

              /// SUBTITLE
              FadeInUp(
                duration: duration,
                delay: const Duration(milliseconds: 1000),
                child: const Text(
                  "Sebelum Melanjutkan, Silahkan klik masuk terlebih dahulu",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      height: 1.2,
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w300),
                ),
              ),

              ///
              Expanded(child: Container()),

              //
              FadeInUp(
                duration: duration,
                delay: const Duration(milliseconds: 600),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => MainPage()));
                  },
                  child: GestureDetector(
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text(
                          "Masuk Yuk!!",
                          style: TextStyle(
                            color: Colors.lightBlue,
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SButton extends StatelessWidget {
  const SButton({
    Key? key,
    required this.size,
    required this.color,
    required this.borderColor,
    required this.img,
    required this.text,
    required this.textStyle,
  }) : super(key: key);

  final Size size;
  final Color color;
  final Color borderColor;
  final String img;
  final String text;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: size.width / 1.2,
        height: size.height / 15,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: borderColor, width: 1)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              img,
              height: 40,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              text,
              style: textStyle,
            ),
          ],
        ),
      ),
    );
  }
}
