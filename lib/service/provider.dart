import 'dart:convert';
import 'dart:io';
import 'package:events_app/model/event.dart';
import 'package:http/http.dart' as http;

Future<Event> getEvent() async {
  const url = 'https://www.dicoding.com/public/api/events?active=0&&limit=10';
  final response = await http.get(url);

  if (response.statusCode == 200) {
    return Event.fromJsonMap(
        json.decode(response.body)); //sesuaikan dgn model kita
  } else {
    throw HttpException('Error ${response.reasonPhrase}',
        uri: Uri.parse(url)
    );
  }
}