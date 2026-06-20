import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:task_manager/common/theme/app_colors.dart';
import 'package:task_manager/common/widgets/auth_scaffold.dart';
import 'package:task_manager/presentation/auth/view/set_new_password_view.dart';

class PininputView extends StatelessWidget {
  const PininputView({super.key});

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
              "Pin Verification",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              "Enter the 6 digit pin sent to your email address",
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontWeight: .bold,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 25),
            MaterialPinFormField(
              length: 6,
              theme: MaterialPinTheme(
                cellSize: Size(40, 50),
                shape: MaterialPinShape.outlined,
                borderRadius: .circular(8),
                fillColor: AppColors.bgPrimary,
                completeFillColor: AppColors.bgPrimary,
                cursorHeight: 18,
                spacing: 16,
                cursorColor: Colors.grey,
                errorFillColor: AppColors.bgPrimary,
                filledFillColor: AppColors.bgPrimary,
                obscuringCharacter: '*',
                focusedFillColor: AppColors.bgPrimary,
                disabledBorderColor: Colors.grey,
                borderColor: Colors.grey,
                errorBorderColor: Colors.red,
                filledBorderColor: Colors.grey,
                focusedBorderColor: Colors.grey,
              ),
            ),
            SizedBox(height: 10),
            FilledButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SetNewPasswordView(),
                  ),
                );
              },
              child: Text(
                "Verify",
                style: TextStyle(fontWeight: .bold, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
