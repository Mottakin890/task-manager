import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_manager/common/widgets/auth_scaffold.dart';
import 'package:task_manager/presentation/auth/view/forgot_password_view.dart';
import 'package:task_manager/presentation/auth/view/sign_up_view.dart';
import 'package:task_manager/presentation/dashboard/view/dashboard_view.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthScaffold(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            SizedBox(height: 150),
            Text(
              "Get Started With",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            SizedBox(height: 25),
            TextFormField(decoration: InputDecoration(hintText: 'Email')),
            SizedBox(height: 10),
            TextFormField(decoration: InputDecoration(hintText: 'Password')),
            SizedBox(height: 10),
            FilledButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const DashboardView()),
                );
              },
              child: Icon(Icons.arrow_circle_right_outlined),
            ),
            SizedBox(height: 35),
            Center(
              child: Column(
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ForgotPasswordView(),
                        ),
                      );
                    },
                    child: Text(
                      'Forget Password ?',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      text: "Don't have an account?",
                      style: TextStyle(
                        color: Colors.grey.shade700,
                        fontWeight: .bold,
                      ),
                      children: [
                        TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SignUpView(),
                                ),
                              );
                            },
                          text: ' Sign Up',
                          style: TextStyle(color: Color(0xFF46AF50)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
