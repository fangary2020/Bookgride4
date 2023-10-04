import '../Screens/screen_mehwer1.dart';

import 'package:video_player/video_player.dart';
import '../moduls/list_droos.dart';
import 'package:flutter/material.dart';

import '../moduls/mehewer_details.dart';

class Drassdetails1 extends StatefulWidget {
  static const routName = '/drassdetails1';

  // void ListDroos(BuildContext ctx) {
  //   Navigator.of(ctx).pushNamed(
  //    // DrossMain.ScreenRoute,
  //   );
  // }
  @override
  State<Drassdetails1> createState() => _Drassdetails1State();
}

class _Drassdetails1State extends State<Drassdetails1> {
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
    AssetController = VideoPlayerController.asset("assets/vedio/albert.mp4")
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
    //   void MehwerOne(BuildContext ctx) {

    //   );
    // }
    // final mehwerOne = droosdetails1.where((drass) {
    //   return drass.identifer.contains(mehwerIdentifer!);
    // }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(mehwerId!),
        backgroundColor: Colors.purple.shade500,
        centerTitle: true,
        elevation: 5,
        leading: IconButton(
           icon:const Icon(Icons.arrow_back_ios_sharp),
          color: Colors.black,
          iconSize: 30,
          onPressed: () {
            AssetController.pause();
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DroosMehwer1(),
              ),
            );
          },
          alignment: Alignment.centerRight,
        ),
      ),

      //title: Text(widget.id),
      //backgroundColor: Colors.deepOrange,

      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          // scrollDirection: Axis.vertical,
            clipBehavior: Clip.antiAlias,
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
                  Colors.purple.withOpacity(0.4),
                  Color.fromARGB(255, 60, 1, 69),
                ], begin: Alignment.topLeft, end: Alignment.topRight),
                borderRadius: BorderRadius.circular(15),
              ),
              width: double.infinity,
              height: 60,
            ),
            SizedBox(
              height: 10,
            ),
            buildVideoPlayer(AssetController),
              SizedBox(
              height: 10,
            ),
             Row(
               children: [
                 Container(
                 // margin: EdgeInsets.only(left: 220),
                  width: 140,
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
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                       Color.fromARGB(255, 108, 4, 139),
                        Color.fromARGB(255, 245, 246, 242),
                      ],
                    ),

                    //color: Colors.orangeAccent[100],
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                    border: Border.all(
                      color: const Color.fromARGB(255, 191, 52, 42),
                      width: 2,
                    ),
                  ),
                  alignment: AlignmentDirectional.center,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 100),
              child: ClipOval(
                         
                              child: Image( 
                                image: AssetImage('assets/images/albert.jpg'),
                                fit: BoxFit.cover,
                                height: 150,
                                width: 150,
                                alignment: AlignmentDirectional.centerStart,
                              ),
                              
                            ),
            ),
               ],
             ),
            Container(
               margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.all(10.0),
              child: RichText(
                
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: '${mehwerOne[0].details1}',
                      style: TextStyle(
                        fontSize: 20,
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
            ),
             Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.all(10.0),
              child: RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: '${mehwerOne[0].details2}',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Cairo',
                      ),
                    ),
                  ],
                ),
                overflow: TextOverflow.clip,
                textAlign: TextAlign.justify,
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(255, 218, 153, 229),
                    Colors.white,
                  ],
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
                border: Border.all(
                  color: Color.fromARGB(255, 6, 6, 6),
                  width: 2,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
           
            
            Container(
              child: Text(
                '${mehwerOne[0].details3}',
                style: TextStyle(
                  fontSize: 22,
                  color: Color.fromARGB(255, 78, 39, 25),
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Cairo',
                ),
                overflow: TextOverflow.visible,
                textAlign: TextAlign.center,
              ),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Color.fromARGB(255, 128, 2, 128),
                    width: 2,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(8.0),
                          alignment: Alignment.center,
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  '${mehwerOne[0].imageUrl}',
                                  height: 150,
                                  width: 200,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Positioned(
                                bottom: 5,
                                right: 5,
                                child: Container(
                                  alignment: AlignmentDirectional.bottomStart,
                                  child: Text(
                                    'الرادار المخترق للارض',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black,
                                      backgroundColor: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      // background: Colors.yellowAccent,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          decoration:const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Color.fromARGB(255, 121, 67, 2),
                                width: 2,
                              ),
                              right: BorderSide(
                                color: Color.fromARGB(255, 121, 67, 2),
                                width: 2,
                              ),
                              top: BorderSide(
                                color: Color.fromARGB(255, 121, 67, 2),
                                width: 2,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 0,
                        child: Container(
                          // padding: EdgeInsets.all(8.0),
                          alignment: Alignment.center,
                          height: 170,
                          width: 7,
                          child: VerticalDivider(
                            indent: 0,
                            endIndent: 0,
                            color: Color.fromARGB(255, 121, 67, 2),
                            thickness: 2,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding:const EdgeInsets.all(8.0),
                          alignment: Alignment.center,
                          height: 170,
                          width: 200,
                          child: const Text(
                            'طريقة يستخدم فيها الرادار لايجاد الاجسام المدفونة تحت الارض',
                            overflow: TextOverflow.visible,
                            textAlign: TextAlign.center,
                            textDirection: TextDirection.rtl,
                            maxLines: 3,
                            style: const TextStyle(
                              fontSize: 22,
                              color: Colors.black,
                            ),
                          ),
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Color.fromARGB(255, 121, 67, 2),
                                width: 2,
                              ),
                              left: BorderSide(
                                color: Color.fromARGB(255, 121, 67, 2),
                                width: 2,
                              ),
                              top: BorderSide(
                                color: Color.fromARGB(255, 121, 67, 2),
                                width: 2,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Stack(
                          children: [
                            Container(
                              padding: EdgeInsets.all(8.0),
                              alignment: Alignment.center,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  'assets/images/gps.png',
                                  height: 150,
                                  width: 200,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: Color.fromARGB(255, 121, 67, 2),
                                    width: 2,
                                  ),
                                  right: BorderSide(
                                    color: Color.fromARGB(255, 121, 67, 2),
                                    width: 2,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Container(
                                alignment: AlignmentDirectional.bottomStart,
                                child: const Text(
                                  'نظام تحديد المواقع GPS',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                    backgroundColor: Colors.yellow,
                                    fontWeight: FontWeight.bold,
                                    // background: Colors.yellowAccent,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 0,
                        child: Container(
                          alignment: Alignment.center,
                          height: 170,
                          width: 10,
                          child: const VerticalDivider(
                            indent: 0,
                            endIndent: 0,
                            color: Color.fromARGB(255, 121, 67, 2),
                            thickness: 2,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(8.0),
                          alignment: Alignment.center,
                          height: 170,
                          width: 200,
                          child: const Text(
                            'وسيلة لتحديد مكان شىء ما بواسطة الاقمار الصناعية ',
                            overflow: TextOverflow.visible,
                            textAlign: TextAlign.center,
                            textDirection: TextDirection.rtl,
                            maxLines: 3,
                            style: const TextStyle(
                              fontSize: 22,
                              color: Colors.black,
                            ),
                          ),
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Color.fromARGB(255, 121, 67, 2),
                                width: 2,
                              ),
                              left: BorderSide(
                                color: Color.fromARGB(255, 121, 67, 2),
                                width: 2,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Stack(
                          children: [
                            Container(
                              padding: EdgeInsets.all(8.0),
                              alignment: Alignment.center,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  'assets/images/megnatic.png',
                                  height: 150,
                                  width: 200,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: Color.fromARGB(255, 121, 67, 2),
                                    width: 2,
                                  ),
                                  right: BorderSide(
                                    color: Color.fromARGB(255, 121, 67, 2),
                                    width: 2,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: Container(
                                alignment: AlignmentDirectional.bottomStart,
                                child:const  Text(
                                  'مقياس المغناطيسية ',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                    backgroundColor: Colors.yellow,
                                    fontWeight: FontWeight.bold,
                                    // background: Colors.yellowAccent,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 0,
                        child: Container(
                          alignment: Alignment.center,
                          height: 170,
                          width: 10,
                          child: const VerticalDivider(
                            indent: 0,
                            endIndent: 0,
                            color: Color.fromARGB(255, 121, 67, 2),
                            thickness: 2,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(8.0),
                          alignment: Alignment.center,
                          height: 170,
                          width: 200,
                          child: const Text(
                            'جهاز يقيس المجال المغناطيسى يمكن استخدامه للعثور على المعادن فى باطن الارض ',
                            overflow: TextOverflow.visible,
                            textAlign: TextAlign.center,
                            textDirection: TextDirection.rtl,
                            maxLines: 3,
                            style: const TextStyle(
                              fontSize: 22,
                              color: Colors.black,
                            ),
                          ),
                          decoration: BoxDecoration(
                            border:const Border(
                              bottom: BorderSide(
                                color: Color.fromARGB(255, 121, 67, 2),
                                width: 2,
                              ),
                              left: BorderSide(
                                color: Color.fromARGB(255, 121, 67, 2),
                                width: 2,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  //  alignment: Alignment.center,
                  padding: const EdgeInsets.all(20),
                  width: double.infinity,
                  //height: 30,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 60, 1, 69),
                      elevation: 10,
                      padding: EdgeInsets.only(left: 50, right: 50),
                      shape: StadiumBorder(),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DroosMehwer1(),
                        ),
                      );
                      AssetController.pause();
                    },
                    child:const Text(
                      'عودة للمحور الاول',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontFamily: 'Cairo',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

      //scrollDirection: Axis.vertical,

      //buildVideoPlayer(AssetController),
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
