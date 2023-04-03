import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_apis/injection.dart';
import 'package:learn_apis/my_cubit.dart';

import 'UserMD.dart';

void main() {
  initGetIt();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => getIt<MyCubit>(),
        child: const HomeScreen(),
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<UserMd> users = [];
  UserMd user = UserMd();

  @override
  void initState() {
    BlocProvider.of<MyCubit>(context).emitDeleteUser(674532);

    // BlocProvider.of<MyCubit>(context).emitCreateNewUser(UserMd(
    //     name: "Ibrahim Fathi",
    //     gender: "Male",
    //     email: "himafathy96@gmail.com",
    //     status: "active"));
    // BlocProvider.of<MyCubit>(context).emitGetUserDetailsById(667346);
    // BlocProvider.of<MyCubit>(context).emitGetAllUsers();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.indigoAccent,
      body: Column(
        children: [
          BlocBuilder<MyCubit, MyState>(
            builder: (context, state) {
              ///Delete User
              if (state is DeleteUser) {
                // user = (state).userMd;
                return Container(
                  color: Colors.amber,
                  height: 50,
                  child: Center(
                    child: Text((state).data.toString()),
                  ),
                );
              }
              ///Create New User
              // if (state is CreateNewUser) {
              //   user = (state).userMd;
              //   return Container(
              //     color: Colors.amber,
              //     height: 50,
              //     child: Center(
              //       child: Text(user.name ?? ''),
              //     ),
              //   );
              // }
              ///Get all users
              // if (state is GetAllUsers) {
              //   users = state.allUsersList;
              //   return ListView.builder(
              //     shrinkWrap: true,
              //     padding: const EdgeInsets.all(8),
              //     itemCount: users.length,
              //     itemBuilder:
              //         (context, index) {
              //       return Container(
              //         color: Colors.amber,
              //         height: 50, child: Center(child: Text(users[index].name),),
              //       );
              //     },
              //   );
              // }
              ///Get User with ID
              // if (state is GetUserById) {
              //   user = (state).userMd;
              //   return Container(
              //     color: Colors.amber,
              //     height: 50,
              //     child: Center(
              //       child: Text(user.email ?? ''),
              //     ),
              //   );
              // }
              else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          )
        ],
      ),
    );
  }
}
