import 'package:amar_jobprostuti/data/category_data.dart';
import 'package:amar_jobprostuti/units/const.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../widgets/custom_app_bar.dart';
const List<String> list = <String>[ "✨ ক্যাটাগরি নির্বাচন করুন ✨", "✨ বিষয় নির্বাচন করুন ✨",];

bool dropdownValue = true;

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
                image: NetworkImage(
                    'https://preview.redd.it/k35gae3somo41.png?auto=webp&s=07154e8f6b16a8480a5106f2cd62d3f12197f061'),
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
                                  fontSize: 15),
                            )),
                      ),
                    ),
                    // Slider End //
                    const SizedBox(
                      height: 20,
                    ),
                    // Category Start //

                    DropdowmWidgets(data: data.selectCategory.toString()),
                    // Text(
                    //   data.selectCategory,
                    //   style: const TextStyle(
                    //       color: Colors.white,
                    //       fontWeight: FontWeight.bold,
                    //       fontSize: 25),
                    // ),


                    // {dropdownValue ? Colors.transparent : Colors.red,},
                    // dropdownValue = "✨ ক্যাটাগরি নির্বাচন করুন ✨"
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
                                                child: Lottie.asset(categoryList[index]['image'],

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
                                                  color: Colors.white.withOpacity(0.2),
                                                  blurRadius: 15
                                              )
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
                    ],

                    // Category End //
                  // ],
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
    );
  }
}

class DropdowmWidgets extends StatefulWidget {
  const DropdowmWidgets({Key? key, this.data,  this.dropdownvalue }) : super(key: key);

  final data;
// this.bgColor, this.textStyle, this.callback
  final String? dropdownvalue ;
// final TextStyle? textStyle;
// final VoidCallback? callback;
  @override
  State<DropdowmWidgets> createState() => _DropdowmWidgetsState( data, dropdownvalue );
}

class _DropdowmWidgetsState extends State<DropdowmWidgets> {

  var data;
  var dropdownvalue;
  // const DropdowmWidgets({Key? key, required this.btnName, this.iconName, this.bgColor, this.textStyle, this.callback}) : super(key: key);


  // late final List items;

  _DropdowmWidgetsState (this.data, this.dropdownvalue );

  var items = [
    {"label": "✨ ক্যাটাগরি নির্বাচন করুন ✨", "value": true},
    {"label": "✨ বিষয় নির্বাচন করুন ✨", "value": false},
  ];
  String? selectedMaterialStatus = '✨ ক্যাটাগরি নির্বাচন করুন ✨';
  @override
  Widget build(BuildContext context) {

    print(data);
    return

      DropdownButtonHideUnderline(
        child: DropdownButtonFormField2(
          isExpanded: true,
          isDense: true,
          hint: Row(
            children: const [

              Expanded(
                child: Text(
                  '✨ ক্যাটাগরি নির্বাচন করুন ✨',
                  style:  TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
                  // overflow: TextOverflow.ellipsis,
                ),

            ],
          ),
          items: items.map((item) {
            return DropdownMenuItem(
              child: Text(item['label'].toString(),
                  style:  TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25)
              ),
              value: item['value'].toString(),
            );
          }).toList(),
          iconStyleData: const IconStyleData(
            icon: Icon(
              Icons.arrow_drop_down,
            ),
            iconSize: 14,
            iconEnabledColor: Colors.white,
            iconDisabledColor: Colors.grey,
          ),

          dropdownStyleData: DropdownStyleData(
              // maxHeight: 200,
              // width: 200,
              padding: null,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: Colors.deepPurple,
              ),

          ),


          onChanged: (value) {
            setState(() {
              selectedMaterialStatus = value as String;
              dropdownValue = value as bool;
            });
          },

        ),
      );
  }
}


// DropdownButton<String>(
// value: dropdownvalue,
// icon: const Icon(Icons.arrow_drop_down, color: Colors.white,),
// dropdownColor: Colors.deepPurple,
// items: list.map<DropdownMenuItem<String>>((String value) {
// return DropdownMenuItem<String>(
// value: value,
//
// child: Text(value, style: TextStyle(
// // backgroundColor: Colors.deepPurple,
// color: Colors.white,
// fontSize: 25
// ),),
// );
// }).toList(),
// hint:Text(
// data,
// style: const TextStyle(
// color: Colors.white,
// fontWeight: FontWeight.bold,
// fontSize: 25),
// ),
// onChanged: (String? newValue) {
// setState(() {
// dropdownValue = newValue!;
// dropdownvalue = newValue!;
// });
// },);




// class DropdowmWidget extends StatefulWidget {
//   const DropdowmWidget({Key? key, this.data}) : super(key: key);
//   final String? data;
//   @override
//   State<DropdowmWidget> createState() => _DropdowmWidgetState(data);
// }
//
// class _DropdowmWidgetState extends State<DropdowmWidget> {
//   String dropdownValue = list.first;
//   var data;
//   var dropdownvalue;
//
//   _DropdowmWidgetState(data);
//   @override
//   Widget build(BuildContext context) {
//     print(data);
//     return DropdownButton<String>(
//       value: dropdownValue,
//       icon: const Icon(Icons.arrow_drop_down, color: Colors.white,),
//       elevation: 16,
//       style: const TextStyle(color: Colors.white),
//       // hint: Text(
//       //   data,

//       onChanged: (String? value) {
//         // This is called when the user selects an item.
//         setState(() {
//           dropdownValue = value!;
//         });
//       },
//       items: list.map<DropdownMenuItem<String>>((String value) {
//         return DropdownMenuItem<String>(
//           value: value,
//           child: Text(value, style: TextStyle(
//             color: Colors.white,
//             fontSize: 25
//           ),),
//         );
//       }).toList(),
//     );
//   }
// }


