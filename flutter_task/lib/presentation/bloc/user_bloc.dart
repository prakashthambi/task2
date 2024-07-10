// import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_listing_app/domain/usecases/entities/user.dart';
import 'package:user_listing_app/presentation/bloc/user_state.dart';
// import '../../domain/entities/user.dart';
import '../../domain/usecases/get_users.dart';

part 'user_event.dart';
// part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final GetUsers getUsers;

  UserBloc(this.getUsers) : super(UserInitial()) {
    on<GetUserList>((event, emit) async {
      emit(UserLoading());
      try {
        final users = await getUsers(event.page);
        emit(UserLoaded(users: users));
      } catch (e) {
        emit(UserError(message: e.toString()));
      }
    });
  }
}
