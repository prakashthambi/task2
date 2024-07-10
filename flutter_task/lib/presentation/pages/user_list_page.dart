// // import 'package:flutter/material.dart';
// // import 'package:flutter_bloc/flutter_bloc.dart';
// // import 'package:user_listing_app/presentation/bloc/user_state.dart';
// // import '../bloc/user_bloc.dart';

// // class UserListPage extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Users'),
// //       ),
// //       body: UserListView(),
// //     );
// //   }
// // }

// // class UserListView extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return BlocBuilder<UserBloc, UserState>(
// //       builder: (context, state) {
// //         if (state is UserInitial) {
// //           BlocProvider.of<UserBloc>(context).add(GetUserList(page: 1));
// //           return Center(child: CircularProgressIndicator());
// //         } else if (state is UserLoading) {
// //           return Center(child: CircularProgressIndicator());
// //         } else if (state is UserLoaded) {
// //           return ListView.builder(
// //             itemCount: state.users.length,
// //             itemBuilder: (context, index) {
// //               final user = state.users[index];
// //               return ListTile(
// //                 leading: Image.network(user.avatar),
// //                 title: Text('${user.firstName} ${user.lastName}'),
// //                 subtitle: Text(user.email),
// //               );
// //             },
// //           );
// //         } else if (state is UserError) {
// //           return Center(child: Text(state.message));
// //         } else {
// //           return Container();
// //         }
// //       },
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:user_listing_app/presentation/bloc/user_state.dart';
// import '../bloc/user_bloc.dart';

// // Custom widget for the avatar with shadow
// class CustomAvatar extends StatelessWidget {
//   final String imageUrl;

//   CustomAvatar({required this.imageUrl});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         shape: BoxShape.circle,
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black26,
//             offset: Offset(0, 2),
//             blurRadius: 6.0,
//           ),
//         ],
//       ),
//       child: CircleAvatar(
//         radius: 25.0,
//         backgroundImage: NetworkImage(imageUrl),
//         backgroundColor: Colors.grey.shade200,
//       ),
//     );
//   }
// }

// class UserListPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.teal,
//         title: Text('User Directory', style: TextStyle(color: Colors.white)),
//       ),
//       body: UserListView(),
//     );
//   }
// }

// class UserListView extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<UserBloc, UserState>(
//       builder: (context, state) {
//         if (state is UserInitial) {
//           BlocProvider.of<UserBloc>(context).add(GetUserList(page: 1));
//           return Center(child: CircularProgressIndicator());
//         } else if (state is UserLoading) {
//           return Center(child: CircularProgressIndicator());
//         } else if (state is UserLoaded) {
//           return ListView.builder(
//             itemCount: state.users.length,
//             itemBuilder: (context, index) {
//               final user = state.users[index];
//               return Container(
//                 margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
//                 decoration: BoxDecoration(
//                   gradient: LinearGradient(
//                     colors: [Colors.blue.shade100, Colors.blue.shade300],
//                     begin: Alignment.topLeft,
//                     end: Alignment.bottomRight,
//                   ),
//                   borderRadius: BorderRadius.circular(10.0),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.black12,
//                       offset: Offset(0, 4),
//                       blurRadius: 8.0,
//                     ),
//                   ],
//                 ),
//                 child: ListTile(
//                   contentPadding:
//                       EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
//                   leading: CustomAvatar(imageUrl: user.avatar),
//                   title: Text(
//                     '${user.firstName} ${user.lastName}',
//                     style: TextStyle(
//                       fontSize: 18.0,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                     ),
//                   ),
//                   subtitle: Text(
//                     user.email,
//                     style: TextStyle(
//                       color: Colors.white70,
//                       fontStyle: FontStyle.italic,
//                     ),
//                   ),
//                   trailing: Icon(Icons.chevron_right, color: Colors.white),
//                   onTap: () {
//                     // Add your onTap functionality here
//                   },
//                 ),
//               );
//             },
//           );
//         } else if (state is UserError) {
//           return Center(child: Text(state.message));
//         } else {
//           return Container();
//         }
//       },
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:user_listing_app/presentation/bloc/user_state.dart';
// import '../bloc/user_bloc.dart';

// // Custom widget for the avatar with shadow
// class CustomAvatar extends StatelessWidget {
//   final String imageUrl;

//   CustomAvatar({required this.imageUrl});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         shape: BoxShape.circle,
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black26,
//             offset: Offset(0, 2),
//             blurRadius: 6.0,
//           ),
//         ],
//       ),
//       child: CircleAvatar(
//         radius: 25.0,
//         backgroundImage: NetworkImage(imageUrl),
//         backgroundColor: Colors.grey.shade200,
//       ),
//     );
//   }
// }

// class UserListPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.teal,
//         title: Text('User Directory', style: TextStyle(color: Colors.white)),
//       ),
//       body: UserListView(),
//     );
//   }
// }

// class UserListView extends StatefulWidget {
//   @override
//   _UserListViewState createState() => _UserListViewState();
// }

// class _UserListViewState extends State<UserListView> {
//   final ScrollController _scrollController = ScrollController();
//   int _currentPage = 1;

//   @override
//   void initState() {
//     super.initState();
//     _scrollController.addListener(_onScroll);
//     BlocProvider.of<UserBloc>(context).add(GetUserList(page: _currentPage));
//   }

//   @override
//   void dispose() {
//     _scrollController.dispose();
//     super.dispose();
//   }

//   void _onScroll() {
//     if (_isBottom) {
//       _currentPage++;
//       BlocProvider.of<UserBloc>(context).add(GetUserList(page: _currentPage));
//     }
//   }

//   bool get _isBottom {
//     if (!_scrollController.hasClients) return false;
//     final maxScroll = _scrollController.position.maxScrollExtent;
//     final currentScroll = _scrollController.position.pixels;
//     return currentScroll >= (maxScroll * 0.9);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<UserBloc, UserState>(
//       builder: (context, state) {
//         if (state is UserInitial || state is UserLoading && _currentPage == 1) {
//           return Center(child: CircularProgressIndicator());
//         } else if (state is UserLoaded) {
//           return ListView.builder(
//             controller: _scrollController,
//             itemCount: state.users.length,
//             itemBuilder: (context, index) {
//               final user = state.users[index];
//               return Container(
//                 margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
//                 decoration: BoxDecoration(
//                   gradient: LinearGradient(
//                     colors: [Colors.blue.shade100, Colors.blue.shade300],
//                     begin: Alignment.topLeft,
//                     end: Alignment.bottomRight,
//                   ),
//                   borderRadius: BorderRadius.circular(10.0),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.black12,
//                       offset: Offset(0, 4),
//                       blurRadius: 8.0,
//                     ),
//                   ],
//                 ),
//                 child: ListTile(
//                   contentPadding:
//                       EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
//                   leading: CustomAvatar(imageUrl: user.avatar),
//                   title: Text(
//                     '${user.firstName} ${user.lastName}',
//                     style: TextStyle(
//                       fontSize: 18.0,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                     ),
//                   ),
//                   subtitle: Text(
//                     user.email,
//                     style: TextStyle(
//                       color: Colors.white70,
//                       fontStyle: FontStyle.italic,
//                     ),
//                   ),
//                   trailing: Icon(Icons.chevron_right, color: Colors.white),
//                   onTap: () {
//                     // Add your onTap functionality here
//                   },
//                 ),
//               );
//             },
//           );
//         } else if (state is UserError) {
//           return Center(child: Text(state.message));
//         } else {
//           return Container();
//         }
//       },
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:user_listing_app/domain/usecases/entities/user.dart';
// import 'package:user_listing_app/presentation/bloc/user_state.dart';
// // import 'package:user_listing_app/presentation/pages/user_details_page.dart'; // Import the UserDetailsPage
// import '../bloc/user_bloc.dart';

// // Custom widget for the avatar with shadow
// class CustomAvatar extends StatelessWidget {
//   final String imageUrl;

//   CustomAvatar({required this.imageUrl});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         shape: BoxShape.circle,
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black26,
//             offset: Offset(0, 2),
//             blurRadius: 6.0,
//           ),
//         ],
//       ),
//       child: CircleAvatar(
//         radius: 25.0,
//         backgroundImage: NetworkImage(imageUrl),
//         backgroundColor: Colors.grey.shade200,
//       ),
//     );
//   }
// }

// class UserListPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.teal,
//         title: Text('User Directory', style: TextStyle(color: Colors.white)),
//       ),
//       body: UserListView(),
//     );
//   }
// }

// class UserListView extends StatefulWidget {
//   @override
//   _UserListViewState createState() => _UserListViewState();
// }

// class _UserListViewState extends State<UserListView> {
//   final ScrollController _scrollController = ScrollController();
//   int _currentPage = 1;

//   @override
//   void initState() {
//     super.initState();
//     _scrollController.addListener(_onScroll);
//     BlocProvider.of<UserBloc>(context).add(GetUserList(page: _currentPage));
//   }

//   @override
//   void dispose() {
//     _scrollController.dispose();
//     super.dispose();
//   }

//   void _onScroll() {
//     if (_isBottom) {
//       _currentPage++;
//       BlocProvider.of<UserBloc>(context).add(GetUserList(page: _currentPage));
//     }
//   }

//   bool get _isBottom {
//     if (!_scrollController.hasClients) return false;
//     final maxScroll = _scrollController.position.maxScrollExtent;
//     final currentScroll = _scrollController.position.pixels;
//     return currentScroll >= (maxScroll * 0.9);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<UserBloc, UserState>(
//       builder: (context, state) {
//         if (state is UserInitial || state is UserLoading && _currentPage == 1) {
//           return Center(child: CircularProgressIndicator());
//         } else if (state is UserLoaded) {
//           return ListView.builder(
//             controller: _scrollController,
//             itemCount: state.users.length,
//             itemBuilder: (context, index) {
//               final user = state.users[index];
//               return Container(
//                 margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
//                 decoration: BoxDecoration(
//                   gradient: LinearGradient(
//                     colors: [Colors.blue.shade100, Colors.blue.shade300],
//                     begin: Alignment.topLeft,
//                     end: Alignment.bottomRight,
//                   ),
//                   borderRadius: BorderRadius.circular(10.0),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.black12,
//                       offset: Offset(0, 4),
//                       blurRadius: 8.0,
//                     ),
//                   ],
//                 ),
//                 child: ListTile(
//                   contentPadding:
//                       EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
//                   leading: CustomAvatar(imageUrl: user.avatar),
//                   title: Text(
//                     '${user.firstName} ${user.lastName}',
//                     style: TextStyle(
//                       fontSize: 18.0,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                     ),
//                   ),
//                   subtitle: Text(
//                     user.email,
//                     style: TextStyle(
//                       color: Colors.white70,
//                       fontStyle: FontStyle.italic,
//                     ),
//                   ),
//                   trailing: Icon(Icons.chevron_right, color: Colors.white),
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => UserDetailsPage(user: user),
//                       ),
//                     );
//                   },
//                 ),
//               );
//             },
//           );
//         } else if (state is UserError) {
//           return Center(child: Text(state.message));
//         } else {
//           return Container();
//         }
//       },
//     );
//   }
// }
// // import 'package:flutter/material.dart';
// // import 'package:user_listing_app/data/models/user_model.dart'; // Adjust the import according to your project's structure

// class UserDetailsPage extends StatelessWidget {
//   final User user;

//   UserDetailsPage({required this.user});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('${user.firstName} ${user.lastName}'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             CustomAvatar(imageUrl: user.avatar),
//             SizedBox(height: 16.0),
//             Text(
//               '${user.firstName} ${user.lastName}',
//               style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 8.0),
//             Text(
//               user.email,
//               style: TextStyle(fontSize: 16.0, fontStyle: FontStyle.italic),
//             ),
//             // Add more details here
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_listing_app/domain/usecases/entities/user.dart';
import 'package:user_listing_app/presentation/bloc/user_state.dart';
import '../bloc/user_bloc.dart';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// import '../widgets/custom_avatar.dart';
// Custom widget for the avatar with shadow
class CustomAvatar extends StatelessWidget {
  final String imageUrl;

  CustomAvatar({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(0, 2),
            blurRadius: 6.0,
          ),
        ],
      ),
      child: CircleAvatar(
        radius: 25.0,
        backgroundImage: NetworkImage(imageUrl),
        backgroundColor: Colors.grey.shade200,
      ),
    );
  }
}

class UserListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('User Directory', style: TextStyle(color: Colors.white)),
      ),
      body: UserListView(),
    );
  }
}

class UserListView extends StatefulWidget {
  @override
  _UserListViewState createState() => _UserListViewState();
}

class _UserListViewState extends State<UserListView> {
  final ScrollController _scrollController = ScrollController();
  int _currentPage = 1;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
    BlocProvider.of<UserBloc>(context).add(GetUserList(page: _currentPage));
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_isBottom) {
      _currentPage++;
      BlocProvider.of<UserBloc>(context).add(GetUserList(page: _currentPage));
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.position.pixels;
    return currentScroll >= (maxScroll * 0.9);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        if (state is UserInitial ||
            (state is UserLoading && _currentPage == 1)) {
          return Center(child: CircularProgressIndicator());
        } else if (state is UserLoaded) {
          return ListView.builder(
            controller: _scrollController,
            itemCount: state.users.length,
            itemBuilder: (context, index) {
              final user = state.users[index];
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => UserDetailsPage(
                          userId: user.id), // Pass userId to UserDetailsPage
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.blue.shade100, Colors.blue.shade300],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset(0, 4),
                        blurRadius: 8.0,
                      ),
                    ],
                  ),
                  child: ListTile(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                    leading: CustomAvatar(imageUrl: user.avatar),
                    title: Text(
                      '${user.firstName} ${user.lastName}',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    subtitle: Text(
                      user.email,
                      style: TextStyle(
                        color: Colors.white70,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    trailing: Icon(Icons.chevron_right, color: Colors.white),
                  ),
                ),
              );
            },
          );
        } else if (state is UserError) {
          return Center(child: Text(state.message));
        } else {
          return Container();
        }
      },
    );
  }
}

// class UserDetailsPage extends StatelessWidget {
//   final User user;

//   UserDetailsPage({required this.user});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('${user.firstName} ${user.lastName}'),
//       ),
//       body: SingleChildScrollView(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             SizedBox(height: 20.0),
//             Center(
//               child: Hero(
//                 tag: 'avatar-${user.id}', // Unique tag for each user's avatar
//                 child: CustomAvatar(
//                   imageUrl: user.avatar,
//                 ),
//               ),
//             ),
//             SizedBox(height: 20.0),
//             Text(
//               '${user.firstName} ${user.lastName}',
//               style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 8.0),
//             Text(
//               user.email,
//               style: TextStyle(fontSize: 18.0, color: Colors.grey),
//             ),
//             SizedBox(height: 20.0),
//             Divider(),
//             SizedBox(height: 20.0),
//             Text(
//               'Additional Details',
//               style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 12.0),
//             Text(
//               'Age: }',
//               style: TextStyle(fontSize: 18.0),
//             ),
//             SizedBox(height: 8.0),
//             Text(
//               'Phone: }',
//               style: TextStyle(fontSize: 18.0),
//             ),
//             SizedBox(height: 8.0),
//             Text(
//               'Address: dress}',
//               style: TextStyle(fontSize: 18.0),
//             ),
//             // Add more details here
//           ],
//         ),
//       ),
//     );
//   }
// }
// class UserDetailsPage extends StatefulWidget {
//   final int userId;

//   UserDetailsPage({required this.userId});

//   @override
//   _UserDetailsPageState createState() => _UserDetailsPageState();
// }

// class _UserDetailsPageState extends State<UserDetailsPage>
//     with SingleTickerProviderStateMixin {
//   late Future<Map<String, dynamic>> _userFuture;
//   late AnimationController _controller;
//   late Animation<double> _fadeAnimation;
//   late Animation<double> _rotateAnimation;
//   late Animation<double> _bounceAnimation;

//   @override
//   void initState() {
//     super.initState();
//     _userFuture = _fetchUserDetails();

//     _controller = AnimationController(
//       vsync: this,
//       duration: Duration(milliseconds: 800),
//     );

//     _fadeAnimation = Tween<double>(begin: 0, end: 1).animate(
//       CurvedAnimation(
//         parent: _controller,
//         curve: Curves.easeIn,
//       ),
//     );

//     _rotateAnimation = Tween<double>(begin: 0, end: 1).animate(
//       CurvedAnimation(
//         parent: _controller,
//         curve: Curves.easeInOut,
//       ),
//     );

//     _bounceAnimation = Tween<double>(begin: 0, end: 1.2).animate(
//       CurvedAnimation(
//         parent: _controller,
//         curve: Curves.elasticInOut,
//       ),
//     );

//     _controller.forward();
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   Future<Map<String, dynamic>> _fetchUserDetails() async {
//     final response = await http
//         .get(Uri.parse('https://reqres.in/api/users/${widget.userId}'));
//     if (response.statusCode == 200) {
//       return json.decode(response.body); // Correct usage of jsonDecode
//     } else {
//       throw Exception('Failed to load user details');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('User Details'),
//         backgroundColor: Colors.teal,
//       ),
//       body: Container(
//         height: MediaQuery.of(context).size.height,
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Colors.teal.shade100, Colors.blue.shade100],
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//           ),
//         ),
//         child: FutureBuilder(
//           future: _userFuture,
//           builder: (context, AsyncSnapshot<Map<String, dynamic>> snapshot) {
//             if (snapshot.connectionState == ConnectionState.waiting) {
//               return Center(child: CircularProgressIndicator());
//             } else if (snapshot.hasError) {
//               return Center(child: Text('Error: ${snapshot.error}'));
//             } else if (!snapshot.hasData || snapshot.data == null) {
//               return Center(child: Text('No data available'));
//             } else {
//               final user = snapshot.data!['data'];
//               final support = snapshot.data!['support'];

//               return SingleChildScrollView(
//                 padding: EdgeInsets.all(16.0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     RotationTransition(
//                       turns: _rotateAnimation,
//                       child: Container(
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(12.0),
//                           gradient: LinearGradient(
//                             colors: [Colors.teal, Colors.blue],
//                             begin: Alignment.topLeft,
//                             end: Alignment.bottomRight,
//                           ),
//                           boxShadow: [
//                             BoxShadow(
//                               color: Colors.grey.withOpacity(0.5),
//                               spreadRadius: 3,
//                               blurRadius: 7,
//                               offset:
//                                   Offset(0, 3), // changes position of shadow
//                             ),
//                           ],
//                         ),
//                         child: Padding(
//                           padding: const EdgeInsets.all(20.0),
//                           child: Hero(
//                             tag: 'avatar-${user['id']}',
//                             child: CustomAvatar(imageUrl: user['avatar']),
//                           ),
//                         ),
//                       ),
//                     ),
//                     SizedBox(height: 16.0),
//                     ScaleTransition(
//                       scale: _bounceAnimation,
//                       child: FadeTransition(
//                         opacity: _fadeAnimation,
//                         child: Padding(
//                           padding: const EdgeInsets.only(left: 40, right: 40),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 '${user['first_name']} ${user['last_name']}',
//                                 style: TextStyle(
//                                   fontSize: 18.0,
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors.black,
//                                 ),
//                               ),
//                               SizedBox(height: 8.0),
//                               Text(
//                                 user['email'],
//                                 style: TextStyle(
//                                   fontSize: 10.0,
//                                   fontStyle: FontStyle.italic,
//                                   color: Colors.grey.shade700,
//                                 ),
//                               ),
//                               SizedBox(height: 10.0),
//                               Divider(),
//                               SizedBox(height: 5.0),
//                               Text(
//                                 'Support Information',
//                                 style: TextStyle(
//                                   fontSize: 15.0,
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors.teal,
//                                 ),
//                               ),
//                               SizedBox(height: 10.0),
//                               Text(
//                                 support['text'],
//                                 style: TextStyle(
//                                   fontSize: 12.0,
//                                   color: Colors.black87,
//                                 ),
//                               ),
//                               SizedBox(height: 8.0),
//                               GestureDetector(
//                                 onTap: () {
//                                   // Handle URL navigation
//                                 },
//                                 child: Text(
//                                   'For more info, visit: ${support['url']}',
//                                   style: TextStyle(
//                                     fontSize: 18.0,
//                                     color: Colors.blue,
//                                     decoration: TextDecoration.underline,
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               );
//             }
//           },
//         ),
//       ),
//     );
//   }
// }

class UserDetailsPage extends StatefulWidget {
  final int userId;

  UserDetailsPage({required this.userId});

  @override
  _UserDetailsPageState createState() => _UserDetailsPageState();
}

class _UserDetailsPageState extends State<UserDetailsPage>
    with SingleTickerProviderStateMixin {
  late Future<Map<String, dynamic>> _userFuture;
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;
  late Animation<double> _rotateAnimation;
  late Animation<double> _bounceAnimation;

  @override
  void initState() {
    super.initState();
    _userFuture = _fetchUserDetails();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 800),
    );

    _fadeAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeIn,
      ),
    );

    _rotateAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );

    _bounceAnimation = Tween<double>(begin: 0, end: 1.2).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.elasticInOut,
      ),
    );

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<Map<String, dynamic>> _fetchUserDetails() async {
    final response = await http
        .get(Uri.parse('https://reqres.in/api/users/${widget.userId}'));
    if (response.statusCode == 200) {
      return json.decode(response.body); // Correct usage of jsonDecode
    } else {
      throw Exception('Failed to load user details');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Details'),
        backgroundColor: Colors.teal,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.teal.shade100, Colors.blue.shade100],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: FutureBuilder(
          future: _userFuture,
          builder: (context, AsyncSnapshot<Map<String, dynamic>> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else if (!snapshot.hasData || snapshot.data == null) {
              return Center(child: Text('No data available'));
            } else {
              final user = snapshot.data!['data'];
              final support = snapshot.data!['support'];

              return SingleChildScrollView(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RotationTransition(
                      turns: _rotateAnimation,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          gradient: LinearGradient(
                            colors: [Colors.teal, Colors.blue],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 3,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Hero(
                            tag: 'avatar-${user['id']}',
                            child: CustomAvatar(imageUrl: user['avatar']),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 24.0),
                    ScaleTransition(
                      scale: _bounceAnimation,
                      child: FadeTransition(
                        opacity: _fadeAnimation,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 24, right: 24),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${user['first_name']} ${user['last_name']}',
                                style: TextStyle(
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 4.0),
                              Text(
                                user['email'],
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontStyle: FontStyle.italic,
                                  color: Colors.grey.shade700,
                                ),
                              ),
                              SizedBox(height: 16.0),
                              Divider(),
                              SizedBox(height: 8.0),
                              Text(
                                'Support Information',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.teal,
                                ),
                              ),
                              SizedBox(height: 8.0),
                              Text(
                                support['text'],
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.black87,
                                ),
                              ),
                              // SizedBox(height: 12.0),
                              GestureDetector(
                                onTap: () {
                                  // Handle URL navigation
                                },
                                child: Text(
                                  'For more info, visit: ${support['url']}',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.blue,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
