import 'package:computer4/Screens/screen_mehwer1.dart';
import 'package:computer4/moduls/list_droos.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:video_player/video_player.dart';

import '../moduls/mehewer_details.dart';

class DrassDetails6 extends StatefulWidget {
  static const routName = '/drassdetails6';
  const DrassDetails6({super.key});

  @override
  State<DrassDetails6> createState() => _DrassDetails6State();
}

class _DrassDetails6State extends State<DrassDetails6> {
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
    AssetController = VideoPlayerController.asset("assets/vedio/problems.mp4")
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
        backgroundColor: Colors.cyan,
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
                
                            textDirection: TextDirection.rtl,
                            maxLines: 2,
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color.fromARGB(255, 8, 137, 154),
                  Color.fromARGB(255, 127, 16, 112),
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
             RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: '${mehwerOne[5].details1}',
                    style: TextStyle(
                      fontSize: 25,
                      color: Color.fromARGB(255, 2, 54, 61),
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Cairo',
                    ),
                  ),
                ],
              ),
              overflow: TextOverflow.clip,
              textAlign: TextAlign.justify,
            ),
        SizedBox(
          height: 10,
        ),
        Table(
          defaultColumnWidth: const FixedColumnWidth(195),
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          //               columnWidths: const <int, TableColumnWidth>{
          //   0: IntrinsicColumnWidth(),
          //   1: FlexColumnWidth(),
          //   2: FixedColumnWidth(200),
          // },
          border: TableBorder.all(width: 2, color: Colors.blue),
          children: [
            TableRow(
              children: [
                Container(
                  height: 50,
                  color: Colors.cyan[700],
                  child: Text(
                    'المشكلة عدم التمكن من فتح التطبيق',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                      fontFamily: 'RobotoCondensed-Bold',
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                    textDirection: TextDirection.rtl,
                  ),
                ),

              ],
            ),
            TableRow(
              children: [
                Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Container(
                    height: 180,
                    //color: Colors.cyan[400],
                    child: Text(
                      '${mehwerOne[5].details3}',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontFamily: 'RobotoCondensed-Bold',
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                      textDirection: TextDirection.rtl,
                      maxLines: 5,
                      overflow: TextOverflow.clip,
                    ),
                  ),
                ),

              ],
            ),

          ],
        ),
            SizedBox(
              height: 10,
            ),
            Table(
              defaultColumnWidth: const FixedColumnWidth(195),
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,

              border: TableBorder.all(width: 2, color: Colors.blue),
              children: [
                TableRow(
                  children: [
                    Container(
                      height: 50,
                      color: Colors.cyan[700],
                      child: Text(
                        'المشكلة :مؤشر الفارة لا يعمل ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 23,
                          fontFamily: 'RobotoCondensed-Bold',
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                        textDirection: TextDirection.rtl,
                      ),
                    ),

                  ],
                ),
                TableRow(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Container(
                        height: 180,
                        //color: Colors.cyan[400],
                        child: Text(
                          '${mehwerOne[5].details2}',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontFamily: 'RobotoCondensed-Bold',
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                          textDirection: TextDirection.rtl,
                          maxLines: 5,
                          overflow: TextOverflow.clip,
                        ),
                      ),
                    ),

                  ],
                ),

              ],
            ),
            SizedBox(
              height: 10,
            ),
            Table(
              defaultColumnWidth: const FixedColumnWidth(195),
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,

              border: TableBorder.all(width: 2, color: Colors.blue),
              children: [
                TableRow(
                  children: [
                    Container(
                      height: 50,
                      color: Colors.cyan[700],
                      child: Text(
                        'المشكلة تعجز عن ايجاد ملف ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 23,
                          fontFamily: 'RobotoCondensed-Bold',
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                        textDirection: TextDirection.rtl,
                      ),
                    ),

                  ],
                ),
                TableRow(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Container(
                        height: 330,
                        //color: Colors.cyan[400],
                        child: Text(
                          'حلول محتملة فى حال تستخدم جهاز كمبيوتر يعمل بنظامWindows :ابحث عن ملف التزيلات(DownLoads)فى حال كنت تبحث عن ملف من نوع مايكروسوفت وورد ابحث غى مجلد المستندات(Documents) اما اذا كنت تبحث عن صورة ما فابحث فى مجلد الصور(Pictures) او حاول البحث بواسطة صندوق البحث (Search Box) الموجود فى اسفل الشاشة الى يمين شعار Windows',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontFamily: 'RobotoCondensed-Bold',
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                          textDirection: TextDirection.rtl,
                          maxLines: 9,
                          overflow: TextOverflow.clip,
                        ),
                      ),
                    ),

                  ],
                ),

              ],
            ),
            SizedBox(
              height: 10,
            ),
            Table(
              defaultColumnWidth: const FixedColumnWidth(195),
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,

              border: TableBorder.all(width: 2, color: Colors.blue),
              children: [
                TableRow(
                  children: [
                    Container(
                      height: 50,
                      color: Colors.cyan[700],
                      child: Text(
                        'المشكلة توقف الشاشة عن عرض البيانات ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 23,
                          fontFamily: 'RobotoCondensed-Bold',
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                        textDirection: TextDirection.rtl,
                      ),
                    ),

                  ],
                ),
                TableRow(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Container(
                        height: 220,
                        //color: Colors.cyan[400],
                        child: Text(
                          'حلول محتملة فى حالى كنت تستخدم جهاز كمبيوتر يعمل بنظام Windows :-اضغط على ازارر من لوحة المفاتيح (CTRL) و(ALT) و(DEL) معا لمدة قصيرة من الزمن . فى حال عدم نجاح هذا الحل حاول اطفاء جهازك و اعادة تشغيله.',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontFamily: 'RobotoCondensed-Bold',
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                          textDirection: TextDirection.rtl,
                          maxLines:6,
                          overflow: TextOverflow.clip,
                        ),
                      ),
                    ),

                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Table(
              defaultColumnWidth: const FixedColumnWidth(195),
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,

              border: TableBorder.all(width: 2, color: Colors.blue),
              children: [
                TableRow(
                  children: [
                    Container(
                      height: 50,
                      color: Colors.cyan[700],
                      child: Text(
                        'المشكلة عدم التمكن من الكتابة على لوحة المفاتيح ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'RobotoCondensed-Bold',
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                        textDirection: TextDirection.rtl,
                      ),
                    ),

                  ],
                ),
                TableRow(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Container(
                        height: 270,
                        //color: Colors.cyan[400],
                        child: Text(
                          'حلول محتملة فى حال كنت تستخدم جهاز كمبيوتر يعمل بنظام Windows :تاكد من توصيل كابل لوحة المفاتيح فى المكان المناسب المتصل باللوحة الام و يفضل بعد ذلك اعادة تشغيل الجهاز .اذا لم تحل المشكلة ربما يكون هناك خلل فى لوحة المفاتيح و قد تحتاج الى استبدالها .',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontFamily: 'RobotoCondensed-Bold',
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                          textDirection: TextDirection.rtl,
                          maxLines: 7,
                          overflow: TextOverflow.clip,
                        ),
                      ),
                    ),

                  ],
                ),

              ],
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
                  primary: Colors.cyan[900],

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
