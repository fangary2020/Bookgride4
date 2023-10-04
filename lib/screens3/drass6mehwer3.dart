
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import '../Screens/screen_mehwer3.dart';
import '../moduls/list_droos.dart';
import '../moduls/mehewer_details.dart';

class Drass6Mehwer3 extends StatefulWidget {
  static const routName = '/Drass6Mehwer3';
  const Drass6Mehwer3({super.key});

  @override
  State<Drass6Mehwer3> createState() => _Drass6Mehwer3State();
}

class _Drass6Mehwer3State extends State<Drass6Mehwer3> {
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
    AssetController = VideoPlayerController.asset("assets/vedio/baat.mp4")
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
        backgroundColor: Color.fromARGB(255, 4, 133, 32),
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
                  fontSize: 25,
                ),
                textAlign: TextAlign.center,
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color.fromARGB(255, 3, 86, 6),
                  Color.fromARGB(255, 95, 223, 97),
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
             Container(
              // margin: EdgeInsets.only(left: 40),
              width: double.infinity,
              height: 50,
              alignment: Alignment.center,
              child: Text(
                'بيئات التعلم عبر الانترنت',
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
                    Color.fromARGB(255, 106, 228, 90),
                    Color.fromARGB(255, 14, 72, 17),
                  ],
                ),

                //color: Colors.orangeAccent[100],
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
                border: Border.all(
                  color: Color.fromARGB(255, 25, 25, 24),
                  width: 2,
                ),
              ),
              // alignment: AlignmentDirectional.center,
            ),
            SizedBox(
              height: 5,
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
                      text: '${Mehwerthird[5].title}',
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
              // margin: EdgeInsets.only(left: 40),
              width: double.infinity,
              height: 50,
              alignment: Alignment.center,
              child: Text(
                'مصادر التعلم عبر الانترنت',
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
                    Color.fromARGB(255, 106, 228, 90),
                    Color.fromARGB(255, 14, 72, 17),
                  ],
                ),

                //color: Colors.orangeAccent[100],
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
                border: Border.all(
                  color: Color.fromARGB(255, 25, 25, 24),
                  width: 2,
                ),
              ),
              // alignment: AlignmentDirectional.center,
            ),
            SizedBox(
              height: 5,
            ),
             Container(
              padding: EdgeInsets.all(10.0),
             
              child: RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: '${Mehwerthird[5].details1}',
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
              height: 5,
            ),
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(
                  'assets/images/bank22.jpg',
                  height: 230,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
              ),
            ),
             SizedBox(
              height:10,
            ),
             Table(
                  // defaultColumnWidth: const FixedColumnWidth(0),
                  // defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  //               columnWidths: const <int, TableColumnWidth>{
                  //   0: IntrinsicColumnWidth(),
                  //   1: FlexColumnWidth(),
                  //   2: FixedColumnWidth(180),
                  // },
                  border: TableBorder.all(width: 2, color: Colors.black),
                  children: [
                    TableRow(
                      children: [
                        Container(
                          height: 40,
                         
                          color: Colors.green[900],
                          child: Text(
                            'بنك المعرفة المصرى',
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
                            height: 130,
                            color: Colors.limeAccent,
                            child: Text(
                              '${Mehwerthird[5].details1}',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontFamily: 'RobotoCondensed-Bold',
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                           
                          ),
                        ),
                       
                      ],
                    ),    
                  ],
                ),
                SizedBox(
              height:10,
            ),
                 Table(
                  // defaultColumnWidth: const FixedColumnWidth(0),
                  // defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  //               columnWidths: const <int, TableColumnWidth>{
                  //   0: IntrinsicColumnWidth(),
                  //   1: FlexColumnWidth(),
                  //   2: FixedColumnWidth(180),
                  // },
                  border: TableBorder.all(width: 2, color: Colors.black),
                  children: [
                    TableRow(
                      children: [
                        Container(
                          height: 40,
                         
                          color: Colors.purple[700],
                          child: Text(
                            ' Vlaby فلابى ',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: 'RobotoCondensed-Bold',
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          height: 40,
                         
                          color:Color.fromARGB(255, 5, 107, 122),
                          child: Text(
                            'ناشيونال جيوجرافيك',
                            style: TextStyle(
                              color: Colors.white,
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
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            height: 180,
                            color: Color.fromARGB(255, 232, 178, 241),
                            child: Text(
                              '${Mehwerthird[5].details2}',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontFamily: 'RobotoCondensed-Bold',
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            height:180,
                           color: Color.fromARGB(255, 177, 242, 242),
                            child: Text(
                              '${Mehwerthird[5].details3}',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontFamily: 'RobotoCondensed-Bold',
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.justify,
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
                  // defaultColumnWidth: const FixedColumnWidth(0),
                  // defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  //               columnWidths: const <int, TableColumnWidth>{
                  //   0: IntrinsicColumnWidth(),
                  //   1: FlexColumnWidth(),
                  //   2: FixedColumnWidth(180),
                  // },
                  border: TableBorder.all(width: 2, color: Colors.black),
                  children: [
                    TableRow(
                      children: [
                        Container(
                          height: 40,
                         
                          color: Colors.brown[900],
                          child: Text(
                            'مصمم خرائط تفاعلى ',
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
                            height: 130,
                            color: Colors.yellow,
                            child: Text(
                              '${Mehwerthird[5].imageUrl}',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontFamily: 'RobotoCondensed-Bold',
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                           
                          ),
                        ),
                       
                      ],
                    ),    
                  ],
                ),
                 SizedBox(
              height: 5,
            ),
             Container(
              padding: EdgeInsets.all(10.0),
             
              child: RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: 'تعد الادوات الرقمية الموثوقة عبر الانترنت مصادر معلومات لا تقدر بثمن . و يعد موقع مصمم الخرائط التفاعلى من المواقع الآمنة للبحث و جمع البيانات .',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
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
            Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  padding: EdgeInsets.only(left: 30, right: 30),
                  primary: Color.fromARGB(255, 1, 49, 15),

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
