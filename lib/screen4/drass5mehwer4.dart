import 'package:computer4/Screens/mehwer_item4.dart';

import 'package:computer4/moduls/mehewer_details.dart';
import 'package:flutter/material.dart';

import 'package:video_player/video_player.dart';

import '../moduls/list_droos.dart';

class Drass5Mehwer4 extends StatefulWidget {
  static const routName = '/Drass5Mehwer4';
  const Drass5Mehwer4({super.key});

  @override
  State<Drass5Mehwer4> createState() => _Drass5Mehwer4State();
}

class _Drass5Mehwer4State extends State<Drass5Mehwer4> {
  late VideoPlayerController AssetController;
  // late VideoPlayerController fileController;
  // late VideoPlayerController networkController;
  // String vURL = "https://www.youtube.com/watch?v=iOXHI9oQmtw";
  @override
  void initState() {
    super.initState();
    // networkController= VideoPlayerController.network(vURL)
    //   ..initialize().then((value) {setState(() {

    //   });});
    AssetController = VideoPlayerController.asset("assets/vedio/ghorzmy.mp4")
      ..initialize().then((_) {
        // Ensure the first frame is shown
        // after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    final routeArg =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final mehwerId = routeArg['id'];
    final mehwerTitle = routeArg['title'];
    //final icon1  = Icons.notifications_active_rounded;
    List<DroosDetails> MehwerFour = droosdetails4;
    return Scaffold(
      appBar: AppBar(
        title: Text(mehwerId!,
            style: (TextStyle(
              color: Colors.black,
              fontFamily: 'Cairo',
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ))),
        backgroundColor: const Color.fromARGB(255, 206, 110, 236),
        centerTitle: true,
        elevation: 5,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_sharp),
          color: Colors.black,
          iconSize: 30,
          onPressed: () {
            AssetController.pause();
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DroosMehwer4(),
              ),
            );
          },
          alignment: Alignment.centerRight,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container(
               margin: EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              height: 50,
              alignment: Alignment.center,
              child: Text(
                '${mehwerTitle}',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Cairo',
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
                textAlign: TextAlign.center,
                overflow: TextOverflow.clip,
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color.fromARGB(255, 206, 110, 236),
                 const Color.fromARGB(255, 120, 5, 140),
                ], begin: Alignment.topLeft, end: Alignment.topRight),
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: Colors.black,
                  width: 3,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            buildVideoPlayer(AssetController),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(left: 220),
              width: 140,
              height: 40,
              child: Text(
                'لنتعلم',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
                textAlign: TextAlign.center,
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                   Color.fromARGB(255, 206, 110, 236),
                    Color.fromARGB(255, 245, 246, 242),
                  ],
                ),

                //color: Colors.orangeAccent[100],
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
                border: Border.all(
                  color: Color.fromARGB(255, 6, 6, 6),
                  width: 2,
                ),
              ),
              alignment: AlignmentDirectional.center,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.all(10.0),
              child: RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: '${MehwerFour[4].title}',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Cairo',
                      ),
                    ),
                  ],
                ),
                overflow: TextOverflow.clip,
                textAlign: TextAlign.justify,
              ),
              // decoration: BoxDecoration(
              //   gradient: LinearGradient(
              //     begin: Alignment.center,
              //     end: Alignment.bottomCenter,
              //     colors: [
              //       Color.fromARGB(255, 238, 175, 196),
              //       Colors.white,
              //     ],
              //   ),
              //   borderRadius: const BorderRadius.all(
              //     Radius.circular(20),
              //   ),
              //   border: Border.all(
              //     color: Color.fromARGB(255, 6, 6, 6),
              //     width: 2,
              //   ),
              // ),
            ),
             SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.all(10.0),
              child: RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: '${MehwerFour[4].details1}',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Cairo',
                      ),
                    ),
                  ],
                ),
                overflow: TextOverflow.clip,
                textAlign: TextAlign.justify,
              ),
              decoration: BoxDecoration(
                
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
                border: Border.all(
                  color: Colors.deepPurple,
                               width: 2
                ),
              ),
            ),
             SizedBox(
              height: 10,
            ),
             ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/images/flafel.jpg',
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.fill,
                  ),
                ),
            
            SizedBox(
              height: 5,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.all(10.0),
              child: RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: '${MehwerFour[4].details2}',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.deepPurple[800],
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Cairo',
                      ),
                    ),
                  ],
                ),
                overflow: TextOverflow.clip,
                textAlign: TextAlign.justify,
              ),
              // decoration: BoxDecoration(
              //   gradient: LinearGradient(
              //     begin: Alignment.center,
              //     end: Alignment.bottomCenter,
              //     colors: [
              //       Color.fromARGB(255, 238, 175, 196),
              //       Colors.white,
              //     ],
              //   ),
              //   borderRadius: const BorderRadius.all(
              //     Radius.circular(20),
              //   ),
              //   border: Border.all(
              //     color: Color.fromARGB(255, 6, 6, 6),
              //     width: 2,
              //   ),
              // ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/images/serch22.jpeg',
                      height: 250,
                      width: double.infinity,
                      fit: BoxFit.fill,
                    ),
                  ),
                  decoration: BoxDecoration(
               
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
                border: Border.all(
                  color: Color.fromARGB(255, 107, 5, 99),
                  width: 2,
                ),
                  ),
            ),
           
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.all(10.0),
              child: RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: '${MehwerFour[4].details3}',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Cairo',
                      ),
                    ),
                  ],
                ),
                overflow: TextOverflow.clip,
                textAlign: TextAlign.justify,
              ),
                    ),
            
           
             SizedBox(
              height: 10,
            ),
           
            
            Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  padding: EdgeInsets.only(left: 30, right: 30),
                  primary: Color.fromARGB(255, 107, 9, 125),

                  // minimumSize: Size(100, 20),
                ),
                onPressed: () {
                  AssetController.pause();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DroosMehwer4(),
                    ),
                  );
                },
                child: Text(
                  'عودة الى المحور الرابع  ',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

buildVideoPlayer(VideoPlayerController controller) {
  return Column(
    children: [
      Center(
        child: controller.value.isInitialized
            ? AspectRatio(
                aspectRatio: controller.value.aspectRatio,
                child: VideoPlayer(controller),
              )
            : Container(),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ElevatedButton(
              onPressed: () async {
                Duration? value = await controller.position;
                var d = value! - Duration(seconds: 10);
                controller.seekTo(Duration(seconds: d.inSeconds));
              },
              child: Text("<<")),
          ElevatedButton(
            child: Icon(Icons.play_arrow_rounded),
            onPressed: () {
              controller.play();
            },
          ),
          ElevatedButton(
            child: Icon(Icons.pause_outlined),
            onPressed: () {
              controller.pause();
            },
          ),
          ElevatedButton(
              onPressed: () async {
                Duration? value = await controller.position;
                var d = Duration(seconds: 10) + value!;
                controller.seekTo(Duration(seconds: d.inSeconds));
              },
              child: Text(">>")),
        ],
      )
    ],
  );
}
