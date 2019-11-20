import 'dart:io';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:cookie_jar/cookie_jar.dart';
class IPassLogin
{
  var dio;
  var cjar = CookieJar();
  var p1, p2, p3, p4;
  Future logIn1(username, password) async {
    Dio dio = new Dio();
    dio.interceptors.add(CookieManager(cjar));
    var loginPage = 'https://ipassweb.harrisschool.solutions/school/nsboro/syslogin.htm';
    var response = await dio.post(loginPage + "?userid=" + username + "&password=" + password);
    p1 = await dio.get("https://ipassweb.harrisschool.solutions/school/nsboro/istudentbio.htm");
  }
  Future logIn2(username, password) async {
    Dio dio = new Dio();
    dio.interceptors.add(CookieManager(cjar));
    var loginPage = 'https://ipassweb.harrisschool.solutions/school/nsboro/syslogin.htm';
    var response = await dio.post(loginPage + "?userid=" + username + "&password=" + password);
    p2 = await dio.get("https://ipassweb.harrisschool.solutions/school/nsboro/samattendance.htm");
  }
  Future logIn3(username, password) async {
    Dio dio = new Dio();
    dio.interceptors.add(CookieManager(cjar));
    var loginPage = 'https://ipassweb.harrisschool.solutions/school/nsboro/syslogin.htm';
    var response = await dio.post(loginPage + "?userid=" + username + "&password=" + password);
    p3 = await dio.get("https://ipassweb.harrisschool.solutions/school/nsboro/samschedule.htm");
  }
  Future logIn4(username, password) async {
    Dio dio = new Dio();
    dio.interceptors.add(CookieManager(cjar));
    var loginPage = 'https://ipassweb.harrisschool.solutions/school/nsboro/syslogin.htm';
    var response = await dio.post(loginPage + "?userid=" + username + "&password=" + password);
    p4 = await dio.get("https://ipassweb.harrisschool.solutions/school/nsboro/samgrades.html");
  }
}
