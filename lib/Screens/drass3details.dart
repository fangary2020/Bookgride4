import '../moduls/list_droos.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import '../Screens/screen_mehwer1.dart';

import '../moduls/mehewer_details.dart';

class DrassDetails3 extends StatefulWidget {
  static const routName = '/drassdetails3';
  const DrassDetails3({super.key});

  @override
  State<DrassDetails3> createState() => _DrassDetails3State();
}

class _DrassDetails3State extends State<DrassDetails3> {
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
    AssetController = VideoPlayerController.asset("assets/vedio/computer.mp4")
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
        backgroundColor: Colors.indigo,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Column(
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
                RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: '${mehwerOne[2].details1}',
                        style: TextStyle(
                          fontSize: 25,
                          color: Color.fromARGB(255, 9, 9, 9),
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Cairo',
                        ),
                      ),
                      TextSpan(
                        text: '${mehwerOne[2].details2}',
                        style: TextStyle(
                          fontSize: 25,
                          color: Color.fromARGB(255, 54, 2, 195),
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Cairo',
                        ),
                      ),
                      TextSpan(
                        text: '${mehwerOne[2].details3}',
                        style: TextStyle(
                          fontSize: 25,
                          color: Color.fromARGB(255, 13, 117, 25),
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
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'وحدات الادخال ',
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
                Table(
                  defaultColumnWidth: const FixedColumnWidth(195),
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  //               columnWidths: const <int, TableColumnWidth>{
                  //   0: IntrinsicColumnWidth(),
                  //   1: FlexColumnWidth(),
                  //   2: FixedColumnWidth(200),
                  // },
                  border: TableBorder.all(width: 2, color: Colors.red),
                  children: [
                    TableRow(
                      children: [
                        Container(
                          height: 50,
                          color: Colors.indigo,
                          child: Text(
                            'اسماء المكونات',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'RobotoCondensed-Bold',
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          height: 50,
                          color: Colors.indigo,
                          child: Text(
                            'نوع البيانات المدخلة ',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'RobotoCondensed-Bold',
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Container(
                          height: 50,
                          //color: Colors.indigo,
                          child: Text(
                            'لوحة المفاتيح',
                            style: TextStyle(
                              color: Color.fromARGB(255, 27, 43, 133),
                              fontSize: 20,
                              fontFamily: 'RobotoCondensed-Bold',
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          height: 50,
                         // color: Colors.indigo,
                          child: Text(
                            'حروف و ارقام  ',
                            style: TextStyle(
                              color: Color.fromARGB(255, 27, 43, 133),
                              fontSize: 20,
                              fontFamily: 'RobotoCondensed-Bold',
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                     
                     TableRow(
                      children: [
                        Container(
                          height: 50,
                          //color: Colors.indigo,
                          child: Text(
                            'الميكروفون',
                            style: TextStyle(
                              color: Color.fromARGB(255, 27, 43, 133),
                              fontSize: 20,
                              fontFamily: 'RobotoCondensed-Bold',
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          height: 50,
                         // color: Colors.indigo,
                          child: Text(
                            'اصوات و موسيقى',
                            style: TextStyle(
                              color: Color.fromARGB(255, 27, 43, 133),
                              fontSize: 20,
                              fontFamily: 'RobotoCondensed-Bold',
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        
                      ],
                    ),
                    TableRow(
                      children: [
                        Container(
                          height: 50,
                          //color: Colors.indigo,
                          child: Text(
                            'الة التصوير او الكاميرا ',
                            style: TextStyle(
                              color: Color.fromARGB(255, 27, 43, 133),
                              fontSize: 20,
                              fontFamily: 'RobotoCondensed-Bold',
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          height: 50,
                         // color: Colors.indigo,
                          child: Text(
                            'صور او ملفات فيديو',
                            style: TextStyle(
                              color: Color.fromARGB(255, 27, 43, 133),
                              fontSize: 20,
                              fontFamily: 'RobotoCondensed-Bold',
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Container(
                          height: 50,
                          //color: Colors.indigo,
                          child: Text(
                            'الماسح الضوئى',
                            style: TextStyle(
                              color: Color.fromARGB(255, 27, 43, 133),
                              fontSize: 20,
                              fontFamily: 'RobotoCondensed-Bold',
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          height: 50,
                         // color: Colors.indigo,
                          child: Text(
                            ' نصوص و صور من الورق',
                            style: TextStyle(
                              color: Color.fromARGB(255, 27, 43, 133),
                              fontSize: 20,
                              fontFamily: 'RobotoCondensed-Bold',
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
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
                  alignment: Alignment.center,
                  child: Text(
                    'وحدات الاخراج ',
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
                  Table(
                  defaultColumnWidth: const FixedColumnWidth(195),
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  //               columnWidths: const <int, TableColumnWidth>{
                  //   0: IntrinsicColumnWidth(),
                  //   1: FlexColumnWidth(),
                  //   2: FixedColumnWidth(200),
                  // },
                  border: TableBorder.all(width: 2, color: Colors.red),
                  children: [
                    TableRow(
                      children: [
                        Container(
                          height: 50,
                          color: Colors.indigo,
                          child: Text(
                            'اسماء المكونات',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'RobotoCondensed-Bold',
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          height: 50,
                          color: Colors.indigo,
                          child: Text(
                            'نوع البيانات المدخلة ',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'RobotoCondensed-Bold',
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Container(
                          height: 70,
                          //color: Colors.indigo,
                          child: Text(
                            'شاشة العرض ',
                            style: TextStyle(
                              color: Color.fromARGB(255, 27, 43, 133),
                              fontSize: 20,
                              fontFamily: 'RobotoCondensed-Bold',
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          height: 70,
                         // color: Colors.indigo,
                          child: Text(
                            'معلومات بصرية نصوص و صور و فيديو',
                            style: TextStyle(
                              color: Color.fromARGB(255, 27, 43, 133),
                              fontSize: 18,
                              fontFamily: 'RobotoCondensed-Bold',
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                     
                     TableRow(
                      children: [
                        Container(
                          height: 50,
                          //color: Colors.indigo,
                          child: Text(
                            'نظام برايل الطرفى',
                            style: TextStyle(
                              color: Color.fromARGB(255, 27, 43, 133),
                              fontSize: 20,
                              fontFamily: 'RobotoCondensed-Bold',
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          height: 50,
                         // color: Colors.indigo,
                          child: Text(
                            'نص مكتوب للمكفوفين',
                            style: TextStyle(
                              color: Color.fromARGB(255, 27, 43, 133),
                              fontSize: 18,
                              fontFamily: 'RobotoCondensed-Bold',
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        
                      ],
                    ),
                    TableRow(
                      children: [
                        Container(
                          height: 50,
                          //color: Colors.indigo,
                          child: Text(
                            'مكبر الصوت',
                            style: TextStyle(
                              color: Color.fromARGB(255, 27, 43, 133),
                              fontSize: 20,
                              fontFamily: 'RobotoCondensed-Bold',
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          height: 50,
                         // color: Colors.indigo,
                          child: Text(
                            'معلومات سمعية',
                            style: TextStyle(
                              color: Color.fromARGB(255, 27, 43, 133),
                              fontSize: 20,
                              fontFamily: 'RobotoCondensed-Bold',
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Container(
                          height: 50,
                          //color: Colors.indigo,
                          child: Text(
                            'مركب الكلام',
                            style: TextStyle(
                              color: Color.fromARGB(255, 27, 43, 133),
                              fontSize: 20,
                              fontFamily: 'RobotoCondensed-Bold',
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          height: 50,
                         // color: Colors.indigo,
                          child: Text(
                            'معلومات سمعية',
                            style: TextStyle(
                              color: Color.fromARGB(255, 27, 43, 133),
                              fontSize: 20,
                              fontFamily: 'RobotoCondensed-Bold',
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        
                      ],
                    ),
                    TableRow(
                      children: [
                        Container(
                          height: 50,
                          //color: Colors.indigo,
                          child: Text(
                            'الة الطباعة ',
                            style: TextStyle(
                              color: Color.fromARGB(255, 27, 43, 133),
                              fontSize: 20,
                              fontFamily: 'RobotoCondensed-Bold',
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          height: 50,
                         // color: Colors.indigo,
                          child: Text(
                            'نصوص و صور على الورق',
                            style: TextStyle(
                              color: Color.fromARGB(255, 27, 43, 133),
                              fontSize: 20,
                              fontFamily: 'RobotoCondensed-Bold',
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
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
                              primary: Colors.indigo,
                              
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
            )
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
