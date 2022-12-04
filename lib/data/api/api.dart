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

  @GET("/scale_teams?filter[team_id]={teamId}")
  Future<List<ScaleTeam>> scalesByTeamId(@Path("teamId") int teamId);

  @GET("/campus/{campus_id}/users")
  Future<List<User>> usersCampus(@Path("campus_id") int campusId,{@Query('page') int? page});

  @GET("/campus/{id}/events")
  Future<List<Event>> events(@Path("id") String id);

  @GET("/users/{id}")
  Future<User> user(@Path("id") int id);

  @GET("https://profile.intra.42.fr/users/{login}/locations_stats.json")
  Future<Map<String, String>> locationsStats(@Path("login")  String login);

  @GET("https://api.intra.42.fr/v2/expertises?page={page}&per_page=100")
  Future<List<Expertise>> expertises(@Path("page") int page);

  @GET("https://projects.intra.42.fr/project_data.json?cursus_id={cursusId}&campus_id={campusId}&login={login}")
  Future<List<ProjectData>> projectData(@Path('cursusId') int cursusId, @Path('campusId') int campusId, @Path("login") String login);

  @GET("https://api.intra.42.fr/v2/projects?filter[slug]={slug}")
  Future<List<Project>> projectsBySlug(@Path("slug") String slug);

  @GET("https://api.intra.42.fr/v2/projects?filter[id]={id}")
  Future<List<Project>> projectsById(@Path("id") int projectId);

  @GET("https://meta.intra.42.fr/clusters.json")
  Future<List<ClusterItem>> clusterItems();

  @GET("https://meta.intra.42.fr/clusters")
  Future<dynamic> clusters();

  @GET("https://profile.intra.42.fr/users/{login}/goals?cursus=42cursus")
  Future<BlackHoleData?> blackHoleLogin(@Path("login")String login);

  @GET("https://api.intra.42.fr/v2/users/{user_id}/projects_users?filter[project_id]={project_id}")
  Future<List<ProjectsUser>> projectsUser(@Path("user_id") int userId, @Path("project_id") int projectId);
}