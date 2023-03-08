import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:project/units/const.dart';

class FirstOnBoarding extends StatelessWidget {
  const FirstOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDetails data = AppDetails();
    return Center(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          actions: [
            TextButton(onPressed: (){}, child: const Text('Skip', style: TextStyle(
              color: Colors.black,
              fontSize: 15
            ),))
          ],
        ),
        body: Center(
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Lottie.asset(data.onBoard_1,
                animate: false,
                width: MediaQuery.of(context).size.width - 100,
              ),
              Column(
                children: [
                  Text(data.onBoardTitle_1,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                    ),),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(data.onBoardSubTitle_1,
                    style: TextStyle(
                        color: data.black.withOpacity(0.5),
                        fontSize: 16
                    ),),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    height: 15,
                    width: 15,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.1),
                      shape: BoxShape.circle
                    ),
                  ),

                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    height: 15,
                    width: 15,
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.1),
                        shape: BoxShape.circle
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    height: 15,
                    width: 15,
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.1),
                        shape: BoxShape.circle
                    ),
                  ),
                ],
              )
            ],
          )
        ),
      ),
    );
  }
}
