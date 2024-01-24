import 'package:flutter/material.dart';

class MindMap extends StatelessWidget {
  const MindMap(BuildContext context, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 215, 229, 243),
      appBar: AppBar(
        title: const Center(child: Text("خرائط ذهنية",style: TextStyle(color: Colors.white,fontFamily: "CairoBold",fontSize: 30),)),
        backgroundColor: const Color(0xFF71b8ff),
        shadowColor: Colors.black,
       shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
       elevation: 5,
      ),
    );
  }
}
