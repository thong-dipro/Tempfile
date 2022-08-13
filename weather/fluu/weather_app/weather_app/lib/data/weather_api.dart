import 'package:http/http.dart' as http;
import 'package:weather_app/model/thoitiet.dart';

class WeatherApi {
  Future<List<Thoitiet>> getWeather(String location) async {
    print("1");
    var response = await http.get(Uri.parse(
        'https://api.openweathermap.org/data/2.5/forecast?q=$location&appid=23ceae0f5730cd8bf5dc3b53b13cf212'));

    List<String> body = response.body.split('"');
    List<Thoitiet> ls = [];
    for (int i = 1; i < body.length; i++) {
      if (body[i] == "temp") {
        String str = body[++i];
        double temper =
            (double.parse(str.substring(1, str.length - 1)) - 273.15);
        int nhietdo = temper.toInt();
        // print("Nhiệt độ: " + nhietdo.toString());
        print("Icon: " + body[i + 31].toString());

        for (int j = i; j < body.length; j++) {
          if (body[j] == 'icon') {
            j += 2;
            // print("Ngày: " + (j - i).toString());
            break;
          }
        }
      }
    }
    return ls;
  }
}
