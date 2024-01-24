import 'package:audioplayers/audioplayers.dart';
import 'package:children_games/homepage.dart';
import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:maze/maze.dart';

class MazeDesk extends StatefulWidget {
  const MazeDesk(BuildContext context, {super.key});

  @override
  State<MazeDesk> createState() => _MazeDeskState();
}

class _MazeDeskState extends State<MazeDesk> {
  final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[50],
      appBar: AppBar(title: const Center(child: Text("المتاهة",style: TextStyle(color: Colors.white,fontFamily: "CairoBold",fontSize: 30),)),
      backgroundColor:  Colors.purple,
      shadowColor: Colors.black,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
      elevation: 5,
        leading: IconButton(
          onPressed: (){
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => HomePage(context)));
          },
          icon:const Icon(Icons.arrow_back_rounded,
          color: Colors.white,),
        ),

      ),
      body: Stack(
        children: [
          SafeArea(
            child: Maze(
                player: MazeItem(
                  'assets/images/cat.png',
                  ImageType.asset,),
                columns: 18,
                rows: 9,
                wallThickness: 4.0,
                wallColor: Theme.of(context).primaryColor,
                finish: MazeItem(
                    'assets/images/mouse.png',
                    ImageType.asset),
                onFinish: () { player.play(UrlSource('assets/audio/wow.mp3'));
                showDialog(context: context, builder: (_) =>
                    AlertDialog(
                      title: Center(child: const Text ('Congratulations 🎉')),
                      actions: <Widget>[TextButton(
                        child: const Text("New Game"),
                        onPressed: () {
                          player.play(UrlSource('assets/audio/success.mp3'));
                          Get.off(() =>  Maze2(context));
                        },
                      )
                      ],
                    ),
                );
                }
            )
          ),
        ],
      ),
    );
  }
}

class Maze2 extends StatefulWidget {
  const Maze2(BuildContext context, {super.key});

  @override
  State<Maze2> createState() => _Maze2State();
}

class _Maze2State extends State<Maze2> {
  final player = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: Colors.purple[50],
          appBar: AppBar(title: const Center(child: Text("المتاهة",style: TextStyle(color: Colors.white,fontFamily: "CairoBold",fontSize: 30),)),
            backgroundColor:  Colors.purple,
            shadowColor: Colors.black,
            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
            elevation: 5,
            leading: IconButton(
              onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => HomePage(context)));
              },
              icon:const Icon(Icons.arrow_back_rounded,
                color: Colors.white,),
            ),
          ),
          body: SafeArea(
            child: Maze(

                player: MazeItem(
                  'assets/images/cat.png',
                  ImageType.asset,),
                columns: 18,
                rows: 9,
                wallThickness: 4.0,
                wallColor: Theme.of(context).primaryColor,
                finish: MazeItem(
                    'assets/images/mouse.png',
                    ImageType.asset),
                onFinish: (
                    )  { player.play(UrlSource('assets/audio/wow.mp3'));
                  showDialog(context: context, builder: (_) =>
                    AlertDialog(
                      title: Center(child: const Text ('Congratulations 🎉')),
                      actions: <Widget>[TextButton(
                        child: const Text("New Game"),
                        onPressed: () {
                          player.play(UrlSource('assets/audio/success.mp3'));
                          Get.off(() =>  MazeDesk(context));
                        },
                      )
                      ],
                    ),
                );}
            ),

          ),
        ),
      ],
    );
  }
}