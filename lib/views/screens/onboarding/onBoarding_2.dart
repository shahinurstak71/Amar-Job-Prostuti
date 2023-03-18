import 'package:amar_jobprostuti/units/const.dart';
import 'package:amar_jobprostuti/views/screens/home_screen.dart';
import 'package:amar_jobprostuti/views/screens/onboarding/onBoarding_2.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'onBoarding_3.dart';

class OnBoardingTwo extends StatelessWidget {
  const OnBoardingTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    AppDetails data = AppDetails();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/927819.jpg'),
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
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.arrow_back_ios_new,
                            color: Colors.white,
                          )),
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Lottie.asset(
                          data.onBoard_2,
                          width: size <600 ? 250 : 320,
                          animate: true,
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Text(
                        data.onBoardTitle_2,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: size <600?30:50,
                            fontWeight: FontWeight.w100,
                            fontFamily: 'Sabbir'),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        data.onBoardSubTitle_2,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: size <600? 18:25,
                            fontWeight: FontWeight.w100,
                            fontFamily: 'Maina'),
                      ),
                      Text(
                        data.onBoardSubTitle_2_2,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: size <600? 18 : 25,
                            fontWeight: FontWeight.w100,
                            fontFamily: 'Maina'),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size <600? 70 : null,
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
                                          const OnBoardingThree()));
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
