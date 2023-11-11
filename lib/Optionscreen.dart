import 'package:blog/Components/button.dart';
import 'package:blog/Viewscreen/LoginUI.dart';
import 'package:blog/Viewscreen/SignUp.dart';
import 'package:flutter/material.dart';

class optionscreen extends StatelessWidget {
  const optionscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/bookimage.jpg'),
              SizedBox(
                height: 10,
              ),
              roundButton(title:'Login', onpressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>loginUI()));
              }),
              SizedBox(
                height: 20,
              ),
              roundButton(title: 'Signup', onpressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>SignUp()));
              })
            ],
          ),
        ),
      ),
    );
  }
}
