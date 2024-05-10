// Created by linkkader on 27/8/2022

import 'package:dio/dio.dart';
import 'package:intra_42/core/params/constants.dart';
import 'package:intra_42/data/models/black_hole_data.dart';
import 'package:intra_42/data/models/event.dart';
import 'package:intra_42/data/models/token_body.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart' as retrofit;

import '../models/cluster_item.dart';
import '../models/expertise.dart';
import '../models/project_data.dart';
import '../models/scale_team.dart';
import '../models/user.dart';

part 'api.g.dart';

@RestApi(baseUrl: kApiBaseUrl)
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

  @GET("/scale_teams?{filter}")
  Future<List<ScaleTeam>> scalesByTeamId(@Path("filter") String data);

  @GET("/me/scale_teams/as_corrector")
  Future<List<ScaleTeam>> scalesAsCorrector();

  @GET("/me/scale_teams/as_corrected")
  Future<List<ScaleTeam>> scalesAsCorrected();

  @GET("/campus/{campus_id}/users")
  @retrofit.Headers(
      {
        'Host': 'projects.intra.42.fr'
      }
  )
  Future<List<User>> usersCampus(@Path("campus_id") int campusId,{@Query('page') int? page});

  @GET("/campus/{id}/events")
  Future<List<Event>> events(@Path("id") String id);

  @GET("/users/{id}")
  Future<User> user(@Path("id") int id);

  @GET("/users?filter[login]={login}")
  Future<List<User>> userByLogin(@Path("login") String login);

  @GET("/users?filter[login]={login}&filter[first_name]={login}&filter[first_name]={last_name}")
  Future<List<User>> usersSearch(@Path("login") String login);

  @GET("https://profile.intra.42.fr/users/{login}/locations_stats.json")
  Future<Map<String, String>> locationsStats(@Path("login")  String login);

  @GET("https://api.intra.42.fr/v2/expertises?page={page}&per_page=100")
  Future<List<Expertise>> expertises(@Path("page") int page);

  // https://projects.intra.42.fr/project_data.json?cursus_id=21&campus_id=21
  @GET("https://projects.intra.42.fr/project_data.json?cursus_id={cursusId}&campus_id={campusId}")
  @retrofit.Headers(
      {
        'Host': 'projects.intra.42.fr',
        'Authorization': ''
      }
  )
  Future<List<ProjectData>> projectData(@Path('cursusId') int cursusId, @Path('campusId') int campusId);

  @GET("https://api.intra.42.fr/v2/projects?filter[slug]={slug}")
  Future<List<Project>> projectsBySlug(@Path("slug") String slug);

  @GET("https://api.intra.42.fr/v2/projects?filter[id]={id}")
  Future<List<Project>> projectsById(@Path("id") int projectId);

  @GET("https://meta.intra.42.fr/clusters.json")
  @retrofit.Headers(
      {
        'Host': 'meta.intra.42.fr',
        'Authorization': ''
      }
  )
  Future<List<ClusterItem>> clusterItems();

  @GET("https://meta.intra.42.fr/clusters")
  @GET("https://meta.intra.42.fr/clusters.json")
  @retrofit.Headers(
      {
        'Host': 'meta.intra.42.fr',
        'Authorization': ''
      }
  )
  Future<dynamic> clusters();

  @GET("https://profile.intra.42.fr/users/{login}/goals?cursus=42cursus")
  Future<BlackHoleData?> blackHoleLogin(@Path("login")String login);

  @GET("https://api.intra.42.fr/v2/users/{user_id}/projects_users?filter[project_id]={project_id}")
  Future<List<ProjectsUser>> projectsUser(@Path("user_id") int userId, @Path("project_id") int projectId);

  @GET("users/{user_id}/projects_users?filter[id]={id}")
  Future<List<ProjectsUser>> projectsUserById(@Path("user_id") int userId, @Path("id") int id);

  @GET("https://api.intra.42.fr/v2/users/{user_id}/cursus_users")
  Future<List<CursusUser>> userCursus(@Path("user_id") int userId);

  @GET("https://api.intra.42.fr/v2/users/{user_id}/expertises_users")
  Future<List<ExpertisesUser>> userExpertises(@Path("user_id") int userId);

  @GET("https://profile.intra.42.fr/notifications/fetch_all")
  Future<dynamic> allNotif();

  @GET("https://profile.intra.42.fr/notifications/read_all")
  Future<bool> readAll();
}