// Created by linkkader on 27/8/2022

import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart' as retrofit;


import '../models/black_hole_data.dart';
import '../models/expertise.dart';
import '../models/project_data.dart';
import '../models/scale_team.dart';
import '../models/token_body.dart';
import '../models/user.dart';

part 'api.g.dart';

@RestApi(baseUrl: "https://api.intra.42.fr/v2")
abstract class Api {
  factory Api(Dio dio, {String baseUrl}) = _Api;

  @GET("/me")
  Future<User> me();

  @POST("/oauth/token")
  @retrofit.Headers({
    'Content-Type' : 'application/x-www-form-urlencoded'
  })
  Future<TokenBody> token(@Body() Map<String, String> body);


  @GET("/me/scale_teams")
  Future<List<ScaleTeam>> scales();

  @GET("/campus/{campus_id}/users")
  Future<List<User>> usersCampus(@Path("campus_id") int campusId,{@Query('page') int? page});

  @GET("/users?filter[kind]=student&sort=login")
  Future<List<User>> users({@Query('page') int? page, @Query('campus_id') int? campusId});

  @GET("/users/{id}")
  Future<User> user(@Path("id") int id);

  @GET("https://profile.intra.42.fr/users/{login}/locations_stats.json")
  Future<Map<String, String>> locationsStats(@Path("login")  String login);

  @GET("https://api.intra.42.fr/v2/expertises?page={page}&per_page=100")
  Future<List<Expertise>> expertises(@Path("page") int page);

  @GET("https://projects.intra.42.fr/project_data.json?cursus_id={cursusId}&campus_id={campusId}&login={login}")
  Future<List<ProjectData>> projectData(@Path('cursusId') int cursusId, @Path('campusId') int campusId, @Path("login") String login);

  @GET("https://meta.intra.42.fr/clusters.json")

  @GET("https://meta.intra.42.fr/clusters")
  Future<dynamic> clusters();

  @retrofit.Headers(
      {
        'Host': 'profile.intra.42.fr',
        'Authorization': ''
      }
  )
  @GET("https://profile.intra.42.fr/users/{login}/goals?cursus=42cursus")
  Future<BlackHoleData?> blackHoleLogin(@Path("login")String login);

  @GET("/campus?page[size]=100&page[number]={page}")
  Future<List<Campus>> allCampus(@Path("page") int page);
}