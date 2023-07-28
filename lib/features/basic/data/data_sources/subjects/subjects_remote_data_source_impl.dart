import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../../../../core/constants/app_constants.dart';
import '../../../../../core/entities/custom_exceptions.dart';
import '../../../domain/entities/subject.dart';
import '../../../domain/entities/subjects.dart';
import 'subjects_remote_data_source.dart';

class SubjectsRemoteDataSourceImpl implements SubjectsRemoteDataSource {
  final http.Client client;

  SubjectsRemoteDataSourceImpl({required this.client});

  @override
  Future<Subjects> getSubjects() async {
    Uri uri = Uri.parse(
        "${AppConstants.baseUrl}/subjects/${AppConstants.tokenQuery}");
    final response =
        await client.get(uri, headers: {'Content-Type': 'application/json'});
    if (response.statusCode == 200) {
      var result = Subjects.fromJson(jsonDecode(response.body));

      return result;
    } else {
      throw ServerException;
    }
  }

  @override
  Future<Subject> getSubject(int id) async {
    Uri uri = Uri.parse(
        "${AppConstants.baseUrl}/subjects/$id${AppConstants.tokenQuery}");
    final response =
        await client.get(uri, headers: {'Content-Type': 'application/json'});
    if (response.statusCode == 200) {
      var result = Subject.fromJson(json.decode(response.body));

      return result;
    } else {
      throw ServerException;
    }
  }
}
