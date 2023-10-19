import 'package:flutter/material.dart';

import 'My_Textfield.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  final emailController = TextEditingController();
  final passController = TextEditingController();
  Widget build(BuildContext context) {
    String email = '';
    String pass = '';
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        child: Stack(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue.shade800,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Welcome',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 60,
                            fontFamily: 'PlayfairDisplay',
                          ),
                        ),
                        Text(
                          'Login Here',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontFamily: 'PlayfairDisplay',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Expanded(
                  child: MyTextField(
                    controller: emailController,
                    obscureText: false,
                    textHint: 'Email',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Expanded(
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.11),
                        blurRadius: 40,
                        spreadRadius: 0,
                      ),
                    ]),
                    child: TextField(
                      onChanged: (value) {
                        pass = value;
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Password',
                        prefixIcon: const Icon(Icons.lock),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        contentPadding: const EdgeInsets.all(20),
                        prefixIconConstraints: const BoxConstraints(minWidth: 50),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'forgot password?',
                      style: TextStyle(
                        color: Colors.orange.shade700,
                      ),
                    )
                  ],
                ),
              ),
              Center(
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: TextButton(
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(vertical: 10, horizontal: 110),
                      ),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.blue.shade800),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, 'homepage');
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'PlayfairDisplay',
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey.shade400,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: Text('Or continue with'),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey.shade400,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.symmetric(horizontal: 130, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.grey.shade500),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'homepage');
                  },
                  child: Image.asset(
                    'images/googleimage.png',
                    height: 50,
                    width: 50,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'If not registered then',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'register');
                        },
                        child: Text(
                          'click here',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.blue.shade800,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
