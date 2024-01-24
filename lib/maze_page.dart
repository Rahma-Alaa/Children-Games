import 'package:flutter/material.dart';
import 'package:maze/maze.dart';

class MazePage extends StatefulWidget {
  const MazePage(BuildContext context, {super.key});

  @override
  State<MazePage> createState() => _MazePageState();
}

class _MazePageState extends State<MazePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[50],
      appBar: AppBar(title: const Center(child: Text("المتاهة",style: TextStyle(color: Colors.white,fontFamily: "CairoBold",fontSize: 30),)),
      backgroundColor:  Colors.purple,
      shadowColor: Colors.black,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
      elevation: 5,
      ),
      body: SafeArea(
            child: Maze(
                
                player: MazeItem(
                    'assets/images/rabbit.png',
                    ImageType.asset),
                
                   
                columns: 9,
                rows: 12,
                wallThickness: 4.0,
                wallColor: Theme.of(context).primaryColor,
                finish: MazeItem(
                    'assets/images/carrot.png',
                    ImageType.asset),
                onFinish: () => print('Hi from finish line!'))
                
                ),
    );
  }
}