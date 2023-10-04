import 'package:computer4/moduls/mehewer_details.dart';
import 'package:flutter/material.dart';

import 'package:video_player/video_player.dart';

import '../Screens/screen_mehwer2.dart';
import '../moduls/list_droos.dart';

class Drass3Mehwer2 extends StatefulWidget {
  static const routName = '/Drass3Mehwer2';
  const Drass3Mehwer2({super.key});

  @override
  State<Drass3Mehwer2> createState() => _Drass3Mehwer2State();
}

class _Drass3Mehwer2State extends State<Drass3Mehwer2> {
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
    AssetController = VideoPlayerController.asset("assets/vedio/facebook.mp4")
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
        backgroundColor: Colors.pink.shade800,
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
             scrollDirection: Axis.vertical,
            children: [
              Container(
                width: double.infinity,
                height: 85,
                alignment: Alignment.center,
                child: Text(
                  '${mehwerTitle}',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                  textAlign: TextAlign.center,
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                   Colors.pink,
                    Colors.redAccent,
                  ], begin: Alignment.topLeft, end: Alignment.topRight),
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: Colors.white,
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
                margin: EdgeInsets.only(left: 140),
                width: 220,
                height: 40,
                alignment: Alignment.centerRight,
                child: Text(
                  'نشر معلومات على شبكة الانترنت',
                  style: TextStyle(
                    color: Colors.pink[900],
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                  textAlign: TextAlign.right,
                ),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
                ),
              ),
                Container(
                padding: EdgeInsets.all(5.0),
                
                child: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: '${MehwerTow[2].title}',
                        style: TextStyle(
                          fontSize: 25,
                          color: Color.fromARGB(255, 2, 112, 27),
                          fontWeight: FontWeight.w900,
                          fontFamily: 'Cairo',
                        ),
                      ),
                    ],
                  ),
                  overflow: TextOverflow.clip,
                  textAlign: TextAlign.justify,
                ),
              ),
              Container(
             // margin: EdgeInsets.only(left: 250),
              width: double.infinity,
              height: 50,
              child: Text(
                'ذكر مصادر المعلومات و اصحابها',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
                textAlign: TextAlign.center,
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(255, 239, 116, 169),
                    Colors.white,
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
            Container(
                padding: EdgeInsets.all(5.0),
                
                child: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: '${MehwerTow[2].details1}',
                        style: TextStyle(
                          fontSize: 25,
                          color: Color.fromRGBO(112, 17, 2, 0.795),
                          fontWeight: FontWeight.w900,
                          fontFamily: 'Cairo',
                        ),
                      ),
                    ],
                  ),
                  overflow: TextOverflow.clip,
                  textAlign: TextAlign.justify,
                ),
              ),
               Container(
             // margin: EdgeInsets.only(left: 250),
              width: double.infinity,
              height: 50,
              child: Text(
                'احترام القانون',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
                textAlign: TextAlign.center,
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(255, 239, 116, 169),
                    Colors.white,
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
            Container(
                padding: EdgeInsets.all(5.0),
                
                child: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: '${MehwerTow[2].details2}',
                        style: TextStyle(
                          fontSize: 25,
                          color: Color.fromRGBO(112, 17, 2, 0.795),
                          fontWeight: FontWeight.w900,
                          fontFamily: 'Cairo',
                        ),
                      ),
                    ],
                  ),
                  overflow: TextOverflow.clip,
                  textAlign: TextAlign.justify,
                ),
              ),
               Container(
                margin: EdgeInsets.only(left: 10),
                width: 220,
                height: 40,
                alignment: Alignment.centerRight,
                child: Text(
                  'الآثار السلبية و الايجابية لتكنولوجيا المعلومات',
                  style: TextStyle(
                    color: Colors.green[900],
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                  textAlign: TextAlign.right,
                ),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
                ),
              ),
               Container(
                padding: EdgeInsets.all(5.0),
                
                child: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: '${MehwerTow[2].details3}',
                        style: TextStyle(
                          fontSize: 25,
                          color: Color.fromRGBO(112, 17, 2, 0.795),
                          fontWeight: FontWeight.w900,
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
                    primary: Color.fromARGB(255, 179, 26, 2),

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
