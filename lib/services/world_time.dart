import 'package:http/http.dart';
import 'dart:convert';

class WorldTime {

  String location;
  String flag;
  String url;
  WorldTime({ required this.location, required this.flag, required this.url });

  Future<void> getTime() async {
    Response response = await get('https://www.timeapi.io/api/Time/current/zone?timeZone=$url');
    Map data = jsonDecode(response.body);

    String time = data['time'];
    print(time);


}
