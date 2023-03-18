import 'package:amar_jobprostuti/data/category_data.dart';
import 'package:amar_jobprostuti/units/const.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../widgets/custom_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaSize = MediaQuery.of(context).size;
    final AppDetails data = AppDetails();
    return Scaffold(

      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.deepPurple,
                Colors.purple,
              ],
            ),
            // This is Image
            image: DecorationImage(
                image: AssetImage('assets/images/k35gae3somo41.png'),
                fit: BoxFit.fill,
                opacity: 0.7)),
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics(),
                ),
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // AppBar Start //
                    customAppBar(mediaSize, data),
                    // App Bar End //
                    const SizedBox(
                      height: 20,
                    ),
                    // Slider Start //
                    Container(
                      height: mediaSize.width<600?50:60,
                      width: mediaSize.width,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.purple),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 20),
                        child: Center(
                            child: Text(
                          data.headerText,
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: mediaSize.width<600?15:25),
                        )),
                      ),
                    ),
                    // Slider End //
                    const SizedBox(
                      height: 20,
                    ),
                    // Category Start //
                    Text(
                      data.selectCategory,
                      style: TextStyle(
                        fontFamily: 'Sabbir',
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: mediaSize.width<600?26:40),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    GridView.builder(
                      primary: false,
                      shrinkWrap: true,
                      clipBehavior: Clip.none,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                      SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: mediaSize.width<600?2:3,
                          childAspectRatio: mediaSize.width<600? 1.0 : 1.7,
                          crossAxisSpacing: 30,
                          mainAxisSpacing: 30),
                      itemCount: categoryList.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 30.0),
                          child: Container(

                            decoration: BoxDecoration(
                              border:
                              Border.all(color: Colors.white, width: 2),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  blurRadius: 6,
                                )
                              ],
                              color: data.mainColor1,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Stack(
                              clipBehavior: Clip.none,
                              alignment: Alignment.center,
                              children: [
                                Positioned(
                                  top: -50,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.black
                                                  .withOpacity(0.3),
                                              blurRadius: 15)
                                        ],
                                        color: data.mainColor1,
                                        border: Border.all(
                                            color: Colors.white, width: 2),
                                        shape: BoxShape.circle),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Container(
                                        height: mediaSize.width<600? 100 : 125,
                                        width: mediaSize.width<600? 100 : 125,
                                        decoration: const BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.circle),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: ClipRRect(
                                            borderRadius:
                                            BorderRadius.circular(50),
                                            child: Lottie.asset(
                                              categoryList[index]['image'],
                                              animate: true,
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 10,
                                  child: Container(
                                    height: mediaSize.width<600?25: 30,
                                    width: mediaSize.width<600? 150 : 250,
                                    decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.white
                                                  .withOpacity(0.2),
                                              blurRadius: 15)
                                        ],
                                        color: Colors.white,
                                        borderRadius:
                                        BorderRadius.circular(30)),
                                    child: Center(
                                      child: Text(
                                        categoryList[index]['label'],
                                        style: TextStyle(
                                            color: Colors.purple,
                                            fontWeight: FontWeight.bold,
                                            fontSize: mediaSize.width<600?15:23),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),

                    // Category End //
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
