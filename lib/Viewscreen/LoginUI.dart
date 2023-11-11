import 'package:flutter/material.dart';
import 'package:blog/Viewscreen/SignUp.dart';
import 'package:get/get.dart';

class loginUI extends StatelessWidget {
  loginUI({super.key});

  final nameController = TextEditingController();

  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Log In'),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
        ),
        backgroundColor: Colors.deepPurple,
        // bottomNavigationBar: BottomNavigationBar(items: [
        //   ],
        // ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(
                hintText: 'Name',
                prefixIcon: Icon(Icons.person),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                hintText: 'Email',
                prefixIcon: Icon(Icons.email),
              ),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
