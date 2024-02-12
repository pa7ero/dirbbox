// ignore_for_file: prefer_const_constructors

import 'package:dirbbox/Views/profile_view.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Background
          // ignore: sized_box_for_whitespace
          Container(
              width: 500,
              child: Image.asset(
                'assets/images/bg.png',
                fit: BoxFit.cover,
              )),
          //Layer body
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 135,
                ),
                Container(
                  //color: Colors.black,
                  width: 200,
                  height: 200,
                  child: Image.asset(
                    'assets/images/page1.png',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                const Text(
                  'Welcome To',
                  style: TextStyle(fontSize: 20),
                ),
                const Text(
                  'Dirbbox',
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 200,
                  child: const Text(
                    'Best cloud storage platform for all business and individuals to manage there data\n\n Join For Free.',
                    style: TextStyle(fontSize: 13),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return ProfileView();
                        }));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/icons/FP.png'),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Smart ID'),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFEEF7FE),
                        fixedSize: Size(150, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Sign in',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.arrow_right_alt_sharp,
                            color: Color.fromARGB(253, 253, 251, 251),
                          ),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(220, 49, 55, 236),
                        fixedSize: Size(150, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Center(child: Text('Use Social Login')),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/icons/Instagram Logo.png'),
                    SizedBox(width: 60),
                    Image.asset('assets/icons/Twitter Logo.png'),
                    SizedBox(width: 60),
                    Image.asset('assets/icons/Facebook Logo.png'),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Center(child: Text('Create an Account')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
