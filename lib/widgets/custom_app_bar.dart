import 'package:flutter/material.dart';
Widget customAppBar(Size mediaSize, data) {
  return Container(
    height: 60,
    width: mediaSize.width,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      border: Border.all(
          color: Colors.white
      ),
      boxShadow: [
        BoxShadow(
            color: Colors.white.withOpacity(0.3),
            blurRadius: 3,
            spreadRadius: 0.1)
      ],
      gradient: const LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          Colors.purple,
          Colors.deepPurpleAccent,
        ],
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.only(
        left: 10.0,
        right: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle
            ),
            child: IconButton(
              onPressed: (){},
              icon: const Icon(Icons.menu,
                color: Colors.black,
                size: 25,
              ),
            ),
          ),
          Text(data.appName, style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold
          ),),

          const CircleAvatar(
            backgroundImage: AssetImage('assets/icons/myAccount.png'),
          ),
        ],
      ),
    ),
  );
}