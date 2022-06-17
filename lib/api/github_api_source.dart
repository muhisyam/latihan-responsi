import 'package:latihan_responsi/model/github_user_model.dart';
import 'package:latihan_responsi/model/github_user_repos_model.dart';

import 'github_api.dart';

class GithubDataSource {
  static GithubDataSource instance = GithubDataSource();

  Future<Map<String, dynamic>> loadUsersData(String name){
    return GithubAPI.get("users/$name");
  }

  Future<List<UserReposModel>> loadUsersRepo(String name){
    return GithubAPI.getRepos("users/$name/repos");
  }

  Future<List<UserDetailModel>> loadUsersFollowers(String name){
    return GithubAPI.getFollowers("users/$name/followers");
  }

  Future<List<UserDetailModel>> loadUsersFollowing(String name){
    return GithubAPI.getFollowers("users/$name/following");
  }
}