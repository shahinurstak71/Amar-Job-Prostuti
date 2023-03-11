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
                      height: 70,
                      width: mediaSize.width,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.purple),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                            child: Text(
                          data.headerText,
                          textAlign: TextAlign.justify,
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 17),
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
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
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
                      const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 1.1,
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
                                        height: 85,
                                        width: 85,
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
                                              animate: false,
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
                                    height: 25,
                                    width: 120,
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
                                        style: const TextStyle(
                                            color: Colors.purple,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12),
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
      //
      // //
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: Colors.red,
      //   onPressed: (){},
      //   child: Icon(Icons.home, size: 30,),),
      //
      // bottomNavigationBar: SafeArea(
      //
      //   child: Container(
      //     margin: EdgeInsets.symmetric(horizontal: 24),
      //     padding: EdgeInsets.all(12),
      //     decoration: BoxDecoration(
      //       borderRadius: BorderRadius.circular(30),
      //       border: Border.all(
      //           color: Colors.white
      //       ),
      //       boxShadow: [
      //         BoxShadow(
      //             color: Colors.white.withOpacity(0.3),
      //             blurRadius: 3,
      //             spreadRadius: 0.1)
      //       ],
      //       gradient: const LinearGradient(
      //         begin: Alignment.topRight,
      //         end: Alignment.bottomLeft,
      //         colors: [
      //           Colors.purple,
      //           Colors.deepPurpleAccent,
      //         ],
      //       ),
      //     ),
      //     child: Row(
      //       crossAxisAlignment: CrossAxisAlignment.center,
      //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //       children: [
      //         SizedBox(
      //           height: 36,
      //           width: 36,
      //           child: Image.asset('assets/icons/home.png', color: Colors.white,),
      //         ),
      //         SizedBox(
      //           height: 36,
      //           width: 36,
      //           child: Image.asset('assets/icons/home.png', color: Colors.white,),
      //         ),
      //         SizedBox(
      //           height: 36,
      //           width: 36,
      //           child: Image.asset('assets/icons/home.png', color: Colors.white,),
      //         ),
      //         SizedBox(
      //           height: 36,
      //           width: 36,
      //           child: Image.asset('assets/icons/home.png', color: Colors.white,),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
      //

      bottomNavigationBar: Container(
        width: mediaSize.width,
        height: 80,

        child: Stack(
          children: [
            CustomPaint(
              size: Size(mediaSize.width, 80),
              painter: NavBarPainter(),
            )
          ],
        ),
      ),
    );
  }
}

class NavBarPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = Colors.black38..style = PaintingStyle.fill;
    Path path = Path()..moveTo(0, 20);
    path.quadraticBezierTo(size.width * 0.20, 0, size.width * 0.35, 0);
    path.quadraticBezierTo(size.width * 0.40, 0, size.width*0.30, 20);
    path.arcToPoint(Offset(size.width * 0.60, 20),
    radius: Radius.circular(10), clockwise: false
    );
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }

}