import 'package:flutter/material.dart';

import '../Screens/contents.dart';
import '../Screens/contents1.dart';
import '../Screens/mehwer_item4.dart';
import '../Screens/screen_mehwer1.dart';
import '../Screens/screen_mehwer2.dart';
import '../Screens/screen_mehwer3.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with SingleTickerProviderStateMixin {
  TabController? tabcon;
  PageController? pageCon;
   
    void _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }
int _selectedScreenIndex = 0;
 
  @override
  void initState() {
    super.initState();
    tabcon = TabController(length: 2, vsync: this,initialIndex:0 );
    pageCon = PageController(initialPage: 0, viewportFraction: .8);
     
    super.initState();
  }
void selectedscreen(int index){}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.red),
        backgroundColor: Colors.indigo,
        elevation: 0,
        title:const Text(
          'كتاب التلميذ الاليكترونى',
          style: TextStyle(
            // letterSpacing: 3,
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
            fontFamily: 'Pacifico-Regular',
          ),
        ),
        bottom: TabBar(
          controller: tabcon,
          indicatorWeight:5,
         // indicatorColor: Colors.red,
          indicatorPadding: EdgeInsets.all(5),
          tabs:const [
            Tab(
             child: Text( 'الفصل الدراسى الاول'),
             icon: Icon(Icons.bookmark_border),
            ),
            Tab(
             child: Text( 'الفصل الدراسى الثانى'),
             icon: Icon(Icons.bookmark_rounded),
            ),
          ],
          onTap: selectedscreen,
          labelColor: Colors.white,
          unselectedLabelColor: Color.fromARGB(255, 224, 248, 7),
          labelStyle: TextStyle(
            color: Colors.blue,
            fontSize: 20,
            fontWeight: FontWeight.w600,
            fontFamily: 'Montserrat-Bold',
            // letterSpacing: 2,
          ),
          unselectedLabelStyle: TextStyle(
            color: Colors.blue[400],
            fontSize: 20,
            fontWeight: FontWeight.w500,
            fontFamily: 'Montserrat-Bold',
            // letterSpacing: 2,
          ),
        ),
      ),
      body:
      TabBarView(
        controller: tabcon,
        children: [
          MainContent(),
             MainContent1(),
          
        ],
      ),
    );
  }
}
