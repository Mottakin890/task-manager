import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_manager/common/theme/app_colors.dart';
import 'package:task_manager/common/widgets/auth_scaffold.dart';
import 'package:task_manager/presentation/auth/view/sign_in_view.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthScaffold(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            SizedBox(height: 150),
            Text("Join With Us", style: Theme.of(context).textTheme.titleLarge),
            SizedBox(height: 25),
            TextFormField(decoration: InputDecoration(hintText: 'Email')),
            SizedBox(height: 10),
            TextFormField(decoration: InputDecoration(hintText: 'First Name')),
            SizedBox(height: 10),
            TextFormField(decoration: InputDecoration(hintText: 'Last Name')),
            SizedBox(height: 10),
            TextFormField(decoration: InputDecoration(hintText: 'Mobile')),
            SizedBox(height: 10),
            TextFormField(decoration: InputDecoration(hintText: 'Password')),
            SizedBox(height: 10),
            FilledButton(
              onPressed: () {},
              child: Icon(Icons.arrow_circle_right_outlined),
            ),
            SizedBox(height: 35),
            Center(
              child: RichText(
                text: TextSpan(
                  text: "Already have an account?",
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
                              builder: (context) => const SignInView(),
                            ),
                          );
                        },
                      text: ' Sign In',
                      style: TextStyle(color: AppColors.cPrimary),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
