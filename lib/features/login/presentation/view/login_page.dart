import 'package:flutter/material.dart';

import '../../../../core/di/injection_container.dart';
import '../bloc/bloc.dart';
import '../widgets/login_body.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<LoginBloc>(),
      child: _LoginView(),
    );
  }
}

class _LoginView extends StatelessWidget {
  const _LoginView();

  @override
  Widget build(BuildContext context) {
    return const LoginBody();
  }
}
