import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart'; // Import FirebaseAuth if needed
import 'package:shadowpass/screens/passwordDetailsPage.dart';
import '../Models/PasswordModel.dart';
import '../repo/PasswordRepo.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PasswordRepository _passwordRepository = PasswordRepository();
  List<PasswordModel> _passwords = [];
  FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  void initState() {
    super.initState();
    if(_auth!=null){
    _loadPasswords();}
    else{
      Navigator.pushNamed(context,"/login");
    }
  }
  Future<void> _loadPasswords() async {
    try {
      String userId = _auth.currentUser?.uid ?? "dasd"; // Provide a default value if uid is null
      var passwords = await _passwordRepository.getAllPasswords(userId);
      var lac = passwords.map((element) => element.data()).toList();
      setState(() {
        _passwords = lac;
      });
    } catch (e) {
      print(e);
    }
  }

  void _navigateToPasswordDetail(PasswordModel password) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PasswordDetailPage(password: password),
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Passwords'),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {
             Navigator.pushNamed(context, "/profile");
            },
          ),
        ],
      ),
      body: ListView.separated(
        itemCount: _passwords.length,
        separatorBuilder: (context, index) => SizedBox(height: 8), // Add some separation between items
        itemBuilder: (context, index) {
          var password = _passwords[index];
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10), // Rounded corners
            ),
            elevation: 4, // Elevation for a card-like appearance
            child: ListTile(
              onTap: () {
                _navigateToPasswordDetail(password); // Handle tap action
              },
              title: Text(
                password.title ?? "No Title",
                style: TextStyle(color: Colors.black), // Set black text color
              ),
              subtitle: Text(
                password.username ?? "No Username",
                style: TextStyle(color: Colors.grey), // Set grey text color
              ),
              // Add other UI elements or widgets as needed
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/addpassword'); // Navigate to the named route
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.purple, // Set the background color
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
