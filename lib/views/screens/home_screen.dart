import 'package:amar_jobprostuti/data/category_data.dart';
import 'package:amar_jobprostuti/units/const.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../widgets/custom_app_bar.dart';

class HomeScreen extends StatelessWidget {



  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int? select;

    final mediaSize = MediaQuery.of(context).size;
    final AppDetails data = AppDetails();
    final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
    return Scaffold(
      key: _drawerKey,
      body: SingleChildScrollView(
        child: Container(
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
          ),
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
                      customAppBar(context, mediaSize, data, _drawerKey),
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
                                fontSize: 15),
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
                      SizedBox(
                        height: 600,
                        child: GridView.builder(
                          clipBehavior: Clip.none,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  childAspectRatio: 1.1,
                                  crossAxisSpacing: 30,
                                  mainAxisSpacing: 30),
                          itemCount: 6,
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
                      ),
                      // Category End //
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      drawer:  Drawer(
        width: MediaQuery.of(context).size.width * 0.7,
        child: Column(
          children: [
            Container(
              height: 250,
              width: MediaQuery.of(context).size.width,
               decoration: BoxDecoration(
                 image: DecorationImage(
                     fit: BoxFit.fill,
                     image: AssetImage("assets/images/bgImage.png",

                 )),



               ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: CircleAvatar(
                        backgroundColor: Colors.white,

                        backgroundImage:  AssetImage("assets/icons/myAccount.png"),

                         radius: 70,
                     ),
                   ),

                   ListTile(
                     title: Text("Mohammad",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w200)),
                     subtitle: Row(
                       children: [
                              Text("Free Plan",style:TextStyle(color: Colors.white) ),
                               Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: Icon( Icons.next_plan,color: Colors.white,),
                               )
                       ],
                     ),
                   ),





                ],
              ),
              
              
            ),

            ListView(
              primary: false,
              shrinkWrap: true,

              children: [
                GestureDetector(
                  child: ListTile(
                    leading: Icon(Icons.subscriptions_outlined,color: Colors.blue),
                    title: Text("SUBSCRIPTION",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                  ),
                ),
                Divider(
                  thickness: 1,
                  color: Colors.black.withOpacity(0.3),
                ),


                 GestureDetector(
                   child: ListTile(
                    leading: Icon(Icons.payment,color: Colors.blue),
                    title: Text("WAITING PAYMENT",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                ),
                 ),
                Divider(
                  thickness: 1,
                  color: Colors.black.withOpacity(0.3),
                ),

                 GestureDetector(
                   child: ListTile(
                    leading: Icon(Icons.notifications_active,color: Colors.blue),
                    title: Text("NOTICE",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                ),
                 ),
                Divider(
                  thickness: 1,
                  color: Colors.black.withOpacity(0.3),
                ),

                 GestureDetector(
                   child: ListTile(
                    leading: Icon(Icons.library_books_sharp,color: Colors.blue),
                    title: Text("MERIT LIST",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                ),
                 ),
                Divider(
                  thickness: 1,
                  color: Colors.black.withOpacity(0.3),
                ),

                 GestureDetector(
                   child: ListTile(
                    leading: Icon(Icons.insert_drive_file,color: Colors.blue),
                    title: Text("RECENT INFORMATION",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                ),
                 ),
                Divider(
                  thickness: 1,
                  color: Colors.black.withOpacity(0.3),
                ),

                 GestureDetector(
                   child: ListTile(
                    leading: Icon(Icons.edit_calendar,color: Colors.blue),
                    title: Text("EDITORIAL",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                ),
                 ),
                Divider(
                  thickness: 1,
                  color: Colors.black.withOpacity(0.3),
                ),



                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ExpansionTile(

                    backgroundColor: data.mainColor1,
                    iconColor: Colors.red,
                      collapsedIconColor: Colors.white,
                      collapsedBackgroundColor: Colors.black,
                      leading: Icon(Icons.menu_book_sharp,color: Colors.blue),
                    title: Text("QUESTION ARCHIVED",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),

                    children: [

                      GestureDetector(
                        onTap: (){

                        },
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text("BCS QUESTION",style: TextStyle(color: Colors.white)),
                        ),
                      ),
                     Divider(
                       thickness: 1,
                       color: Colors.black.withOpacity(0.3),
                     ),


                       GestureDetector(
                         onTap: (){

                         },
                         child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text("BANK QUESTION",style: TextStyle(color: Colors.white)),
                      ),
                       ),
                     Divider(
                       thickness: 1,
                       color: Colors.black.withOpacity(0.3),
                     ),


                       GestureDetector(
                         onTap: (){

                         },
                         child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text("JOB SOLUTION QUESTION",style: TextStyle(color: Colors.white)),
                      ),
                       ),
                     Divider(
                       thickness: 1,
                       color: Colors.black.withOpacity(0.3),
                     ),

                       GestureDetector(
                         onTap: (){

                         },
                         child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text("PRIMARY QUESTION",style: TextStyle(color: Colors.white)),
                      ),
                       ),
                      Divider(
                        thickness: 1,
                        color: Colors.black.withOpacity(0.3),
                      ),
                   ],
                  ),
                ),



                // new
              ],
            ),

          ],
        ),
      ),
    );
  }
}
