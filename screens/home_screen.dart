import 'package:flutter/material.dart';
import 'package:project/data/category_data.dart';
import 'package:project/units/const.dart';
import '../widgets/navigation_bar.dart';
import '../widgets/notice_ticker.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDetails data = AppDetails();
    return Scaffold(
      // App Bar Start //
      appBar: AppBar(
        backgroundColor: data.mainColor,
        leading: const Icon(Icons.menu),
        actions: [
          Image.asset(
            data.accImage,
            width: 40,
          ),
          const SizedBox(
            width: 10,
          )
        ],
        elevation: 2,
      ),
      // App Bar End //
      //
      //
      // Body Start //
      body: Column(
        children: [
          // Top Banner Start //
          Container(
            height: 180,
            width: double.infinity,
            decoration: BoxDecoration(
                color: data.mainColor,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(100),
                  bottomRight: Radius.circular(100),
                )),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  data.headerImage,
                  width: 80,
                ),
                const SizedBox(
                  width: 5,
                ),
                SizedBox(
                  height: 170,
                  width: 300,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        data.headerText,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: data.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          // Top Banner End //
          const SizedBox(
            height: 20,
          ),
          // Notice Ticker Start //
          // noticeTicker(data.noticeText,
          //   data.noticeTicker,
          // data.noticeImage
          // ),
          // Notice Ticker End //
          const SizedBox(
            height: 20,
          ),
          // Category Section Start //
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SizedBox(
              height: 270,
              width: double.infinity,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 150,
                  childAspectRatio: 2 / 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                itemCount: categoryList.length,
                itemBuilder: (BuildContext ctx, index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: categoryList[index]['color'],
                      boxShadow: [
                        BoxShadow(
                            color: data.black.withOpacity(0.1),
                            offset: Offset.zero,
                            blurRadius: 10,
                            spreadRadius: 0.1)
                      ],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            categoryList[index]['icon'],
                            width: 50,
                          ),
                          Text(
                            categoryList[index]['label'],
                            style: TextStyle(
                              color: data.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          // Category Section End //
          const SizedBox(
            height: 40,
          ),
          // Free Exam Button
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 10,
              shadowColor: data.mainColor,
              padding: const EdgeInsets.only(
                  left: 30, right: 30, top: 10, bottom: 10),
              backgroundColor: data.mainColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onPressed: () {},
            child: Text(
              data.examButtonText,
              style: TextStyle(color: data.white, fontSize: 25),
            ),
          ),
        ],
      ),
      // Body End //
      //
      //
      // Bottom Navigation Start //
      floatingActionButton: floatBarPro(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: navBarPro(),
      // Bottom Navigation End //
    );
  }
}
