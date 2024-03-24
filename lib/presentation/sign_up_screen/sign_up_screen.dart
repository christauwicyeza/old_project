import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_task_manager/core/app_export.dart';
import 'package:flutter_task_manager/widgets/custom_elevated_button.dart';
import 'package:flutter_task_manager/widgets/custom_text_form_field.dart';

class SignUpScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        title: Text("Create Account"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 40.0),
            CustomTextFormField(
              controller: emailController,
              hintText: "Email",
              prefix: Icon(Icons.email),
            ),
            SizedBox(height: 20.0),
            CustomTextFormField(
              controller: userNameController,
              hintText: "Username",
              prefix: Icon(Icons.person),
            ),
            SizedBox(height: 20.0),
            CustomTextFormField(
              controller: passwordController,
              hintText: "Password",
              prefix: Icon(Icons.lock),
              obscureText: true,
            ),
            SizedBox(height: 20.0),
            CustomTextFormField(
              controller: confirmPasswordController,
              hintText: "Confirm Password",
              prefix: Icon(Icons.lock),
              obscureText: true,
            ),
            SizedBox(height: 40.0),
            CustomElevatedButton(
              text: "Sign Up",
              onPressed: () {
                signUp(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  void signUp(BuildContext context) async {
    String email = emailController.text.trim();
    String userName = userNameController.text.trim();
    String password = passwordController.text.trim();
    String confirmPassword = confirmPasswordController.text.trim();

    if (email.isEmpty || userName.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Please fill all fields."),
          duration: Duration(seconds: 3),
        ),
      );
      return;
    }

    if (password != confirmPassword) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Passwords do not match."),
          duration: Duration(seconds: 3),
        ),
      );
      return;
    }

    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      await userCredential.user!.updateDisplayName(userName);

      Navigator.pushNamed(context, AppRoutes.logiInScreen);
    } on FirebaseAuthException catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(e.message ?? "Error signing up. Please try again."),
          duration: Duration(seconds: 3),
        ),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Error signing up. Please try again."),
          duration: Duration(seconds: 3),
        ),
      );
    }
  }
}
