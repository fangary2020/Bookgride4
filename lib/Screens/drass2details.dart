import '../Screens/screen_mehwer1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:video_player/video_player.dart';


///import 'package:flutter/lib/src/rendering/box.dart';
import '../moduls/list_droos.dart';
import '../moduls/mehewer_details.dart';

class DrassDetails2 extends StatefulWidget {
  static const routName = '/drassdetails2';
  const DrassDetails2({super.key});

  @override
  State<DrassDetails2> createState() => _DrassDetails2State();
}

class _DrassDetails2State extends State<DrassDetails2> {
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
    AssetController = VideoPlayerController.asset("assets/vedio/asd.mp4")
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
   
    List<DroosDetails> mehwerOne = droosdetails1;
    return Scaffold(
        appBar: AppBar(
          title: Text(mehwerId!),
          backgroundColor: Colors.lightBlue,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: [
              Container(
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
                  gradient: LinearGradient(colors: [
                    Colors.indigo,
                    Colors.lightBlue,
                  ], begin: Alignment.topLeft, end: Alignment.topRight),
                  borderRadius: BorderRadius.circular(15),
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
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 5),
                             //padding: EdgeInsets.all(8.0),
                              width: 250.0,
                              height: 40,
                              //color: Colors.black.withOpacity(.7),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 232, 140, 4)
                                    .withOpacity(0.9),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10.0),
                                  //                 <--- border radius here
                                  //               ),
                                ),
                              ),

                              child: Text(
                                'عصر ما قبل الثورة الميكانيكية ',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              width: 250,
                              height: 180,
                              //margin: EdgeInsets.only(left: 5, right: 5),
                             padding: EdgeInsets.all(8.0),
                              child: Text(
                                '${mehwerOne[1].details1}',
                                overflow: TextOverflow.visible,
                                textAlign: TextAlign.justify,
                                textDirection: TextDirection.rtl,
                                maxLines: 7,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              decoration: BoxDecoration(
                                // color: Colors.lightBlue,
                                //border: Border.all(color: Colors.blueAccent),
                                borderRadius: BorderRadius.all(Radius.circular(
                                        20.0) //                 <--- border radius here
                                    ),
                                gradient: LinearGradient(
                                    colors: [
                                      Colors.indigo,
                                      Colors.lightBlue,
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.topRight),
                              ),
                              // color: Colors.yellow,
                            ),
                          ],
                        ),
                      ),
                      // SizedBox(
                      //   width: 5,
                      // ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          //crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 40,
                              width: 140,
                              margin: EdgeInsets.symmetric(vertical: 5),
                              decoration: BoxDecoration(
                               color: Color.fromARGB(255, 232, 140, 4)
                                  .withOpacity(0.9),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10.0),
                                  //                 <--- border radius here
                                  //               ),
                                ),
                              ),
                              child: Text(
                                'ورق البردى ',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            //  SizedBox(
                            //   height: 5,
                            // ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                '${mehwerOne[1].imageUrl}',
                                height: 180,
                                width: 140,
                                fit: BoxFit.fill,
                              ),
                            ),
                           
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 10),
                              padding: EdgeInsets.all(8.0),
                              width: 250.0,
                              height: 40,
                              //color: Colors.black.withOpacity(.7),
                              decoration: BoxDecoration(
                               color: Color.fromARGB(255, 232, 140, 4)
                                    .withOpacity(0.9),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10.0),
                                  //                 <--- border radius here
                                  //               ),
                                ),
                              ),

                              child: Text(
                                'عصر الثورة الميكانيكية ',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.black,
                                  //fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              width: 250,
                              height: 170,
                             // margin: EdgeInsets.only(left: 5, right: 5),
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                '${mehwerOne[1].details2}',
                                overflow: TextOverflow.visible,
                                textAlign: TextAlign.justify,
                                textDirection: TextDirection.rtl,
                                maxLines: 6,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              decoration: BoxDecoration(
                                // color: Colors.lightBlue,
                                //border: Border.all(color: Colors.blueAccent),
                                borderRadius: BorderRadius.all(Radius.circular(
                                        20.0) //                 <--- border radius here
                                    ),
                                gradient: LinearGradient(
                                    colors: [
                                      Colors.indigo,
                                      Colors.lightBlue,
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.topRight),
                              ),
                              // color: Colors.yellow,
                            ),
                          ],
                        ),
                      ),
                      // SizedBox(
                      //   width: 5,
                      // ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 40,
                              width: 170,
                             margin: EdgeInsets.symmetric(vertical: 10),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 232, 140, 4)
                                    .withOpacity(0.9),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10.0),
                                  //                 <--- border radius here
                                  //               ),
                                ),
                              ),
                              child: Text(
                                'الة باسكالين ',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                '${mehwerOne[1].imageUrl2}',
                                height: 170,
                                width: 140,
                                fit: BoxFit.fill,
                              ),
                            ),
                            // SizedBox(
                            //   height: 90,
                            // ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                             margin: EdgeInsets.symmetric(vertical: 5),
                              padding: EdgeInsets.all(8.0),
                              width: 240.0,
                              height: 40,
                              //color: Colors.black.withOpacity(.7),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 232, 140, 4)
                                    .withOpacity(0.9),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10.0),
                                  //                 <--- border radius here
                                  //               ),
                                ),
                              ),

                              child: Text(
                                'عصر الثورة الكهربائية',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              width: 240,
                              height: 150,
                             // margin: EdgeInsets.only(left: 5, right: 5),
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                '${mehwerOne[1].details3}',
                                overflow: TextOverflow.visible,
                                textAlign: TextAlign.justify,
                                textDirection: TextDirection.rtl,
                                maxLines: 5,
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                              decoration: BoxDecoration(
                                // color: Colors.lightBlue,
                                //border: Border.all(color: Colors.blueAccent),
                                borderRadius: BorderRadius.all(Radius.circular(
                                        20.0) //                 <--- border radius here
                                    ),
                                gradient: LinearGradient(
                                    colors: [
                                      Colors.indigo,
                                      Colors.lightBlue,
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.topRight),
                              ),
                              // color: Colors.yellow,
                            ),
                          ],
                        ),
                      ),
                      // SizedBox(
                      //   width: 5,
                      // ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 40,
                              width: 160,
                              margin: EdgeInsets.symmetric(vertical: 10),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 232, 140, 4)
                                  .withOpacity(0.9),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10.0),
                                  //                 <--- border radius here
                                  //               ),
                                ),
                              ),
                              child: Text(
                                'جهاز الحاسب الاول',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'assets/images/computer.jpg',
                                height: 150,
                                width: 160,
                                fit: BoxFit.fill,
                              ),
                            ),
                            // SizedBox(
                            //   height: 90,
                            // ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                             margin: EdgeInsets.symmetric(vertical: 5),
                             padding: EdgeInsets.all(8.0),
                              width: 240.0,
                              height: 40,
                              //color: Colors.black.withOpacity(.7),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 232, 140, 4)
                                    .withOpacity(0.9),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10.0),
                                  //                 <--- border radius here
                                  //               ),
                                ),
                              ),

                              child: Text(
                                'عصر الثورة الالكترونية ',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              width: 240,
                              height: 150,
                            //  margin: EdgeInsets.only(left: 5, right: 5),
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'الثورة المعلوماتية شهدت ظهور اختراعات و إنجازات مثل أجهزة الكمبيوتر الى جانب الأقمار الصناعية و نظام تحديد المواقع و استعمال البريد الاليكترونى و الرسائل النصية ',
                                overflow: TextOverflow.visible,
                                textAlign: TextAlign.justify,
                                textDirection: TextDirection.rtl,
                                maxLines: 5,
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                              decoration: BoxDecoration(
                                // color: Colors.lightBlue,
                                //border: Border.all(color: Colors.blueAccent),
                                borderRadius: BorderRadius.all(Radius.circular(
                                        20.0) //                 <--- border radius here
                                    ),
                                gradient: LinearGradient(
                                    colors: [
                                      Colors.indigo,
                                      Colors.lightBlue,
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.topRight),
                              ),
                              // color: Colors.yellow,
                            ),
                          ],
                        ),
                      ),
                      // SizedBox(
                      //   width: 5,
                      // ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 40,
                              width: 140,
                            margin: EdgeInsets.symmetric(vertical:10),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 232, 140, 4)
                                  .withOpacity(0.9),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10.0),
                                  //                 <--- border radius here
                                  //               ),
                                ),
                              ),
                              child: Text(
                                'القمر الصناعى ',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'assets/images/qamar.jpg',
                                height: 150,
                                width: 140,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              
              ),
                Container(
                   padding: EdgeInsets.all(20),
                    width: double.infinity,
                  child: ElevatedButton(
                    
                            style: ElevatedButton.styleFrom(
                             shape: StadiumBorder(),
                             padding: EdgeInsets.only(left: 30, right: 30),
                              primary: Color.fromARGB(255, 230, 151, 33),
                              
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
                                fontSize: 22,
                                color: Colors.black,
                              ),
                            ),
                          ),
                ),
                SizedBox(
                  height: 10,
                ),
              // clip: Clip.antiAliasWithSaveLayer,
            ],
          ),
        ));
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
