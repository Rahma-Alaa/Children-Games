import 'package:children_games/connect.dart';
import 'package:children_games/maze_desk.dart';
import 'package:children_games/mind_map.dart';
import 'package:children_games/puzzle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyDesktopBody extends StatelessWidget {
  const MyDesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Center(
              child: Text("D E S K T O P",
                  style: TextStyle(color: Colors.white, fontSize: 30))),
          backgroundColor: const Color.fromARGB(255, 255, 50, 119),
          shadowColor: Colors.black,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
          elevation: 5,
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Connect(context)));
                },
                child: Container(
                  margin: const EdgeInsets.only(
                      top: 100, bottom: 100, left: 40, right: 20),
                  decoration: BoxDecoration(
                    color: const Color(0xFFff6374),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(255, 161, 69, 69),
                        spreadRadius: 1,
                        blurRadius: 4,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      FittedBox(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5, right: 20),
                          child: Center(
                              child: SvgPicture.asset(
                                'assets/images/connect.svg',
                                width: 300,
                                height: 300,
                                fit: BoxFit.fitWidth,
                              )),
                        ),
                      ),

                      const FittedBox(
                        child: Text(
                          "توصيل",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "CairoBold",
                            fontSize: 40,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MindMap(context)));
                },
                child: Container(
                  margin: const EdgeInsets.only(
                      top: 100, bottom: 100, left: 20, right: 20),
                  decoration: BoxDecoration(
                    color: const Color(0xFF71b8ff),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(255, 57, 92, 126),
                        spreadRadius: 1,
                        blurRadius: 4,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      FittedBox(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5, right: 20),
                          child: Center(
                              child: SvgPicture.asset(
                                'assets/images/mindmap.svg',
                                width: 300,
                                height: 300,
                              )),
                        ),
                      ),

                      const FittedBox(
                        child: Text(
                          "خرائط ذهنية",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "CairoBold",
                            fontSize: 40,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(

              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MazeDesk(context)));
                },
                child: Container(
                  margin: const EdgeInsets.only(
                      top: 100, bottom: 100, left: 20, right: 20),
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(255, 50, 3, 57),
                        spreadRadius: 1,
                        blurRadius: 4,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FittedBox(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5, right: 20),
                          child: Center(
                              child: SvgPicture.asset(
                                'assets/images/maze.svg',
                                width: 300,
                                height: 300,
                              )
                          ),
                        ),
                      ),

                      const FittedBox(
                        child: Text(
                          "المتاهة",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "CairoBold",
                            fontSize: 40,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Puzzle(context)));
                },
                child: Container(
                  margin: const EdgeInsets.only(
                      top: 100, bottom: 100, left: 20, right: 40),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 254, 107, 49),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(255, 110, 61, 48),
                        spreadRadius: 1,
                        blurRadius: 4,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      const SizedBox(
                        height: 0.5,
                      ),

                      FittedBox(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5, right: 20),
                          child: Center(
                              child: SvgPicture.asset(
                                'assets/images/puzzle.svg',
                                width: 300,
                                height: 300,

                              )),
                        ),
                      ),

                      const FittedBox(
                        child: Text(
                          "الغاز",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "CairoBold",
                            fontSize: 40,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        )
    );
  }
}
