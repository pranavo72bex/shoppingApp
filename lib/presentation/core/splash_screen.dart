import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoppingApp/application/auth/auth_bloc.dart';

import 'app_router.gr.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          unknown: (_) {},
          authenticated: (_) {
            ExtendedNavigator.of(context).replace(Routes.bottomNavigationPage);
          },
          unauthenticated: (_) {
            ExtendedNavigator.of(context).replace(Routes.signinPage);
          },
        );
      },
      child: Scaffold(
        body: Center(child: Image.asset('assets/app_icon.jpg')),
      ),
    );
  }
}
