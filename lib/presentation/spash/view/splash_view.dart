import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_manager/common/resources/app_assets.dart';
import 'package:task_manager/common/widgets/auth_scaffold.dart';
import 'package:task_manager/presentation/auth/view/sign_in_view.dart';
import 'package:task_manager/presentation/spash/bloc/splash_bloc.dart';
import 'package:task_manager/presentation/spash/bloc/splash_state.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashBloc, SplashState>(
      listener: (context, state) {
        if (state.status == SplashStatus.loaded) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const SignInView()),
          );
        }
      },
      child: AuthScaffold(
        child: Center(child: SvgPicture.asset(AppAssets.logo)),
      ),
    );
  }
}
