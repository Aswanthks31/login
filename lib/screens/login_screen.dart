import 'package:flutter/material.dart';
import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  bool isLoginSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white24,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 190.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Text(
                      "Go ahead and set up \nyour account",
                      style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Text(
                      "Sign in to enjoy the best managing experience",
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    height: 580,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Container(
                            height: 60,
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isLoginSelected = true;
                                      });
                                    },
                                    child: Container(
                                      margin: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        color: isLoginSelected
                                            ? Colors.white
                                            : Colors.transparent,
                                        borderRadius: BorderRadius.circular(30),
                                        boxShadow: isLoginSelected
                                            ? [
                                          BoxShadow(
                                              color: Colors.black26,
                                              blurRadius: 5,
                                              offset: Offset(0, 2))
                                        ]
                                            : [],
                                      ),
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Login",
                                        style: TextStyle(
                                          color: isLoginSelected
                                              ? Colors.black
                                              : Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isLoginSelected = false;
                                      });
                                    },
                                    child: Container(
                                      margin: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        color: !isLoginSelected
                                            ? Colors.white
                                            : Colors.transparent,
                                        borderRadius: BorderRadius.circular(30),
                                        boxShadow: !isLoginSelected
                                            ? [
                                          BoxShadow(
                                              color: Colors.black26,
                                              blurRadius: 5,
                                              offset: Offset(0, 2))
                                        ]
                                            : [],
                                      ),
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Register",
                                        style: TextStyle(
                                          color: !isLoginSelected
                                              ? Colors.black
                                              : Colors.grey,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          // Conditionally display Name field for Register
                          if (!isLoginSelected)
                            TextField(
                              controller: nameController,
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.person),
                                labelText: "Name",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                            ),
                          SizedBox(height: 20),
                          // Email TextField
                          TextField(
                            controller: emailController,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.email),
                              labelText: "E-mail ID",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          // Password TextField
                          TextField(
                            controller: passwordController,
                            obscureText: true,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.lock),
                              labelText: "Password",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          if (isLoginSelected)
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Checkbox(value: false, onChanged: (value) {}),
                                    Text("Remember me"),
                                  ],
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text("Forget Password?"),
                                ),
                              ],
                            ),
                          SizedBox(height: 10),
                          // Login/Register Button
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Home(
                                    email: emailController.text,
                                    password: passwordController.text,
                                  ),
                                ),
                              );
                            },
                            child: Text(isLoginSelected ? "Login" : "Register"),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blueAccent,
                              minimumSize: Size(double.infinity, 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text("Or login with"),
                          SizedBox(height: 10),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  width: 150,
                                  padding: EdgeInsets.symmetric(
                                      vertical: 12, horizontal: 24),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.white, // White background
                                    border: Border.all(
                                        color: Colors.black, width: 1),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 6.0),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'assets/img/google.png',
                                          height: 30,
                                          width: 30,
                                        ),
                                        SizedBox(width: 10),
                                        Text("Google"),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 20),
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  width: 150,
                                  padding: EdgeInsets.symmetric(
                                      vertical: 12, horizontal: 24),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.white, // White background
                                    border: Border.all(
                                        color: Colors.black, width: 1),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'assets/img/apple.jpg',
                                          height: 30,
                                          width: 30,
                                        ),
                                        SizedBox(width: 10),
                                        Text("Apple"),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          Positioned(
            top: 50,
            left: 20,
            child: ClipOval(
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(
                    color: Colors.blue,
                    width: 2,
                  ),
                ),
                child: IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.blue),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
