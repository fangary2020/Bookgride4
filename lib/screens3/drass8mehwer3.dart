import 'package:computer4/Screens/screen_mehwer3.dart';
import 'package:computer4/moduls/mehewer_details.dart';
import 'package:flutter/material.dart';

import 'package:video_player/video_player.dart';


import '../moduls/list_droos.dart';

class Drass8Mehwer3 extends StatefulWidget {
  static const routName = '/Drass8Mehwer3';
  const Drass8Mehwer3({super.key});

  @override
  State<Drass8Mehwer3> createState() => _Drass8Mehwer3State();
}

class _Drass8Mehwer3State extends State<Drass8Mehwer3> {
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
    AssetController = VideoPlayerController.asset("assets/vedio/motazamen.mp4")
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
    
    List<DroosDetails> Mehwerthird = droosdetails3;
  return Scaffold(
       appBar: AppBar(
        title: Text(mehwerId!),
        backgroundColor: Color.fromARGB(255, 15, 93, 3),
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
                builder: (context) => DroosMehwer3(),
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
                height:50,
                alignment: Alignment.center,
                child: Text(
                  '${mehwerTitle}',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                  textAlign: TextAlign.center,
                   overflow: TextOverflow.clip,
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: 
                  [
                    Color.fromARGB(255, 10, 114, 31),
                    Color.fromARGB(255, 191, 243, 146),
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
              margin: EdgeInsets.only(left: 250),
              width: 130,
              height: 40,
              child: Text(
                'لنتعلم',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
                textAlign: TextAlign.center,
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors: [
                     Color.fromARGB(255, 19, 145, 23),
                    Colors.greenAccent,
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
               // margin: EdgeInsets.only(left: 40),
                 width: double.infinity,
              height: 270,
                alignment: Alignment.center,
                child: Text(
                  '${Mehwerthird[7].title}',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.justify,
                ),
                
                ),
                SizedBox(
                height: 10,
              ),
                // alignment: AlignmentDirectional.center,
              
              ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    '${Mehwerthird[7].imageUrl}',
                    height: 170,
                    width: 200,
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(
                height: 10,
              ),
               ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    '${Mehwerthird[7].imageUrl2}',
                    height: 170,
                    width: 200,
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                padding: EdgeInsets.all(5.0),
                
                child: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                      text: '${Mehwerthird[7].details1}',
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
                    primary: Color.fromARGB(255, 24, 75, 6),

                    // minimumSize: Size(100, 20),
                  ),
                  onPressed: () {
                    AssetController.pause();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DroosMehwer3(),
                      ),
                    );
                  },
                  child: Text(
                    'عودة الى المحور الثالث  ',
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