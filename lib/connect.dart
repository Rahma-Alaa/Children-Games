import 'package:audioplayers/audioplayers.dart';
import 'package:children_games/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'item_model.dart';

class Connect extends StatefulWidget {
  const Connect(BuildContext context, {super.key});

  @override
  State<Connect> createState() => _ConnectState();
}

class _ConnectState extends State<Connect> {
  
  final player = AudioPlayer();
  late List<ItemModel>items;
  late List<ItemModel>items2;
  late int score;
  late bool gameOver;

  initGame(){
    gameOver = false;
    score = 0;
    items = [
      ItemModel(value: 'lion', name: 'Lion', img: 'assets/images/lion.png'),
      ItemModel(value: 'panda', name: 'Panda', img: 'assets/images/panda.png'),
      ItemModel(value: 'dog', name: 'Dog', img: 'assets/images/dog.png'),
      ItemModel(value: 'elephant', name: 'Elephant', img: 'assets/images/elephant.png'),
      ItemModel(value: 'fox', name: 'Fox', img: 'assets/images/fox.png'),
      ItemModel(value: 'hen', name: 'Hen', img: 'assets/images/hen.png'),
      ItemModel(value: 'horse', name: 'Horse', img: 'assets/images/horse.png'),
      ItemModel(value: 'tiger', name: 'Tiger', img: 'assets/images/tiger.png'),
      ItemModel(value: 'cat', name: 'Cat', img: 'assets/images/catt.png'),
      ItemModel(value: 'sheep', name: 'Sheep', img: 'assets/images/sheep.png'),
    ];
    items2 = List<ItemModel>.from(items);
    //Display images randomly
    items.shuffle();
    items2.shuffle();
  }

  @override
  void initState() {
    super.initState();
    initGame();
  }
  @override
  Widget build(BuildContext context) {
    if(items.isEmpty) gameOver = true;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 254, 230, 233),

      appBar: AppBar(title: const Center(child: Text("توصيل",style: TextStyle(color: Colors.white,fontFamily: "CairoBold",fontSize: 30),)),
      backgroundColor: const Color(0xFFff6374),
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
          child: SingleChildScrollView(
            //scrollDirection: Axis.horizontal,
            child: Center(
              child: Column(
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Score ',
                                style: Theme.of(context).textTheme.headline2?.copyWith(color: const Color(0xFFff6374)),
                              ),
                              TextSpan(
                                text: '$score',
                                style: TextStyle(
                                  //color: Colors.white,
                                  fontSize: 50.0,
                                  fontWeight: FontWeight.bold,
                                  foreground: Paint()
                                    ..style = PaintingStyle.stroke
                                    ..strokeWidth = 2.0
                                    ..color = const Color(0xFFff6374), // Stroke color
                                ),

                              ),
                            ]
                          ),
                      ),
                    ),
                  ),
                  if(!gameOver)
                    Center(
                      child: Column(
                        children: [
                          //const Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(100.0),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: items.map((item){
                                  return Container(
                                    margin: const EdgeInsets.all(8),
                                    child: Draggable<ItemModel>(
                                      data:item,
                                      childWhenDragging: Container(
                                        height: 95.0,
                                        width: 95.0,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                                item.img),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        //backgroundColor: Colors.white,
                                        //backgroundImage: AssetImage(item.img),
                                        //radius: 50,
                                      ),
                                      feedback: Container(
                                        height: 90.0,
                                        width: 90.0,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                                item.img),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                      child: Container(
                                        height: 90.0,
                                        width: 90.0,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                                item.img),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                          //const Spacer(flex: 2),
                          const SizedBox(height: 10,),
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: items2.map((item){
                                  return Center(
                                    child: DragTarget<ItemModel>(
                                      onAccept: (receivedItem){
                                        if (item.value == receivedItem.value){
                                          setState(() {
                                            items.remove(receivedItem);
                                            items2.remove(item);
                                          });
                                          score += 10;
                                          item.accepting = false;
                                          player.play(UrlSource("assets/audio/correct.mp3"));
                                        } else{
                                          setState(() {
                                            score -= 5;
                                            item.accepting = false;
                                            player.play(UrlSource("assets/audio/incorrect.mp3"));
                                          });
                                        }
                                      },
                                      onWillAccept: (receivedItem) {
                                        setState(() {
                                          item.accepting = true;
                                        });
                                        return true;
                                      },
                                      onLeave: (receivedItem){
                                        setState(() {
                                          item.accepting = false;
                                        });
                                      },
                                      //BuildContext context, List<ItemModel?> candidateData, List<dynamic> rejectedData
                                      builder: (BuildContext context, List<ItemModel?> candidateData, List<dynamic> rejectedData) =>
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(8),
                                            color: item.accepting
                                              ? const Color(0xffaf1e31)
                                                : const Color(0xFFff6374),
                                          ),
                                          alignment: Alignment.center,
                                          height: 70,
                                          //MediaQuery.of(context).size.width/6.5,
                                          width: 100,
                                          //MediaQuery.of(context).size.width/3,
                                          margin: const EdgeInsets.all(8),
                                          child: Text(
                                            item.name,
                                            style: Theme.of(context).textTheme.headline6?.copyWith(color: Colors.white),
                                          ),
                                        ),
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                          //const Spacer(),
                        ],
                      ),
                    ),
                  if (gameOver)
                    Center(
                      child: Column(
                        children: [
                          // Padding(
                          //   padding: const EdgeInsets.all(8.0),
                          //   // child: Text(
                          //   //   'Game Over',
                          //   //   style: Theme.of(context).textTheme.headline6?.copyWith(
                          //   //       fontWeight: FontWeight.bold,color: Colors.red
                          //   //   ),
                          //   // ),
                          // ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              result(),
                              style: Theme.of(context).textTheme.headline3,
                            ),
                          ),
                        ],
                      ),
                    ),
                  if (gameOver)
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(

                          height: 80,
                          width: 150,
                          decoration: BoxDecoration(
                              color: const Color(0xFFff6374),
                              borderRadius: BorderRadius.circular(8)),
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                initGame();
                              });
                            },
                            child: const Center(
                              child: Text(
                                'New Game',
                                style: TextStyle(color: Colors.white,
                                fontSize: 25),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          )
      ),
    );
  }
  String result() {
    if (score >= 80){
      player.play(UrlSource('assets/audio/success.mp3'));
      return 'Awesome 🤩🏆';
    }else{
      player.play(UrlSource('assets/audio/lose.mp3'));
      return 'Game Over';
    }
  }
}

