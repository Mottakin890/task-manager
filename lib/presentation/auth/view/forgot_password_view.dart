import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_manager/common/theme/app_colors.dart';
import 'package:task_manager/common/widgets/auth_scaffold.dart';
import 'package:task_manager/presentation/auth/view/pininput_view.dart';
import 'package:task_manager/presentation/auth/view/sign_in_view.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

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
              "Your Email Address",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              "A 6 digit verification pin will send to your\nemail address",
              style: Theme.of(
                context,
              ).textTheme.bodyMedium!.copyWith(color: Colors.grey, fontWeight: .bold),
            ),
            SizedBox(height: 25),
            TextFormField(decoration: InputDecoration(hintText: 'Email')),
            SizedBox(height: 10),
            FilledButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PininputView()),
                );
              },
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
