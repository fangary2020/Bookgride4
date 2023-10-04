import '../Screens/screen_mehwer2.dart';
import '../Screens/screen_mehwer3.dart';
import '../moduls/list_droos.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import '../Screens/screen_mehwer1.dart';

import '../moduls/mehewer_details.dart';

class  Drass2Mehwer3 extends StatefulWidget {
  static const routName = '/Drass2Mehwer3';
  const Drass2Mehwer3({super.key});

  @override
  State<Drass2Mehwer3> createState() => _Drass2Mehwer3State();
}

class _Drass2Mehwer3State extends State<Drass2Mehwer3> {
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
    AssetController = VideoPlayerController.asset("assets/vedio/citizen.mp4")
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
        backgroundColor: Color.fromARGB(255, 145, 100, 21),
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
                      fontSize: 27,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color.fromARGB(222, 78, 22, 3),
                      Color.fromARGB(255, 235, 97, 46),
                    ], begin: Alignment.topLeft, end: Alignment.topRight),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  width: double.infinity,
                  height: 50,
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
                        text: '${Mehwerthird[1].title}',
                        style: TextStyle(
                          fontSize: 23,
                          color: Color.fromARGB(255, 9, 9, 9),
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
                    'حقوق و مسئوليات المواطن الرقمى',
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
                      Color.fromARGB(222, 78, 22, 3),
                      Color.fromARGB(255, 235, 97, 46),
                    ], begin: Alignment.topLeft, end: Alignment.topRight),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  width: double.infinity,
                  height: 50,
                ),
                SizedBox(
                  height: 10,
                ),
                Table(
                  // defaultColumnWidth: const FixedColumnWidth(0),
                  // defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  //               columnWidths: const <int, TableColumnWidth>{
                  //   0: IntrinsicColumnWidth(),
                  //   1: FlexColumnWidth(),
                  //   2: FixedColumnWidth(180),
                  // },
                  border: TableBorder.all(width: 2, color: Colors.red),
                  children: [
                    TableRow(
                      children: [
                        Container(
                          height: 40,
                         
                          color: Colors.brown[700],
                          child: Text(
                            'الحقــــوق',
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
                          height: 40,
                         
                          color:Colors.brown[700],
                          child: Text(
                            'المسئوليــــات',
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
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            height: 180,
                            //color: Colors.indigo,
                            child: Text(
                              '${Mehwerthird[1].details1}',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontFamily: 'RobotoCondensed-Bold',
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            height:180,
                           // color: Colors.indigo,
                            child: Text(
                              'عليك ألا تقوم بقرصنة محتوى محميا أبدا بهدف مشاركته مع الاخرين أو بيعه .',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontFamily: 'RobotoCondensed-Bold',
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                     
                     TableRow(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            height: 200,
                           color: Color.fromARGB(255, 255, 245, 159),
                            child: Text(
                              '${Mehwerthird[1].details2}',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontFamily: 'RobotoCondensed-Bold',
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            height: 200,
                            color: Color.fromARGB(255, 255, 245, 159),
                            child: Text(
                              '${Mehwerthird[1].details3}',
                              style: TextStyle(
                                color:Colors.black,
                                fontSize: 16,
                                fontFamily: 'RobotoCondensed-Bold',
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        
                      ],
                    ),
                    TableRow(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            height: 160,
                            //color: Colors.indigo,
                            child: Text(
                           
                            '${Mehwerthird[1].imageUrl}',
                              style: TextStyle(
                                color: Color.fromARGB(255, 27, 43, 133),
                                fontSize: 16,
                                fontFamily: 'RobotoCondensed-Bold',
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            height: 160,
                           // color: Colors.indigo,
                            child: Text(
                             '${Mehwerthird[1].imageUrl2}',
                              style: TextStyle(
                                color: Color.fromARGB(255, 27, 43, 133),
                                fontSize: 16,
                                fontFamily: 'RobotoCondensed-Bold',
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            height:240,
                             color: Color.fromARGB(255, 255, 245, 159),
                            child: Text(
                              'لديك الحق فى استخدام الانترنت عندما تحتاج الى ذلك أو ترغب فيه .فى ظل احترام القانون .',
                              style: TextStyle(
                                color: Color.fromARGB(255, 27, 43, 133),
                                fontSize: 16,
                                fontFamily: 'RobotoCondensed-Bold',
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            height: 240,
                            color: Color.fromARGB(255, 255, 245, 159),
                            child: Text(
                               '${Mehwerthird[1].vedioUrl}',
                              style: TextStyle(
                                color: Color.fromARGB(255, 27, 43, 133),
                                fontSize: 16,
                                fontFamily: 'RobotoCondensed-Bold',
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
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
                              primary: const Color.fromARGB(255, 88, 27, 5),
                              
                            // minimumSize: Size(100, 20),
                            ),
                            
                            onPressed: () {
                              Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DroosMehwer3(),
                            ),
                          );
                             },
                            child: Text(
                              'عودة الى المحورالثالث  ',
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
