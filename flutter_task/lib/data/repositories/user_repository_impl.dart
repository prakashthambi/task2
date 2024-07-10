import 'package:user_listing_app/domain/usecases/entities/user.dart';
import 'package:user_listing_app/domain/usecases/get_users.dart';

// import '../../domain/entities/user.dart';
// import '../../domain/repositories/user_repository.dart';
import '../datasources/user_remote_data_source.dart';

class UserRepositoryImpl implements UserRepository {
  final UserRemoteDataSource remoteDataSource;

  UserRepositoryImpl(this.remoteDataSource);

  @override
  Future<List<User>> getUsers(int page) async {
    return await remoteDataSource.getUsers(page);
  }

  @override
  Future<User> getUser(int id) async {
    return await remoteDataSource.getUser(id);
  }
}
