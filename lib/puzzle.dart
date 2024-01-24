import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'homepage.dart';

class Puzzle extends StatefulWidget {
  const Puzzle(BuildContext context, {super.key});

  @override
  State<Puzzle> createState() => _PuzzleState();
}

class _PuzzleState extends State<Puzzle> {

  final player = AudioPlayer();

   List items = [ '1','2','3','4','5','6','7','8',''];
   List sortedItems = ['1','2','3','4','5','6','7','8',''];
  _changeIndex(int i) {

    int emptyIndex = items.lastIndexOf('');
    int previousItem  = i - 1;
    int nextItem  = i + 1;
    int previousRowItem  = i - 3;
    int nextRowItem  = i + 3;
    if(emptyIndex == previousItem) {
      items[previousItem] = items[i];
      items[i] = '';
    }else
    if(emptyIndex == nextItem) {
      items[nextItem] = items[i];
      items[i] = '';
    }else
    if(emptyIndex == previousRowItem) {
      items[previousRowItem] = items[i];
      items[i] = '';
    }else
    if(emptyIndex == nextRowItem) {
      items[nextRowItem] = items[i];
      items[i] = '';
    }

    if (items.toString()==sortedItems.toString()){
      player.play(UrlSource('assets/audio/success.mp3'));
      showDialog(context: context, builder: (_) =>
          AlertDialog(
            title: const Center(child: Text ('Congratulations 🎉')),
            actions: <Widget>[TextButton(
              child: const Text("New Game",
              style: TextStyle(color: Color.fromARGB(255, 254, 107, 49),),
              ),
              onPressed: () {
                player.play(UrlSource('assets/audio/success.mp3'));
                Get.off(() =>  Puzzle(context));
              },
            )
            ],
          ),
      );
    }
    setState(() {});
  }

  @override
  void initState() {
    items.shuffle();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 248, 215, 200),
      appBar: AppBar(
        title: const Center(child: Text("الغاز",style: TextStyle(color: Colors.white,fontFamily: "CairoBold",fontSize: 30),)),
        backgroundColor: const Color.fromARGB(255, 254, 107, 49),
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

      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Center(
          child: AspectRatio(
            aspectRatio: 1,
            child: GridView.count(
              crossAxisCount: 3,
              children: [
                for(int i=0; i<9; i++)
                  InkWell(
                    onTap: ()
                    {
                      _changeIndex(i);
                    },

                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: items[i].isEmpty? const Color.fromARGB(255, 248, 215, 200) :const Color.fromARGB(255, 254, 107, 49),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(
                          child: Text('${items[i]}',
                          style: const TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
