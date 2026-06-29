import 'package:flutter/material.dart';

import '../../../core/common/widgets/custom_button.dart';
import '../../../core/theme/app_colors.dart';
import '../../auth/screens/login_screen.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  Future<void> onPressed(BuildContext context) async {
    await Navigator.pushNamed(context, LoginScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 50),
            const Text(
              'Welcome to WhatsApp',
              style: TextStyle(fontSize: 33, fontWeight: .w600),
            ),
            SizedBox(height: size.height / 9),
            Image.asset(
              'assets/bg.png',
              height: 340,
              width: 340,
              color: AppColors.tabColor,
            ),
            SizedBox(height: size.height / 9),
            const Padding(
              padding: .all(15.0),
              child: Text(
                'Read our Privacy Policy. Tap "Agree and continue" to accept the Terms of Use',
                textAlign: .center,
                style: TextStyle(
                  color: AppColors.greyColor,
                ),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: size.width * 0.75,
              child: CustomButton(
                onPressed: () => onPressed(context),
                buttonText: 'AGREE AND CONTINUE',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
