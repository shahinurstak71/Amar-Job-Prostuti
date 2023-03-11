import 'package:amar_jobprostuti/units/const.dart';
import 'package:amar_jobprostuti/views/screens/home_screen.dart';
import 'package:amar_jobprostuti/views/screens/onboarding/onBoarding_2.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OnBoardingOne extends StatelessWidget {
  const OnBoardingOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDetails data = AppDetails();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/splash_bg.jpg'),
                  opacity: 0.5,
                  fit: BoxFit.fill)),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Spacer(),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomeScreen()));
                        },
                        child: const Text(
                          'এরিয়ে যান',
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontFamily: 'Maina'),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        data.onBoardTitle_1,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w100,
                            fontFamily: 'Sabbir'),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        data.onBoardSubTitle_1,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w100,
                            fontFamily: 'Maina'),
                      ),
                      Text(
                        data.onBoardSubTitle_1_2,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w100,
                            fontFamily: 'Maina'),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Lottie.asset(data.onBoard_3, width: 300, animate: false),
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.yellow, width: 2),
                        shape: BoxShape.circle),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 75,
                        width: 75,
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                              color: Colors.white.withOpacity(0.2),
                              blurRadius: 5)
                        ], color: Colors.yellow, shape: BoxShape.circle),
                        child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const OnBoardingTwo()));
                            },
                            child: const Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: Colors.blue,
                            )),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
