import 'package:fpdart/fpdart.dart';
import 'package:portfolio/app/error/failures.dart';
import 'package:portfolio/data/models/user.dart';

import '../datasources/user_fetcher.dart';

class UserRepo {
  final UsersFetcher dataSource;

  UserRepo({required this.dataSource});

  Future<Either<Failure, String>> addUser(Map<String, dynamic> newUser) async {
    try {
      final result = await dataSource.addUser(newUser);
      return Either.right(result);
    } catch (e) {
      return Either.left(ServerFailure());
    }
  }  Future<Either<Failure, String>> updateUser( Map<String, dynamic> newUser) async {
    try {
      final result = await dataSource.updateUser( newUser);
      return Either.right(result);
    } catch (e) {
      return Either.left(ServerFailure());
    }
  }

  Future<Either<Failure, User>> getUser(String id) async {
    try {
      final result = await dataSource.getUser(id);
      return Either.right(result);
    } catch (e) {
      return Either.left(ServerFailure());
    }
  }

  Future<Either<Failure, String>> deleteUser(String id) async {
    try {
      final result = await dataSource.deleteUser(id);
      return Either.right(result);
    } catch (e) {
      return Either.left(ServerFailure());
    }
  }
}
