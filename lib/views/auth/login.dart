import 'package:flutter/material.dart';
import 'package:shopbuzzer/helpers/constants.dart';
import 'package:shopbuzzer/views/auth/register.dart';
import 'package:shopbuzzer/views/home_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  //text controllers
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future signIn() async {
    if (_passwordController.text.isNotEmpty &&
        _passwordController.text.isNotEmpty) {
      //progress bar
      showDialog(
        context: context,
        builder: (context) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      );

      // await FirebaseAuth.instance.signInWithEmailAndPassword(
      //   email: _emailController.text.trim(),
      //   password: _passwordController.text.trim(),
      // );

      //dismis loading
      Navigator.pop(context);
    }
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/logo_sm.png"),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Welcome Back!",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                //color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Email",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: 'example@gmail.com'),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Password",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'password',
              ),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Forgot Password',
                    style: TextStyle(color: kPrimaryColor, fontSize: 15),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            SizedBox(
              width: 250,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    routeTransition(
                      const HomeView(),
                    ),
                  );
                },
                style: ButtonStyle(
                  padding:
                      MaterialStateProperty.all(const EdgeInsets.all(10.0)),
                  backgroundColor: MaterialStateProperty.all(kBlackColor),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                child: const Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context)
                    .push(routeTransition(const RegistrationView()));
              },
              child: const Text(
                "New User? Create Account",
                style: TextStyle(
                  fontSize: 15,
                  color: kPrimaryColor,
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
