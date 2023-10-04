import 'package:computer4/Screens/screen_mehwer2.dart';

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import '../Screens/screen_mehwer3.dart';
import '../moduls/list_droos.dart';
import '../moduls/mehewer_details.dart';

class Drass4Mehwer3 extends StatefulWidget {
  static const routName = '/Drass4Mehwer3';
  const Drass4Mehwer3({super.key});

  @override
  State<Drass4Mehwer3> createState() => _Drass4Mehwer3State();
}

class _Drass4Mehwer3State extends State<Drass4Mehwer3> {
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
    AssetController = VideoPlayerController.asset("assets/vedio/etsal.mp4")
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
        backgroundColor: Color.fromARGB(255, 29, 4, 139),
        centerTitle: true,
        elevation: 5,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_sharp),
          color: Colors.white,
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
                  Color.fromARGB(255, 11, 43, 168),
                  Color.fromARGB(255, 64, 178, 230),
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
              margin: EdgeInsets.only(left: 250),
              width: 130,
              height: 40,
              child: Text(
                'لنتعلم',
                style: TextStyle(
                  color: Colors.black,
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
                    Colors.blue.shade500,
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
              padding: EdgeInsets.all(5.0),
              
              child: RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: 'يمكنك استخدام الانترنت بشكل متزامن و غير متزامن',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 11, 10, 11),
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
             Table(
                  // defaultColumnWidth: const FixedColumnWidth(0),
                  // defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  //               columnWidths: const <int, TableColumnWidth>{
                  //   0: IntrinsicColumnWidth(),
                  //   1: FlexColumnWidth(),
                  //   2: FixedColumnWidth(180),
                  // },
                  border: TableBorder.all(width: 2, color: Colors.blue),
                  children: [
                    TableRow(
                      children: [
                        Container(
                          height: 40,
                         
                          color: Colors.blue[700],
                          child: Text(
                            'الاتصال المتزامن',
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
                         
                          color:Colors.blue[700],
                          child: Text(
                            'الاتصال غير المتزامن',
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
                            height: 240,
                            //color: Colors.indigo,
                            child: Text(
                              '${Mehwerthird[3].title}',
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
                            height:240,
                           // color: Colors.indigo,
                            child: Text(
                              '${Mehwerthird[3].details1}',
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
                  ],
                ),
                SizedBox(
              height: 10,
            ), 
            Container(
              margin: EdgeInsets.only(left: 220),
              width: 180,
              height: 40,
              child: Text(
                'الاتصال المتزامن',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.blue.shade500,
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
                margin: EdgeInsets.only(left: 150),
                width: 200,
                height: 40,
                alignment: Alignment.centerRight,
                child: Text(
                  'محادثات الفيديو Video chats',
                  style: TextStyle(
                    color: Colors.blue[900],
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.right,
                ),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
                ),
              ),  
              //هذا السطر يقوم بتوسغبين العنصار
              SizedBox(
              height: 5,
            ),
             Container(
             padding :EdgeInsets.all(5.0),
                 width: double.infinity,
              height: 80,
                alignment: Alignment.center,
                child: Text(
                  '${Mehwerthird[3].details2}',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.justify,
                ),
                
                // alignment: AlignmentDirectional.center,
              ),
               Container(
                margin: EdgeInsets.only(left: 270),
                width: 160,
                height: 40,
                alignment: Alignment.centerRight,
                child: Text(
                  'الادوات اللازمة',
                  style: TextStyle(
                    color: Colors.blue[900],
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.right,
                ),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
                ),
              ),  
              SizedBox(
              height: 5,
            ),
             Container(
             padding :EdgeInsets.all(5.0),
                 width: double.infinity,
              height: 80,
                alignment: Alignment.center,
                child: Text(
                  'جهاز مزود بكاميرا و مكبرات صوت و تطبيق للتليفون المحمود او برامج لمحادثات الفيديو .',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.justify,
                ),
                
                // alignment: AlignmentDirectional.center,
              ),
               SizedBox(
              height: 5,
            ),
              Container(
                margin: EdgeInsets.only(left: 270),
                width: 160,
                height: 40,
                alignment: Alignment.centerRight,
                child: Text(
                  'المراسلة الفورية',
                  style: TextStyle(
                    color: Colors.blue[900],
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.right,
                ),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
                ),
              ),  
              SizedBox(
              height: 5,
            ),
            Container(
             padding :EdgeInsets.all(5.0),
                 width: double.infinity,
              height: 120,
                alignment: Alignment.center,
                child: Text(
                  '${Mehwerthird[3].details3}',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.justify,
                ),
                
                // alignment: AlignmentDirectional.center,
              ),
               SizedBox(
              height: 5,
            ),
              Container(
                margin: EdgeInsets.only(left: 220),
                width: 180,
                height: 40,
                alignment: Alignment.centerRight,
                child: Text(
                  'تطبيق التليفون المحمول',
                  style: TextStyle(
                    color: Colors.blue[900],
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.right,
                ),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
                ),
              ), 
              SizedBox(
              height: 5,
            ),
              Container(
             padding :EdgeInsets.all(5.0),
                 width: double.infinity,
              height: 170,
                alignment: Alignment.center,
                child: Text(
                  '${Mehwerthird[3].imageUrl2}',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.justify,
                ),
                
                // alignment: AlignmentDirectional.center,
              ), 
              Container(
                margin: EdgeInsets.only(left: 280),
                width: 150,
                height: 40,
                alignment: Alignment.centerRight,
                child: Text(
                  'غرف الدردشة',
                  style: TextStyle(
                    color: Colors.blue[900],
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.right,
                ),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
                ),
              ),  
              
             Container(
             padding :EdgeInsets.all(5.0),
                 width: double.infinity,
              height: 170,
                alignment: Alignment.center,
                child: Text(
                  '${Mehwerthird[3].imageUrl}',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.justify,
                ),
                
                // alignment: AlignmentDirectional.center,
              ), 
               Container(
              margin: EdgeInsets.only(left: 180),
              width: 200,
              height: 40,
              child: Text(
                'الاتصال غير المتزامن',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.blue.shade500,
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
                margin: EdgeInsets.only(left: 270),
                width: 160,
                height: 40,
                alignment: Alignment.centerRight,
                child: Text(
                  'البريد الاليكترونى',
                  style: TextStyle(
                    color: Colors.blue[900],
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.right,
                ),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
                ),
              ),  
               Container(
             padding :EdgeInsets.all(5.0),
                 width: double.infinity,
              height: 250,
                alignment: Alignment.center,
                child: Text(
                  '${Mehwerthird[3].vedioUrl}',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.justify,
                ),
                
                // alignment: AlignmentDirectional.center,
              ),
               Container(
                margin: EdgeInsets.only(left: 270),
                width: 160,
                height: 40,
                alignment: Alignment.centerRight,
                child: Text(
                  'الادوات اللازمة',
                  style: TextStyle(
                    color: Colors.blue[900],
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.right,
                ),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
                ),
              ),
              SizedBox(
              height: 5,
            ), 
             Container(
             padding :EdgeInsets.all(5.0),
                 width: double.infinity,
              height: 120,
                alignment: Alignment.center,
                child: Text(
                  'أحد متصفحات الانترنت للوصول الى موقع البريد الالكترونى أو تطبيق البريد الالكترونى على جهازك المحمول.',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.justify,
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
                  primary: Color.fromARGB(255, 40, 2, 129),

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
