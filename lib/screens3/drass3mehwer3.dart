import 'package:computer4/Screens/screen_mehwer2.dart';

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import '../Screens/screen_mehwer3.dart';
import '../moduls/list_droos.dart';
import '../moduls/mehewer_details.dart';

class Drass3Mehwer3 extends StatefulWidget {
  static const routName = '/Drass3Mehwer3';
  const Drass3Mehwer3({super.key});

  @override
  State<Drass3Mehwer3> createState() => _Drass3Mehwer3State();
}

class _Drass3Mehwer3State extends State<Drass3Mehwer3> {
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
    AssetController = VideoPlayerController.asset("assets/vedio/athar.mp4")
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
    List<DroosDetails> Mehwerthird = droosdetails3;
    return Scaffold(
      appBar: AppBar(
        title: Text(mehwerId!),
        backgroundColor: const Color.fromARGB(255, 157, 15, 182),
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
                  Colors.red,
                  Color.fromARGB(255, 120, 6, 99),
                ], begin: Alignment.topLeft, end: Alignment.topRight),
                borderRadius: BorderRadius.circular(15),
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
                      text: '${Mehwerthird[2].title}',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 92, 5, 19),
                        fontWeight: FontWeight.w800,
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
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(
                  '${Mehwerthird[2].imageUrl2}',
                  height: 180,
                  width: 140,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 180,
              alignment: Alignment.center,
              child: Text(
                '${Mehwerthird[2].details1}',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Cairo',
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
                overflow: TextOverflow.clip,
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color.fromARGB(255, 119, 3, 139),
                  Colors.pink,
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
            Container(
              // margin: EdgeInsets.only(left: 40),
              width: double.infinity,
              height: 50,
              alignment: Alignment.center,
              child: Text(
                'منصات مشاركة مقاطع الفيديو',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Cairo',
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
                textAlign: TextAlign.center,
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(255, 171, 5, 93),
                    const Color.fromARGB(255, 102, 3, 119),
                  ],
                ),

                //color: Colors.orangeAccent[100],
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
                border: Border.all(
                  color: Color.fromARGB(255, 255, 255, 9),
                  width: 2,
                ),
              ),
              // alignment: AlignmentDirectional.center,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(5.0),
              width: double.infinity,
              height: 200,
              alignment: Alignment.center,
              child: Text(
                '${Mehwerthird[2].details2}',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Cairo',
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
                textAlign: TextAlign.justify,
              ),
              decoration: BoxDecoration(
                //color: Colors.orangeAccent[100],
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                ),
              ),
              // alignment: AlignmentDirectional.center,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              // margin: EdgeInsets.only(left: 40),
              width: double.infinity,
              height: 50,
              alignment: Alignment.center,
              child: Text(
                'التواصل الاجتماعى',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Cairo',
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
                textAlign: TextAlign.center,
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(255, 171, 5, 93),
                    const Color.fromARGB(255, 102, 3, 119),
                  ],
                ),

                //color: Colors.orangeAccent[100],
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
                border: Border.all(
                  color: Color.fromARGB(255, 255, 255, 9),
                  width: 2,
                ),
              ),
              // alignment: AlignmentDirectional.center,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(5.0),
              width: double.infinity,
              height: 200,
              alignment: Alignment.center,
              child: Text(
                '${Mehwerthird[2].details3}',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Cairo',
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
                textAlign: TextAlign.justify,
              ),
              decoration: BoxDecoration(
                //color: Colors.orangeAccent[100],
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                ),
              ),
              // alignment: AlignmentDirectional.center,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              // margin: EdgeInsets.only(left: 40),
              width: double.infinity,
              height: 150,
              alignment: Alignment.center,
              child: Text(
                '${Mehwerthird[2].imageUrl}',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Cairo',
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(255, 171, 5, 93),
                    const Color.fromARGB(255, 102, 3, 119),
                  ],
                ),

                //color: Colors.orangeAccent[100],
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
                border: Border.all(
                  color: Color.fromARGB(255, 255, 255, 9),
                  width: 2,
                ),
              ),
              // alignment: AlignmentDirectional.center,
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
                  primary: Color.fromARGB(255, 107, 4, 120),

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
