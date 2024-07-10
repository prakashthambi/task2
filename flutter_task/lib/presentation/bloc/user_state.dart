// part of 'user_bloc.dart';

import 'package:equatable/equatable.dart';
import 'package:user_listing_app/domain/usecases/entities/user.dart';

abstract class UserState extends Equatable {
  const UserState();
}

class UserInitial extends UserState {
  @override
  List<Object> get props => [];
}

class UserLoading extends UserState {
  @override
  List<Object> get props => [];
}

class UserLoaded extends UserState {
  final List<User> users;

  const UserLoaded({required this.users});

  @override
  List<Object> get props => [users];
}

class UserError extends UserState {
  final String message;

  const UserError({required this.message});

  @override
  List<Object> get props => [message];
}
