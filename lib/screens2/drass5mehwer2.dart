
import 'package:computer4/moduls/mehewer_details.dart';
import 'package:flutter/material.dart';

import 'package:video_player/video_player.dart';

import '../Screens/screen_mehwer2.dart';
import '../moduls/list_droos.dart';

class Drass5Mehwer2 extends StatefulWidget {
  static const routName = '/Drass5Mehwer2';
  const Drass5Mehwer2({super.key});

  @override
  State<Drass5Mehwer2> createState() => _Drass5Mehwer2State();
}

class _Drass5Mehwer2State extends State<Drass5Mehwer2> {
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
    AssetController = VideoPlayerController.asset("assets/vedio/search1.mp4")
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
        backgroundColor: Color.fromARGB(156, 96, 73, 3),
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
                    fontSize: 25,
                  ),
                  textAlign: TextAlign.center,
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: 
                  [
                    Color.fromARGB(156, 96, 73, 3),
                    Color.fromARGB(210, 232, 144, 28),
                  ], begin: Alignment.topLeft, end: Alignment.topRight),
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: Colors.brown.shade900,
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
               // margin: EdgeInsets.only(left: 40),
                 width: double.infinity,
              height: 50,
                //alignment: Alignment.centerRight,
                child: Text(
                  'مصادر الانترنت غير الموثوقة',
                  style: TextStyle(
                    color: Colors.brown.shade800,
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                  textAlign: TextAlign.right,
                ),
                 decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomCenter,
                  colors: [
                   Color.fromARGB(190, 208, 156, 2),
                    Colors.white,
                  ],
                ),

                //color: Colors.orangeAccent[100],
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
                border: Border.all(
                  color:Colors.brown.shade900,
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
                      text: '${MehwerTow[4].title}',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.brown.shade900,
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
              Container(
             // margin: EdgeInsets.only(left: 250),
              width: double.infinity,
              height: 50,
              child: Text(
                'التأكد من المصادر الموثوقة',
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
                   Color.fromARGB(190, 208, 156, 2),
                    Colors.white,
                  ],
                ),

                //color: Colors.orangeAccent[100],
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
                border: Border.all(
                  color:Colors.brown.shade900,
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
                        text: '${MehwerTow[4].details1}',
                        style: TextStyle(
                          fontSize: 25,
                          color:Colors.brown.shade800,
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
               
            Container(
                padding: EdgeInsets.all(5.0),
                
                child: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: '${MehwerTow[4].details2}',
                        style: TextStyle(
                          fontSize: 25,
                          color:Colors.indigo,
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
              Container(
             // margin: EdgeInsets.only(left: 250),
              width: double.infinity,
              height: 50,
              child: Text(
                'بنك المعرفة المصرى',
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
                   Color.fromARGB(190, 208, 156, 2),
                    Colors.white,
                  ],
                ),

                //color: Colors.orangeAccent[100],
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
                border: Border.all(
                  color:Colors.brown.shade900,
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
                        text: '${MehwerTow[4].details3}',
                        style: TextStyle(
                          fontSize: 25,
                          color:Colors.indigo,
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
                    primary: Color.fromARGB(255, 171, 81, 8),

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
