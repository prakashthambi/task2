// part of 'user_bloc.dart';

// abstract class UserEvent extends Equatable {
//   const UserEvent();
// }

// class GetUserList extends UserEvent {
//   final int page;

//   const GetUserList({required this.page});

//   @override
//   List<Object> get props => [page];
// }
part of 'user_bloc.dart';

abstract class UserEvent extends Equatable {
  const UserEvent();
}

class GetUserList extends UserEvent {
  final int page;

  const GetUserList({required this.page});

  @override
  List<Object> get props => [page];
}
