import 'package:blog/Viewscreen/LoginUI.dart';
import 'package:blog/Viewscreen/SignUp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  // void initState() {
  //   super.initState();
  //
  //   // Show the splash screen for 2 seconds.
  //   Future.delayed(Duration(seconds: 5), () {
  //     Navigator.pushReplacement(
  //       context,
  //       MaterialPageRoute(builder: (context) => loginUI()),
  //     );
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Education Blog Application ',
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 30 ) ,
            ),
            SizedBox(
              height: 30,
            ),
            Center(
                child: Container(
              alignment: Alignment.center,
              child: Image.asset('assets/bookimage.jpg'),
            )),
            SizedBox(height: 20,),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor:Colors.deepPurple,
                ),
                onPressed: (){
              Get.to(()=> SignUp());

            }, child: Text('Next Screen'))
          ],
        ));
  }
}
