import 'package:http/http.dart';
import 'dart:convert';

class WorldTime {

  String location;
  String flag;
  String url;

  WorldTime({ required this.location, required this.flag, required this.url });

  //https://protocoderspoint.com/flutter-null-safety-example-handle-null-exception/#:~:text=In%20Flutter%20late%20keyword%20will%20lets%20you%20use,the%20value%20to%20variable%20later%20on%20in%20future.
  late String time;
  Future<void> getTime() async {
    Response response = await get(Uri.parse('https://www.timeapi.io/api/Time/current/zone?timeZone=$url'));
    Map data = jsonDecode(response.body);
     time = data['time'];
     }
}