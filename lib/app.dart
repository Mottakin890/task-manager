import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_manager/common/theme/app_theme.dart';
import 'package:task_manager/presentation/spash/bloc/splash_bloc.dart';
import 'package:task_manager/presentation/spash/bloc/splash_event.dart';
import 'package:task_manager/presentation/spash/view/splash_view.dart';

class TaskManager extends StatelessWidget {
  const TaskManager({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => SplashBloc()..add(AppStarted())),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme:AppTheme.theme ,
        home: SplashView(),
      ),
    );
  }
}
