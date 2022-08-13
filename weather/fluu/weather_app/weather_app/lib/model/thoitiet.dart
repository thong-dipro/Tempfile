class Thoitiet {
  int? temp;
  int? feels_like;
  int? temp_min;
  int? temp_max;
  String? cloudy;
  Thoitiet(
      {this.temp, this.feels_like, this.temp_min, this.temp_max, this.cloudy});
  // Thoitiet.fromJson(Map<String, dynamic> json) {
  //   // print('starting parse' + json[0]["list"]["main"]["temp"]);
  //   print(json.length);
  //   temp = int.parse(json["list"]["main"]["temp"]);
  //   print("parse temp");
  //   feels_like = int.parse(json["list"]["main"]["feels_like"]);
  //   temp_min = int.parse(json["list"]["main"]["temp_min"]);
  //   temp_max = int.parse(json["list"]["main"]["temp_min"]);
  //   cloudy = json["list"]["weather"]["main"].toString();
  //   print('parse ok');
  // }
}
