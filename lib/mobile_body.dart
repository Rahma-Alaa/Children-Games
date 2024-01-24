import 'package:children_games/connect.dart';
import 'package:children_games/maze_page.dart';
import 'package:children_games/mind_map.dart';
import 'package:children_games/puzzle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyMobileBody extends StatelessWidget {
  const MyMobileBody({super.key});

  @override
  Widget build(BuildContext context) {
    var padding = 15.0;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Center(
              child: Text(
            "M O B I L E",
            style: TextStyle(color: Colors.white, fontSize: 30),
          )),
          backgroundColor: const Color.fromARGB(255, 255, 50, 119),
          shadowColor: Colors.black,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
          elevation: 5,
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Stack(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Connect(context)));
                          },
                          child: Container(
                            margin: EdgeInsets.only(
                                left: padding, top: padding, right: padding),
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
                              children: [
                                const SizedBox(
                                  height: 28,
                                ),
                                Center(
                                    child: Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: SvgPicture.asset(
                                    'assets/images/connect.svg',
                                    width: 200,
                                  ),
                                )),
                                const SizedBox(
                                  height: 15,
                                ),
                                Center(
                                  child: MaterialButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Connect(context)));
                                    },
                                    child: const Text(
                                      "توصيل",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "CairoBold",
                                        fontSize: 40,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
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
                        margin: EdgeInsets.only(top: padding, right: padding),
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
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            Center(
                                child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: SvgPicture.asset(
                                'assets/images/mindmap.svg',
                                width: 200,
                              ),
                              
                            )),
                            const SizedBox(
                              height: 0,
                            ),
                            Center(
                              child: MaterialButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              MindMap(context)));
                                },
                                child: const Text(
                                  "خرائط ذهنية",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "CairoBold",
                                    fontSize: 40,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MazePage(context)));
                      },
                      child: Container(
                        margin: EdgeInsets.only(
                            left: padding,
                            top: padding,
                            bottom: padding,
                            right: padding),
                        decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromARGB(255, 50, 3, 57),
                              spreadRadius: 2,
                              blurRadius: 4,
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 5,
                            ),
                            Center(
                                child: Padding(
                              padding: const EdgeInsets.only(top: 10,bottom: 20,left: 10, right: 20),
                              child: SvgPicture.asset(
                                'assets/images/maze.svg',
                                width: 200,
                              ),
                            )),
                            const SizedBox(
                              height: 5,
                            ),
                            Center(
                              child: MaterialButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              MazePage(context)));
                                },
                                child: const Text(
                                  "المتاهة",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "CairoBold",
                                    fontSize: 40,
                                  ),
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
                                builder: (context) => Puzzle(context)));
                      },
                      child: Container(
                        margin: EdgeInsets.only(
                            top: padding, right: padding, bottom: padding),
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
                          children: [
                            const SizedBox(
                              height: 48,
                            ),
                            Center(
                                child: Padding(
                              padding: const EdgeInsets.all(4),
                              child: SvgPicture.asset(
                                'assets/images/puzzle.svg',
                                width: 200,
                              ),
                            )),
                            const SizedBox(
                              height: 35,
                            ),
                            Center(
                              child: MaterialButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              Puzzle(context)));
                                },
                                child: const Text(
                                  "الغاز",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "CairoBold",
                                    fontSize: 40,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
