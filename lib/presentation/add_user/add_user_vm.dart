import 'package:flutter/cupertino.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:fpdart/src/either.dart';
import 'package:portfolio/app/error/failures.dart';
import 'package:portfolio/app/utils/id_generator.dart';
import 'package:portfolio/data/models/user.dart';
import 'package:portfolio/data/repositories_impl/user_repo_impl.dart';

class AddUserVM extends ChangeNotifier {
  final UserRepo userRepo;

  AddUserVM({required this.userRepo});

  get formKey => GlobalKey<FormBuilderState>();

  User user = User.empty();


  Future<void> addUser() async {

   user.id = getRandomString(30);
    final userJson = user.toJson();
    await userRepo.addUser(userJson );
  }

  Future<void> updateUser() async {
      user.id = '1';
    final userJson = user.toJson();
    await userRepo.updateUser( userJson );
  }


  Future<Either<Failure, User>> getUser(String userId) async{
    return await userRepo.getUser(userId);
  }

  Future<Either<Failure, String>> deleteUser(String userId) async{
    return await userRepo.deleteUser(userId);
  }
}
