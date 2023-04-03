import 'package:bloc/bloc.dart';
import 'package:learn_apis/UserMD.dart';
import 'package:meta/meta.dart';

import 'my_repo.dart';

part 'my_state.dart';

class MyCubit extends Cubit<MyState> {
  final MyRepo myRepo;
  MyCubit(this.myRepo) : super(MyInitial());
  void emitGetAllUsers(){
    myRepo.getAllUsersData().then((usersList){
      emit(GetAllUsers(allUsersList: usersList));
    });
  }

  void emitGetUserDetailsById(int userId){
    myRepo.getUserDetailsById(userId).then((user){
      emit(GetUserById(userMd: user));
    });
  }

  void emitCreateNewUser(UserMd newUser){
    myRepo.createNewUser(newUser).then((user){
      emit(CreateNewUser(userMd: user));
    });
  }

  void emitDeleteUser(int userId){
    myRepo.deleteUser(userId).then((data){
      emit(DeleteUser(data: data));
    });
  }
}
