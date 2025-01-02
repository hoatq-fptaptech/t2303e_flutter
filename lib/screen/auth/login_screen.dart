import 'package:flutter/material.dart';
import 'package:t2303e_flutter/my_page.dart';
class LoginScreen extends StatefulWidget{
    const LoginScreen({super.key});
    @override
  _StateLogin createState() => _StateLogin();
}
class _StateLogin extends State<LoginScreen>{
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  
  _login() async {
    // get email
    print(emailController.text);
    // get password
    print(passwordController.text);
    // call api login
    // get auth token
    // success -> redirect to MyPage screen
    Navigator.pushReplacement(context, 
      MaterialPageRoute(builder: (context)=> MyPage())
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
        backgroundColor: Colors.orange,
      ) ,
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: "Enter your email"
              ),
            ),
            TextField(
              controller: passwordController,
              decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: "Password"
              ),
            ),
            Padding(
                padding: EdgeInsets.all(20.0),
              child: FloatingActionButton(
                onPressed: _login,
                child: Text("Login"),
              ),
            )
          ],
        ),
      ),
    );
  }
}