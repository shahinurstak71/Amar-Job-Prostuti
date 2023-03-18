import 'package:amar_jobprostuti/units/const.dart';
import 'package:amar_jobprostuti/views/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OnBoardingThree extends StatelessWidget {
  const OnBoardingThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 50,
                      ),
                      Text(
                        data.onBoardTitle_3,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: size.width<600?35:50,
                            fontWeight: FontWeight.w100,
                            fontFamily: 'Sabbir'),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        data.onBoardSubTitle_3,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: size.width<600?20:30,
                            fontWeight: FontWeight.w100,
                            fontFamily: 'Maina'),
                      ),
                      Text(
                        data.onBoardSubTitle_3_2,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: size.width<600?20:30,
                            fontWeight: FontWeight.w100,
                            fontFamily: 'Maina'),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.width<600?30:null,
                  ),
                  Lottie.asset(
                      data.onBoard_1,
                      width: size.width<600?250:300,
                      animate: true,
                  ),
                  SizedBox(
                    height: size.width<600?70:30,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeScreen()));
                    },
                    child: Container(
                      height: 50,
                      width: size.width * 0.75,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.white),
                          boxShadow: const [
                            BoxShadow(color: Colors.white, blurRadius: 10)
                          ],
                          borderRadius: BorderRadius.circular(15)),
                      child: Center(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            'শুরু করুন',
                            style: TextStyle(
                                color: Colors.blue,
                                fontFamily: 'Sabbir',
                                fontSize: 25),
                          ),
                        ],
                      )),
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
