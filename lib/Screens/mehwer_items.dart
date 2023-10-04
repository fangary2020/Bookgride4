import 'package:computer4/Screens/drass7_details.dart';
import 'package:computer4/Screens/drass8details.dart';

import '../Screens/drass6details.dart';

import '../Screens/drass5details.dart';

import '../Screens/drass4details.dart';

import '../Screens/drass3details.dart';

import '../Screens/drass2details.dart';

import 'package:flutter/material.dart';

import '../Screens/drass1details.dart';

class MehwerItems extends StatelessWidget {
  final String identifer;
  final String id;
  final String title;
  final Color color;

  MehwerItems(
    this.identifer,
    this.id,
    this.title,
    this.color,
  );
  void selectDrass(BuildContext ctx) {
    if (identifer == '1') {
      Navigator.of(ctx).pushNamed(Drassdetails1.routName, arguments: {
        'identifer': identifer,
        'id': id,
        'title': title,
      });
    } else if (identifer == '2') {
      Navigator.of(ctx).pushNamed(DrassDetails2.routName, arguments: {
        'identifer': identifer,
        'id': id,
        'title': title,
      });
    } else if (identifer == '3') {
      Navigator.of(ctx).pushNamed(DrassDetails3.routName, arguments: {
        'identifer': identifer,
        'id': id,
        'title': title,
      });
    } else if (identifer == '4') {
      Navigator.of(ctx).pushNamed(DroosDetails4.routName, arguments: {
        'identifer': identifer,
        'id': id,
        'title': title,
      });
    } else if (identifer == '5') {
      Navigator.of(ctx).pushNamed(DrassDetails5.routName, arguments: {
        'identifer': identifer,
        'id': id,
        'title': title,
      });
    } else if (identifer == '6') {
      Navigator.of(ctx).pushNamed(DrassDetails6.routName, arguments: {
        'identifer': identifer,
        'id': id,
        'title': title,
      });
    } else if (identifer == '7') {
      Navigator.of(ctx).pushNamed(DrassDetails7.routName, arguments: {
        'identifer': identifer,
        'id': id,
        'title': title,
      });
    } else {
      Navigator.of(ctx).pushNamed(DrassDetails8.routName, arguments: {
        'identifer': identifer,
        'id': id,
        'title': title,
      });
    }
  }
  //static const routname = '/DroosMain';

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectDrass(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        height: 330,
        child: ListTile(
          title: Text(
            '${id}',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'Montserrat-Bold',
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
          subtitle: Text(
            '${title}',
            style: TextStyle(
              color: Colors.indigo[800],
              fontFamily: 'Cairo',
              fontWeight: FontWeight.bold,
              fontSize: 20,
          ),
            textDirection: TextDirection.rtl,
            maxLines: 2,
            overflow: TextOverflow.visible,
            textAlign: TextAlign.right,
          ),
          trailing: IconButton(
            icon: Icon(Icons.arrow_forward_rounded),
            color: Colors.black,
            iconSize: 28,
            onPressed: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => DroosDetails(i),
              //   ),
              // );
            },
          ),
        ),
        padding: EdgeInsets.all(5),
        //child: Text(title, style: Theme.of(context).textTheme.subtitle1),
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            color.withOpacity(0.9),
            Colors.white,
          ], begin: Alignment.topLeft, end: Alignment.topRight),
          color: Colors.black,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: Color.fromARGB(255, 6, 6, 6),
            width: 2,
          ),
          //   boxShadow:[
          //     BoxShadow(
          //       color: Colors.black,
          //      spreadRadius: 2,
          //       blurRadius:4,
          //       //offset: Offset
          //     )
          //   ],
          // ),
        ),
      ),
    );
  }
}
