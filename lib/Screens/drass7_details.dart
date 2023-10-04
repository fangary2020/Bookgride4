import 'package:computer4/Screens/screen_mehwer1.dart';
import 'package:computer4/moduls/list_droos.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../moduls/mehewer_details.dart';

class DrassDetails7 extends StatefulWidget {
  static const routName = '/drassdetails7';
  @override
  _DrassDetails7State createState() => _DrassDetails7State();
}

class _DrassDetails7State extends State<DrassDetails7> {
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
    AssetController = VideoPlayerController.asset("assets/vedio/waset.mp4")
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
    List<DroosDetails> mehwerOne = droosdetails1;

    return Scaffold(
      appBar: AppBar(
        title: Text(mehwerId!),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container(
              alignment: Alignment.center,
              child: Text(
                '${mehwerTitle}',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'ElMessiri-Bold',
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
                textAlign: TextAlign.center,
                textDirection: TextDirection.rtl,
                maxLines: 2,
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Colors.lightGreen.shade500,
                  Colors.green.shade700,
                ], begin: Alignment.topLeft, end: Alignment.topRight),
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                ),
              ),
              width: double.infinity,
              height: 90,
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
              width: 150,
              height: 50,
              child: Text(
                'لنتعلم',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
                textAlign: TextAlign.center,
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.green.shade500,
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
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(8.0),
              margin: EdgeInsets.all(8.0),
              alignment: AlignmentDirectional.center,
              height: 220,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color.fromARGB(255, 6, 6, 6),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Text(
                '${mehwerOne[6].details1}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: 'RobotoCondensed-Bold',
                  fontWeight: FontWeight.bold,
                  overflow: TextOverflow.visible,
                ),
                textDirection: TextDirection.rtl,
                maxLines: 6,
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 250),
              width: 170,
              height: 50,
              child: Text(
                'جمع البيانات',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
                textAlign: TextAlign.center,
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.green.shade500,
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
            Text(
              'يمكن جمع البيانات من مصادر مختلفة و تتضمن المصادر الاكثر شيوعا:',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
              textAlign: TextAlign.center,
              textDirection: TextDirection.rtl,
              overflow: TextOverflow.clip,
              maxLines: 2,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.orange,
                    width: 2,
                  ),
                ),
              ),
              child: Text(
                'الكتب و المقالات (الرقمية او المطبوعة)',
                style: TextStyle(
                  color: Colors.green.shade800,
                  //fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
                textAlign: TextAlign.start,
                textDirection: TextDirection.rtl,
                overflow: TextOverflow.clip,
                maxLines: 2,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 40),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.orange,
                    width: 2,
                  ),
                ),
              ),
              child: Text(
                'السجلات و التقارير',
                style: TextStyle(
                  color: Colors.green.shade800,
                  //fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
                textAlign: TextAlign.start,
                textDirection: TextDirection.rtl,
                overflow: TextOverflow.clip,
                maxLines: 2,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 40),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.orange,
                    width: 2,
                  ),
                ),
              ),
              child: Text(
                'استطلاعات الرى ',
                style: TextStyle(
                  color: Colors.green.shade800,
                  //fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
                textAlign: TextAlign.start,
                textDirection: TextDirection.rtl,
                overflow: TextOverflow.clip,
                maxLines: 2,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 40),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.orange,
                    width: 2,
                  ),
                ),
              ),
              child: Text(
                'التجارب',
                style: TextStyle(
                  color: Colors.green.shade800,
                  //fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
                textAlign: TextAlign.start,
                textDirection: TextDirection.rtl,
                overflow: TextOverflow.clip,
                maxLines: 2,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(left: 250),
              width: 170,
              height: 50,
              child: Text(
                'تحليل البيانات',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
                textAlign: TextAlign.center,
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.green.shade500,
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
              padding: EdgeInsets.all(8.0),
              margin: EdgeInsets.all(8.0),
              alignment: AlignmentDirectional.center,
              height: 220,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color.fromARGB(255, 6, 6, 6),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Text(
                '${mehwerOne[6].details2}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: 'RobotoCondensed-Bold',
                  fontWeight: FontWeight.bold,
                  overflow: TextOverflow.visible,
                ),
                textDirection: TextDirection.rtl,
                maxLines: 6,
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 250),
              width: 170,
              height: 50,
              child: Text(
                'الرسم البيانى ',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
                textAlign: TextAlign.center,
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.green.shade500,
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
              padding: EdgeInsets.all(8.0),
              margin: EdgeInsets.all(8.0),
              alignment: AlignmentDirectional.center,
              height: 220,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color.fromARGB(255, 6, 6, 6),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Text(
                '${mehwerOne[6].details3}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: 'RobotoCondensed-Bold',
                  fontWeight: FontWeight.bold,
                  overflow: TextOverflow.visible,
                ),
                textDirection: TextDirection.rtl,
                maxLines: 6,
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
                  primary: Colors.green[900],

                  // minimumSize: Size(100, 20),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DroosMehwer1(),
                    ),
                  );
                },
                child: Text(
                  'عودة الى المحور الاول  ',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
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
