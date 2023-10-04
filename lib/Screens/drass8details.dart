import 'package:computer4/Screens/screen_mehwer1.dart';
import 'package:computer4/moduls/list_droos.dart';
import 'package:computer4/moduls/mehewer_details.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class DrassDetails8 extends StatefulWidget {
  static const routName = '/drassdetails8';
  @override
  _DrassDetails8State createState() => _DrassDetails8State();
}

class _DrassDetails8State extends State<DrassDetails8> {
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
    AssetController = VideoPlayerController.asset("assets/vedio/report.mp4")
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
        backgroundColor: Colors.deepOrange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
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
                  fontSize: 26,
                ),
                textAlign: TextAlign.center,
                textDirection: TextDirection.rtl,
                maxLines: 2,
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Colors.orangeAccent,
                  Colors.red,
                ], begin: Alignment.topLeft, end: Alignment.topRight),
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                ),
              ),
              width: double.infinity,
              height: 70,
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
                    Colors.orange.shade300,
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
              // margin: EdgeInsets.all(8.0),
              alignment: AlignmentDirectional.center,
              height: 180,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color.fromARGB(255, 6, 6, 6),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Text(
                '${mehwerOne[7].details1}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
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
              margin: EdgeInsets.symmetric(horizontal: 30),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.lightBlue,
                    width: 2,
                  ),
                ),
              ),
              child: Text(
                'المدونات الرقمية ',
                style: TextStyle(
                  color: Colors.red.shade800,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
                textAlign: TextAlign.start,
                textDirection: TextDirection.rtl,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.lightBlue,
                    width: 2,
                  ),
                ),
              ),
              child: Text(
                'المقالات المنشورة الرقمية',
                style: TextStyle(
                  color: Colors.red.shade800,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
                textAlign: TextAlign.start,
                textDirection: TextDirection.rtl,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.lightBlue,
                    width: 2,
                  ),
                ),
              ),
              child: Text(
                ' مواقع التواصل الاجتماعى ',
                style: TextStyle(
                  color: Colors.red.shade800,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
                textAlign: TextAlign.start,
                textDirection: TextDirection.rtl,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.lightBlue,
                    width: 2,
                  ),
                ),
              ),
              child: Text(
                'المقابلات ',
                style: TextStyle(
                  color: Colors.red.shade800,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
                textAlign: TextAlign.start,
                textDirection: TextDirection.rtl,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.lightBlue,
                    width: 2,
                  ),
                ),
              ),
              child: Text(
                'برامج التليفزيون ',
                style: TextStyle(
                  color: Colors.red.shade800,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
                textAlign: TextAlign.start,
                textDirection: TextDirection.rtl,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(8.0),
              // margin: EdgeInsets.all(8.0),
              alignment: AlignmentDirectional.center,
              height: 120,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color.fromARGB(255, 6, 6, 6),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Text(
                'الطريقة الاكثر شيوعا لمشاركة البيانات هى البريد الاليكترونى. اذ يمكنك ان تكتب فيه تقرير قصيرا مرفقا بملفات ذات صلة',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontFamily: 'RobotoCondensed-Bold',
                  fontWeight: FontWeight.bold,
                  overflow: TextOverflow.visible,
                ),
                textDirection: TextDirection.rtl,
                maxLines: 3,
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  padding: EdgeInsets.only(left: 30, right: 30),
                  primary: Colors.orange[900],

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
