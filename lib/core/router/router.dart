import 'package:flutter/material.dart';

import '../../features/auth/screens/login_screen.dart';
import '../common/widgets/error_screen.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case LoginScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      );

    default:
      return MaterialPageRoute(
        builder: (context) => const Scaffold(
          body: ErrorScreen(
            error: 'This page doesn\'t exist.',
          ),
        ),
      );
  }
}
