import 'package:flutter/material.dart';

class roundButton extends StatelessWidget {
  final String title;
  final VoidCallback onpressed;
  roundButton({required this.title, required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(10),
      clipBehavior: Clip.antiAlias,
      child: MaterialButton(

        color: Colors.deepPurple,
        minWidth: double.infinity,
        height: 50,
        child: Text(title, style: TextStyle(color: Colors.white),),
        onPressed: onpressed,
      ),
    );
  }
}
