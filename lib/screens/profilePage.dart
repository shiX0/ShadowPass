import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shadowpass/Services/firebase_services.dart';
import 'package:shadowpass/repo/UserRepository.dart';
import '../Models/UserModel.dart';
import '../repo/Authrepo.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final  _userRepository =UserRepository();
  UserModel? _user;
  FirebaseAuth _auth = FirebaseService.firebaseAuth;

  @override
  void initState() {
    super.initState();
    _loadUserDetails();
  }

  Future<void> _loadUserDetails() async {
    try {
      String? userId = _auth.currentUser?.uid;
      print(userId);
      UserModel? user = (await _userRepository.getUserDetail(userId));
      setState(() {
        _user = user;
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: _user != null
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('First Name: ${_user!.firstName}'),
                Text('Last Name: ${_user!.lastName}'),
                Text('Gender: ${_user!.gender}'),
                Text('Date of Birth: ${_user!.dob}'),
                Text('Email: ${_user!.email}'),
              ],
            )
          : Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
