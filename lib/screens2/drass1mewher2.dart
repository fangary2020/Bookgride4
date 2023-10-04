import 'package:computer4/Screens/screen_mehwer2.dart';

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import '../moduls/list_droos.dart';
import '../moduls/mehewer_details.dart';

class Drass1Mehwer2 extends StatefulWidget {
  static const routName = '/Drass1Mehwer2';
  const Drass1Mehwer2({super.key});

  @override
  State<Drass1Mehwer2> createState() => _Drass1Mehwer2State();
}

class _Drass1Mehwer2State extends State<Drass1Mehwer2> {
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
    AssetController = VideoPlayerController.asset("assets/vedio/aneek.mp4")
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
    final mehwerIdentifer = routeArg['identifer'];
    List<DroosDetails> MehwerTow = droosdetails2;
    return Scaffold(
      appBar: AppBar(
        title: Text(mehwerId!),
        backgroundColor: Colors.green.shade800,
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
                builder: (context) => DroosMehwer2(),
              ),
            );
          },
          alignment: Alignment.centerRight,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          // scrollDirection: Axis.vertical,
          children: [
            Container(
              alignment: Alignment.center,
              child: Text(
                '${mehwerTitle}',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Cairo',
                  fontWeight: FontWeight.bold,
                  fontSize: 27,
                ),
                textAlign: TextAlign.center,
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color.fromRGBO(3, 170, 17, 1),
                  Color.fromARGB(255, 17, 90, 37),
                ], begin: Alignment.topLeft, end: Alignment.topRight),
                borderRadius: BorderRadius.circular(15),
              ),
              width: double.infinity,
              height: 60,
            ),
            SizedBox(
              height: 10,
            ),
            buildVideoPlayer(AssetController),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: '${MehwerTow[0].details1}',
                      style: TextStyle(
                        fontSize: 25,
                        color: Color.fromARGB(255, 2, 112, 27),
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Cairo',
                      ),
                    ),
                    TextSpan(
                      text: '${MehwerTow[0].details2}',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.blue[800],
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Cairo',
                      ),
                    ),
                    TextSpan(
                      text: '${MehwerTow[0].details3}',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.red[800],
                        fontWeight: FontWeight.w400,
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
                  primary: Color.fromARGB(255, 41, 174, 50),

                  // minimumSize: Size(100, 20),
                ),
                onPressed: () {
                   AssetController.pause();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DroosMehwer2(),
                    ),
                  );
                },
                child: Text(
                  'عودة الى المحور الثانى  ',
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
