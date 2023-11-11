import 'package:flutter/material.dart';



class SignUp extends StatelessWidget {
  SignUp({super.key});

  final nameController = TextEditingController();

  final emailController = TextEditingController();
String name ="",  email="";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Register Account '),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
        ),
        backgroundColor: Colors.deepPurple,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextFormField(
                  controller: nameController,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    hintText: 'Name',
                    prefixIcon: Icon(Icons.person),
                  ),
                  onChanged: (nameController){},
                  validator: (nameController){
                    return nameController!.isEmpty ? 'enter email' :null;
                  },
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: 'Email',
                    prefixIcon: Icon(Icons.email),
                  ),
                  onChanged: (emailController ){},
                  validator: (emailController ){
                    return emailController !.isEmpty ? 'enter email' :null;
                  },
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
