import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  final String email;
  final String password;

  const Home({Key? key, required this.email, required this.password}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void _logout() {

  Navigator.pop(context);
}

  @override
  Widget build(BuildContext context) {

    return Scaffold(appBar: AppBar(backgroundColor:Colors.blue,automaticallyImplyLeading:false,title: Text("Home"), actions: [
      IconButton(
        icon: Icon(Icons.logout),
        onPressed: _logout,
      ),
    ],),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      color: Color(0xFF3f03c64),
                      height: 190,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: [

                          

                          SizedBox(width: 50,height: 30,),
                          Text("Welcome",style: TextStyle(color: Colors.blue,fontSize: 26),),
                          Text(
                            'Email: ${widget.email}',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Password: ${widget.password}',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),

                      ],
                    )
                    )],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
