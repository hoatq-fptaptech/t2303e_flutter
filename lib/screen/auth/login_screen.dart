import 'package:flutter/material.dart';
import 'package:t2303e_flutter/my_page.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
class LoginScreen extends StatefulWidget{
    const LoginScreen({super.key});
    @override
  _StateLogin createState() => _StateLogin();
}
class _StateLogin extends State<LoginScreen>{
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool _obscureText = true;
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
  void initState() {
    super.initState();
    initialization();
  }

  void initialization() async {
    // This is where you can initialize the resources needed by your app while
    // the splash screen is displayed.  Remove the following example because
    // delaying the user experience is a bad design practice!
    // ignore_for_file: avoid_print
    print('ready in 3...');
    await Future.delayed(const Duration(seconds: 1));
    print('ready in 2...');
    await Future.delayed(const Duration(seconds: 1));
    print('ready in 1...');
    await Future.delayed(const Duration(seconds: 1));
    print('go!');
    FlutterNativeSplash.remove();
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
              obscureText: _obscureText,
              decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: "Password",
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscureText ? Icons.visibility : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                  ),
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