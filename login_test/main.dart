// Created by linkkader on 9/11/2022
import 'package:dio/dio.dart';
import 'package:html/parser.dart';

//generate cookie _ga
String gen(){
  var now = DateTime.now();
  var year = now.year;
  var month = now.month;
  var day = now.day;
  var hour = now.hour;
  var minute = now.minute;
  var second = now.second;
  var millisecond = now.millisecond;
  var microsecond = now.microsecond;
  var random = (year + month + day + hour + minute + second + millisecond + microsecond) % 1000000000;
  return "GA1.1.$random.$year$month$day$hour$minute$second";
}

void main() async {

  var cookiesRequires = ["AUTH_SESSION_ID", "AUTH_SESSION_ID_LEGACY", "KC_RESTART", "_ga"];

  var dio = Dio();
  dio.interceptors.add(LogInterceptor());
  var response = await dio.get("https://profile.intra.42.fr/users/auth/keycloak_student");
  var cookieLst = response.headers["set-cookie"] as List<String>;
  var doc = parse(response.data);
  var url = doc.querySelector("form")?.attributes["action"];
  print(cookieLst);
  print(url);
  var cookie = "";
  for (var cookieRequire in cookiesRequires) {
    for (var element in cookieLst) {
      if (element.split("=")[0] == cookieRequire){
        cookie += "${element.split(";")[0]}; ";
      }
    }
  }
  var post = "username=acouliba&password=Rosine78%40Mama&credentialId=";

  var headers = <String, String>{
    // "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36",
    // "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,/;q=0.8,application/signed-exchange;v=b3;q=0.7"
  };
  try{
    response = await dio.post(
        url!,
        data: post,
        options: Options(headers: {"cookie": cookie, "Content-Type": "application/x-www-form-urlencoded"}..addAll(headers), followRedirects: true));
  }on DioError catch(_){
    url = _.response?.headers["location"]?.first;
    print(url);
  }

  response = await dio.get(url!, options: Options(headers: {"cookie": cookie, "Content-Type": "application/x-www-form-urlencoded"}, followRedirects: true));
  response = await dio.get(response.headers.value("redirect") ?? "https://signin.intra.42.fr/users/sign_in", options: Options(headers: {"cookie": cookie, "Content-Type": "application/x-www-form-urlencoded"}, followRedirects: true));

  // var dio = Dio();
  // dio.interceptors.add(LogInterceptor());
  // var post = "username=acouliba&password=Rosine78%40Mama&credentialId=";
  // var url = "https://auth.42.fr/auth/realms/students-42/login-actions/authenticate?session_code=SmOPwyI4CzVUQDSh6iRR6ekknY-C8bf19QzewNIg088&execution=e3ed291b-5578-4fcf-9f1a-d38a1ee483af&client_id=intra&tab_id=hHSgKcmH0Jk";
  // var url = "https://auth.42.fr/auth/realms/students-42/login-actions/authenticate?session_code=rpTjen6tL1VEqgf-uawVBoj_wl0y7hF9PBTBuolR9Ho&execution=e3ed291b-5578-4fcf-9f1a-d38a1ee483af&client_id=intra&tab_id=9TDP5tLk0uA";
  // var cookie = "AUTH_SESSION_ID=31f0ae8d-16f8-4810-91a7-c714a081fa21.keycloak-0; AUTH_SESSION_ID_LEGACY=31f0ae8d-16f8-4810-91a7-c714a081fa21.keycloak-0; KC_RESTART=eyJhbGciOiJIUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICIyMGFlMjM0My1lZmM2LTQ2M2QtOGU2MC04ODE0ZDIxZGVlNTgifQ.eyJjaWQiOiJpbnRyYSIsInB0eSI6Im9wZW5pZC1jb25uZWN0IiwicnVyaSI6Imh0dHBzOi8vcHJvZmlsZS5pbnRyYS40Mi5mci91c2Vycy9hdXRoL2tleWNsb2FrX3N0dWRlbnQvY2FsbGJhY2siLCJhY3QiOiJBVVRIRU5USUNBVEUiLCJub3RlcyI6eyJpc3MiOiJodHRwczovL2F1dGguNDIuZnIvYXV0aC9yZWFsbXMvc3R1ZGVudHMtNDIiLCJyZXNwb25zZV90eXBlIjoiY29kZSIsInJlZGlyZWN0X3VyaSI6Imh0dHBzOi8vcHJvZmlsZS5pbnRyYS40Mi5mci91c2Vycy9hdXRoL2tleWNsb2FrX3N0dWRlbnQvY2FsbGJhY2siLCJzdGF0ZSI6IjNiOGFiYjUyM2E4OWVhMzc2ZGZlYWJmN2VjYTZhMDlmMzkzYjYxMDAzOTYyNzhlYSJ9fQ.pG93yt-ggLquofIqguKEQNWvZ30HKY3zWlw9en6GKsQ; _ga=GA1.1.1962965339.1679558241; _ga_BJ34XNRJCV=GS1.1.1679644673.6.1.1679647088.0.0.0";
  // var cookie = "AUTH_SESSION_ID=ca112b9c-44a4-4bf4-bb5d-1ed82e384623.keycloak-0; AUTH_SESSION_ID_LEGACY=ca112b9c-44a4-4bf4-bb5d-1ed82e384623.keycloak-0; KC_RESTART=eyJhbGciOiJIUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICIyMGFlMjM0My1lZmM2LTQ2M2QtOGU2MC04ODE0ZDIxZGVlNTgifQ.eyJjaWQiOiJpbnRyYSIsInB0eSI6Im9wZW5pZC1jb25uZWN0IiwicnVyaSI6Imh0dHBzOi8vcHJvZmlsZS5pbnRyYS40Mi5mci91c2Vycy9hdXRoL2tleWNsb2FrX3N0dWRlbnQvY2FsbGJhY2siLCJhY3QiOiJBVVRIRU5USUNBVEUiLCJub3RlcyI6eyJpc3MiOiJodHRwczovL2F1dGguNDIuZnIvYXV0aC9yZWFsbXMvc3R1ZGVudHMtNDIiLCJyZXNwb25zZV90eXBlIjoiY29kZSIsInJlZGlyZWN0X3VyaSI6Imh0dHBzOi8vcHJvZmlsZS5pbnRyYS40Mi5mci91c2Vycy9hdXRoL2tleWNsb2FrX3N0dWRlbnQvY2FsbGJhY2siLCJzdGF0ZSI6ImM4ZTk2OWJhZjI0ZDQ3Nzc3NzU0MTI0ZmU4ZTc4ZTRjNDVhNDE2ODE2MDJlNDFlMiJ9fQ.pBNjfwcErpOnfgOYBIunFhD9YSMbcmXqjFLuozZZBjE;
  // dio.options.headers["cookie"] = cookie;
  // dio.options.headers["Content-Type"] = "application/x-www-form-urlencoded";
  // var response = await dio.post(url, data: post);
  // print(response.data);
}