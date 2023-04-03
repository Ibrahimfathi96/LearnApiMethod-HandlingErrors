
@freezed





















part of 'my_cubit.dart';

@immutable
abstract class MyState {}

class MyInitial extends MyState {}
class GetAllUsers extends MyState {
  final List<UserMd> allUsersList;

  GetAllUsers({required this.allUsersList});
}
class GetUserById extends MyState {
  final UserMd userMd;

  GetUserById({required this.userMd});
}
class CreateNewUser extends MyState {
  final UserMd userMd;

  CreateNewUser({required this.userMd});
}
class DeleteUser extends MyState {
  final dynamic data;

  DeleteUser({required this.data});
}

