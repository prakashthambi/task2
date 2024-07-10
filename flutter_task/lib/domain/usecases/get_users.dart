import 'package:user_listing_app/domain/usecases/entities/user.dart';

// import '../repositories/user_repository.dart';
// import '../entities/user.dart';

class GetUsers {
  final UserRepository repository;

  GetUsers(this.repository);

  Future<List<User>> call(int page) async {
    return await repository.getUsers(page);
  }
}
// import '../entities/user.dart';

abstract class UserRepository {
  Future<List<User>> getUsers(int page);
  Future<User> getUser(int id);
}
