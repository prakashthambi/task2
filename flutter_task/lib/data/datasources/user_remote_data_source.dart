import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/user_model.dart';
import '../../core/network/api_client.dart';

abstract class UserRemoteDataSource {
  Future<List<UserModel>> getUsers(int page);
  Future<UserModel> getUser(int id);
}

class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  final ApiClient apiClient;

  UserRemoteDataSourceImpl(this.apiClient);

  @override
  Future<List<UserModel>> getUsers(int page) async {
    final response = await apiClient.getRequest('/api/users?page=$page');
    final json = jsonDecode(response.body);
    return (json['data'] as List).map((e) => UserModel.fromJson(e)).toList();
  }

  @override
  Future<UserModel> getUser(int id) async {
    final response = await apiClient.getRequest('/api/users/$id');
    final json = jsonDecode(response.body);
    return UserModel.fromJson(json['data']);
  }
}
