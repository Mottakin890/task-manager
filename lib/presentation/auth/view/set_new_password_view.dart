import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_manager/common/widgets/auth_scaffold.dart';
import 'package:task_manager/presentation/auth/view/sign_up_view.dart';

class SetNewPasswordView extends StatelessWidget {
  const SetNewPasswordView({super.key});

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
              "Set New Password",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              "Enter your new password with minimum 8 digit character & confirm the password",
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontWeight: .bold,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 25),
            TextFormField(
              decoration: InputDecoration(hintText: 'New Password'),
            ),
            SizedBox(height: 10),
            TextFormField(
              decoration: InputDecoration(hintText: 'Confirm Password'),
            ),
            SizedBox(height: 10),
            FilledButton(
              onPressed: () {},
              child: Text(
                "Confirm",
                style: TextStyle(fontWeight: .bold, fontSize: 16),
              ),
            ),
            SizedBox(height: 35),
            Center(
              child: RichText(
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
            ),
          ],
        ),
      ),
    );
  }
}
