import 'package:computer4/Screens/screen_mehwer1.dart';

import '../moduls/list_droos.dart';
import '../moduls/mehewer_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:video_player/video_player.dart';

class DrassDetails5 extends StatefulWidget {
  static const routName = '/drassdetails5';
  const DrassDetails5({super.key});

  @override
  State<DrassDetails5> createState() => _DrassDetails5State();
}

class _DrassDetails5State extends State<DrassDetails5> {
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
    AssetController = VideoPlayerController.asset("assets/vedio/hmm.mp4")
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
        backgroundColor: Colors.pink,
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
                  fontSize: 25,
                ),
                textAlign: TextAlign.center,
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color.fromARGB(255, 156, 23, 67),
                  Color.fromARGB(255, 202, 88, 126),
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
            RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: '${mehwerOne[4].details1}',
                    style: TextStyle(
                      fontSize: 25,
                      color: Color.fromARGB(255, 198, 3, 3),
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Cairo',
                    ),
                  ),
                ],
              ),
              overflow: TextOverflow.clip,
              textAlign: TextAlign.justify,
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                'يوجد الكثير من الامثلة عن التكنولوجيا المساعدة اليك بعضا منها :',
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontFamily: 'Montserrat-Bold',
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
                textAlign: TextAlign.center,
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color.fromARGB(255, 243, 183, 183),
                  Color.fromARGB(255, 241, 242, 243),
                ], begin: Alignment.topLeft, end: Alignment.topRight),
                borderRadius: BorderRadius.circular(15),
              ),
              width: double.infinity,
              height: 100,
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              children: [
                //CrossAxisAlignment:CrossAxisAlignment.center,
                Container(
                  alignment: AlignmentDirectional.center,
                  height: 50,
                  color: Color.fromARGB(255, 147, 13, 3),
                  child: Text(
                    'برمجيات تكبير الشاشة',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontFamily: 'RobotoCondensed-Bold',
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    '${mehwerOne[4].imageUrl}',
                    height: 170,
                    width: 300,
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                    padding: EdgeInsets.all(8.0),
                    margin: EdgeInsets.all(8.0),
                  alignment: AlignmentDirectional.center,
                  height: 150,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.white,
                      Colors.redAccent,
                    ], begin: Alignment.topLeft, end: Alignment.topRight),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text(
                    '${mehwerOne[4].details2}',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'RobotoCondensed-Bold',
                      fontWeight: FontWeight.bold,
                      overflow: TextOverflow.visible,
                    ),
                    textDirection: TextDirection.rtl,
                    maxLines:4,
                    textAlign: TextAlign.justify,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: AlignmentDirectional.center,
                  height: 50,
                  color: Color.fromARGB(255, 147, 13, 3),
                  child: Text(
                    'برمجيات التواصل البديلة',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontFamily: 'RobotoCondensed-Bold',
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                 ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    '${mehwerOne[4].imageUrl2}',
                    height: 170,
                    width: 300,
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(height: 10,),
                 Container(
                    padding: EdgeInsets.all(8.0),
                    margin: EdgeInsets.all(8.0),
                  alignment: AlignmentDirectional.center,
                  height: 150,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.white,
                      Colors.redAccent,
                    ], begin: Alignment.topLeft, end: Alignment.topRight),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text(
                    '${mehwerOne[4].details3}',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'RobotoCondensed-Bold',
                      fontWeight: FontWeight.bold,
                      overflow: TextOverflow.visible,
                    ),
                    textDirection: TextDirection.rtl,
                    maxLines:4,
                    textAlign: TextAlign.justify,
                  ),
                ),
                Container(
                  alignment: AlignmentDirectional.center,
                  height: 50,
                  color: Color.fromARGB(255, 147, 13, 3),
                  child: Text(
                    'سماعات الاذن',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontFamily: 'RobotoCondensed-Bold',
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/images/ear.jpg',
                    height: 170,
                    width: 300,
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                    padding: EdgeInsets.all(8.0),
                    margin: EdgeInsets.all(8.0),
                  alignment: AlignmentDirectional.center,
                  height: 220,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.white,
                      Colors.redAccent,
                    ], begin: Alignment.topLeft, end: Alignment.topRight),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text(
                    'تساعد  السماعات الاشخاص الذين يعانون من مشاكل فى السمع . واصبح اليوم بالامكان توصيل بعض هذه السماعات الحديثة الطراز بالتليفون المحمول .و كذلك تضم الكثير منها تطبيقات خاصة بالهواتف الذكية تتيح للمستخدمين ضبط سماعاتهم من خلال استعمال هواتفهم',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'RobotoCondensed-Bold',
                      fontWeight: FontWeight.bold,
                      overflow: TextOverflow.visible,
                    ),
                    textDirection: TextDirection.rtl,
                    maxLines:6,
                    textAlign: TextAlign.justify,
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  alignment: AlignmentDirectional.center,
                  height: 50,
                  color: Color.fromARGB(255, 147, 13, 3),
                  child: Text(
                    'الادوات الرياضية',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontFamily: 'RobotoCondensed-Bold',
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 10,),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/images/speed.jpg',
                    height: 170,
                    width: 300,
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                    padding: EdgeInsets.all(8.0),
                    margin: EdgeInsets.all(8.0),
                  alignment: AlignmentDirectional.center,
                  height: 280,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color.fromRGBO(255, 255, 255, 1),
                      Colors.redAccent,
                    ], begin: Alignment.topLeft, end: Alignment.topRight),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text(
                    'تسمح ادوات رياضية معينة للاشخاص ذوى الهمم , و الهواة الذين فقدوا احد اطرافهم بتسلق الجبال . و بالتالى يمكن للتكنولوجيا المساعدة ان تساعد فى القيام بالانشطة العادية و الاستثنائية و هناك الكثير من الادوات الاخرى التى يمكنك البحث عنها مثل طابات كرة القدم التى تصدر صوتا و الدرجات الهوائية الثلاثية العجلات و التى يمكن تشغليها بواسطة اليدين .',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'RobotoCondensed-Bold',
                      fontWeight: FontWeight.bold,
                      overflow: TextOverflow.visible,
                    ),
                    textDirection: TextDirection.rtl,
                    maxLines:8,
                    textAlign: TextAlign.justify,
                  ),
                ),
                SizedBox(height: 10,),
                 Container(
                  padding: EdgeInsets.all(20),
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(),
                      padding: EdgeInsets.only(left: 30, right: 30),
                      primary: Colors.red,

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
