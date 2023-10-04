import 'package:computer4/Screens/screen_mehwer2.dart';

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import '../Screens/screen_mehwer3.dart';
import '../moduls/list_droos.dart';
import '../moduls/mehewer_details.dart';

class Drass5Mehwer3 extends StatefulWidget {
  static const routName = '/Drass5Mehwer3';
  const Drass5Mehwer3({super.key});

  @override
  State<Drass5Mehwer3> createState() => _Drass5Mehwer3State();
}

class _Drass5Mehwer3State extends State<Drass5Mehwer3> {
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
    AssetController = VideoPlayerController.asset("assets/vedio/drass5.mp4")
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
    //final mehwerIdentifer = routeArg['identifer'];
    List<DroosDetails> Mehwerthird = droosdetails3;
    return Scaffold(
      appBar: AppBar(
        title: Text(mehwerId!),
        backgroundColor: Color.fromARGB(255, 151, 151, 5),
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
                  color: Colors.black,
                  fontFamily: 'Cairo',
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
                textAlign: TextAlign.center,
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  const Color.fromARGB(255, 169, 222, 9),
                  Colors.orangeAccent,
                ], begin: Alignment.topLeft, end: Alignment.topRight),
                borderRadius: BorderRadius.circular(15),
                 border: Border.all(
                  color: Colors.black,
                  width: 2,
                ),
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
                    const Color.fromARGB(255, 169, 222, 9),
                    Colors.orange,
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
                      text: 'كيفية استخدام أدوات تكنولوجيا المعلومات و الاتصالات للتواصل',
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
                  border: TableBorder.all(width: 2, color: Colors.black),
                  children: [
                    TableRow(
                      children: [
                        Container(
                          height: 40,
                         
                          color: Colors.limeAccent[700],
                          child: Text(
                            'إجراء محادثات الفيديو',
                            style: TextStyle(
                              color: Colors.black,
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
                          child: Column(
                            children: [
                              Container(
                                height: 280,
                                //color: Colors.yellowAccent,
                                child: Text(
                                  '${Mehwerthird[4].title}',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontFamily: 'RobotoCondensed-Bold',
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.justify,
                                ),
                               
                              ),
                              Container(
                                height: 160,
                                 child: Text(
                                  '${Mehwerthird[4].details1}',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 169, 30, 2),
                                    fontSize: 18,
                                    fontFamily: 'RobotoCondensed-Bold',
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.justify,
                                ),
                              )
                            ],
                          ),
                        ),
                       
                      ],
                    ),
                    TableRow(
                      children: [
                        Container(
                          height: 40,
                         
                          color: Colors.limeAccent[700],
                          child: Text(
                            'غرف الدردشة',
                            style: TextStyle(
                              color: Colors.black,
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
                            height: 160,
                            //color: Colors.indigo,
                            child: Text(
                              '${Mehwerthird[4].details2}',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
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
                        Container(
                          height: 40,
                         
                          color: Colors.limeAccent[700],
                          child: Text(
                            'المراسلة الفورية',
                            style: TextStyle(
                              color: Colors.black,
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
                            height: 190,
                            //color: Colors.indigo,
                            child: Text(
                              '${Mehwerthird[4].details3}',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
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
                        Container(
                          height: 40,
                         
                          color: Colors.limeAccent[700],
                          child: Text(
                            'البريد الالكترونى',
                            style: TextStyle(
                              color: Colors.black,
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
                          child: Column(
                            children: [
                              Container(
                                height: 190,
                                //color: Colors.indigo,
                                child: Text(
                                  '${Mehwerthird[4].imageUrl}',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontFamily: 'RobotoCondensed-Bold',
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.justify,
                                ),
                              ),
                             Container(
                                height: 140,
                               color: Colors.indigo,
                                child: Text(
                                  '${Mehwerthird[4].imageUrl2}',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontFamily: 'RobotoCondensed-Bold',
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.justify,
                                ),
                              ), 
                            ],
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
                  primary: Color.fromARGB(255, 97, 103, 26),

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
