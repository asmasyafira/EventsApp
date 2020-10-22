import 'package:events_app/model/event.dart';
import 'package:events_app/service/provider.dart';
import 'package:events_app/view/detail.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const page = "/home";

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dicoding Event'),
        backgroundColor: Colors.pink,
      ),
      body: BodyScreen(),
    );
  }
}

class BodyScreen extends StatefulWidget {
  @override
  _BodyScreenState createState() => _BodyScreenState();
}

class _BodyScreenState extends State<BodyScreen> {
  Future<Event> eventList;

  @override
  void initState() {
    //inisialisasi data didlm state
    super.initState();
    eventList = getEvent();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Event>(
      future: eventList,
      builder: (context, snapshot) {
        //context buat halamannya, snapshot buat request datanya
        switch (snapshot.connectionState) {
          case ConnectionState.none: //data g bisa ngapa2in
          case ConnectionState.active: //datanya aktif
          case ConnectionState.waiting: //data msh menunggu
            return Center(child: CircularProgressIndicator());
          case ConnectionState.done: //datanya udh terkoneksi
            //responnya bisa macem. error, bisa nampilin data, dll
            if (snapshot.hasError) return Text('Error: ${snapshot.error}');
            return ListView.builder(
                itemCount: snapshot.data.data.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  //index buat mengetahui jumlah datanya, kyk itemCount
                  //ini isinya item
                  return Padding(
                    padding: EdgeInsets.all(16.0),
                    //kyk container, punyanya child bukan children
                    child: FlatButton(
                      //dia tdk kek apa2, kyk buat forgotpassword
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return DetailScreen(snapshot.data.data[index]);
                        }));
                        //buat naro intentnya gitu, ini yg berhubungan sm button
                      },
                      child: FittedBox(
                        //kyk boxdecoration
                        child: Material(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(18.0),
                          shadowColor: Colors.grey,
                          elevation: 12.0,
                          child: Row(
                            children: <Widget>[
                              Container(
                                width: 350.0,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        child: Text(
                                          '${snapshot.data.data[index].name}',
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontSize: 24.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          'Lokasi : ${snapshot.data.data[index].city_name}',
                                          style: TextStyle(fontSize: 16.0),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 200.0,
                                width: 200.0,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(18.0),
                                  child: Image.network(
                                    '${snapshot.data.data[index].image_path}',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                });
        }
        return null;
      },
    );
  }
}
