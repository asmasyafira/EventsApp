import 'package:events_app/utils/common.dart';
import 'package:events_app/utils/tools.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  static const page = "/profile";

  @override
  Widget build(BuildContext context) {
    final img = Images;
    return ListView(
      // backgroundColor: Colors.white,
      // c: SafeArea(
      scrollDirection: Axis.vertical,
      children: <Widget>[
        Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Opacity(
                  opacity: 0.75,
                  child: Image.asset(
                    img['typing'],
                    width: 600,
                    height: 210,
                    fit: BoxFit.cover,
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 125.0),
                    child: CircleAvatar(
                      radius: 70.0,
                      backgroundImage: AssetImage('assets/images/asma.png'),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15.0),
            Text(
              'Asma Syafira',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 28),
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.star,
                  color: Colors.black87,
                ),
                SizedBox(
                  width: 5.0,
                ),
                Text(
                  '4100 XP',
                  style: TextStyle(color: Colors.black87, fontSize: 16),
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Text(
              'Bergabung sejak 23 Oct 2018',
              style: TextStyle(color: Colors.black87, fontSize: 16),
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.location_on,
                  color: Colors.black87,
                ),
                SizedBox(
                  width: 5.0,
                ),
                Text(
                  'Kota Bekasi, Jawa Barat',
                  style: TextStyle(color: Colors.black87, fontSize: 16),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Material(
              borderRadius: BorderRadius.circular(15.0),
              shadowColor: Colors.grey,
              elevation: 8.0,
              child: Container(
                decoration:
                    BoxDecoration(color: HexColor(SettingColor['tosca'])),
                width: 350.0,
                height: 200.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 15.0),
                    Text(
                      'Belajar',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 19,
                          fontWeight: FontWeight.w300),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      '9',
                      style: TextStyle(color: Colors.white, fontSize: 50),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      'Kelas Akademi',
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    SizedBox(height: 15.0),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Material(
              borderRadius: BorderRadius.circular(15.0),
              shadowColor: Colors.grey,
              elevation: 8.0,
              child: Container(
                decoration:
                    BoxDecoration(color: HexColor(SettingColor['purple'])),
                width: 350.0,
                height: 200.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 15.0),
                    Text(
                      'Memenangkan',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 19,
                          fontWeight: FontWeight.w300),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      '1',
                      style: TextStyle(color: Colors.white, fontSize: 50),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      'Challenge',
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    SizedBox(height: 15.0),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Material(
              borderRadius: BorderRadius.circular(15.0),
              shadowColor: Colors.grey,
              elevation: 8.0,
              child: Container(
                decoration:
                    BoxDecoration(color: HexColor(SettingColor['yellow'])),
                width: 350.0,
                height: 200.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 15.0),
                    Text(
                      'Menghadiri',
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 19,
                          fontWeight: FontWeight.w300),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      '4',
                      style: TextStyle(color: Colors.black87, fontSize: 50),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      'Event',
                      style: TextStyle(color: Colors.black87, fontSize: 30),
                    ),
                    SizedBox(height: 15.0),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15.0),
          ],
        ),
      ],
    );
  }
}
