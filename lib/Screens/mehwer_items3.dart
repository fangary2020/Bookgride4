import 'package:flutter/material.dart';

import '../screens3/drass1mehwer3.dart';
import '../screens3/drass2mehwer3.dart';
import '../screens3/drass3mehwer3.dart';
import '../screens3/drass4mehwer4.dart';
import '../screens3/drass5mehwer3.dart';
import '../screens3/drass6mehwer3.dart';
import '../screens3/drass7mehwer3.dart';
import '../screens3/drass8mehwer3.dart';

class mehwerItems3 extends StatelessWidget {

  final String identifer;
  final String id;
  final String title;
  final Color color;

  mehwerItems3(this.identifer,
      this.id,
      this.title,
      this.color,);

  void selectDrass(BuildContext ctx) {
    if (identifer == '1') {
      Navigator.of(ctx).pushNamed(Drass1Mehwer3.routName, arguments: {
        'identifer': identifer,
        'id': id,
        'title': title,
      });
      } else if (identifer == '2') {
        Navigator.of(ctx).pushNamed(Drass2Mehwer3.routName, arguments: {
          'identifer': identifer,
          'id': id,
          'title': title,
        });
    }else if (identifer == '3') {
        Navigator.of(ctx).pushNamed(Drass3Mehwer3.routName, arguments: {
          'identifer': identifer,
          'id': id,
          'title': title,
        });
    }else if (identifer == '4') {
        Navigator.of(ctx).pushNamed(Drass4Mehwer3.routName, arguments: {
          'identifer': identifer,
          'id': id,
          'title': title,
        });
  }
  else if (identifer == '5') {
        Navigator.of(ctx).pushNamed(Drass5Mehwer3.routName, arguments: {
          'identifer': identifer,
          'id': id,
          'title': title,
        });
  }else if (identifer == '6') {
        Navigator.of(ctx).pushNamed(Drass6Mehwer3.routName, arguments: {
          'identifer': identifer,
          'id': id,
          'title': title,
        });
  }else if (identifer == '7') {
        Navigator.of(ctx).pushNamed(Drass7Mehwer3.routName, arguments: {
          'identifer': identifer,
          'id': id,
          'title': title,
        });
  }else if (identifer == '8') {
        Navigator.of(ctx).pushNamed(Drass8Mehwer3.routName, arguments: {
          'identifer': identifer,
          'id': id,
          'title': title,
        });
  }
  }

  @override
    Widget build(BuildContext context) {
      return InkWell(
        onTap: () => selectDrass(context),
        splashColor: Theme
            .of(context)
            .primaryColor,
        borderRadius: BorderRadius.circular(20),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            height: 400,
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
                  color: Colors.indigo,
                  fontFamily: 'Cairo',
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                textDirection: TextDirection.rtl,
                maxLines: 2,
                overflow: TextOverflow.visible,
                textAlign: TextAlign.center,
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
            // padding: EdgeInsets.all(5),
            //child: Text(title, style: Theme.of(context).textTheme.subtitle1),
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                color.withOpacity(0.8),
                Colors.white,
              ], begin: Alignment.topLeft, end: Alignment.bottomRight),
              color: Colors.black,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: Color.fromARGB(255, 6, 6, 6),
                width: 3,
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
        ),
      );
    }
  }



