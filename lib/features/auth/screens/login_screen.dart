import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';

import '../../../core/common/widgets/custom_button.dart';
import '../../../core/theme/app_colors.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = '/loginScreen';
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final phoneController = TextEditingController();
  Country? _country;

  @override
  void dispose() {
    phoneController.dispose();
    super.dispose();
  }

  void pickCountry() {
    showCountryPicker(
      countryListTheme: const CountryListThemeData(
        backgroundColor: AppColors.backgroundColor,
      ),
      context: context,
      onSelect: (Country country) {
        setState(() {
          _country = country;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Enter your phone number'),
        elevation: 0,
        backgroundColor: AppColors.backgroundColor,
      ),
      // ignore: prefer_const_constructors
      body: Padding(
        padding: const .all(18.0),
        child: Column(
          children: [
            const Text('WhatsApp will need to verify your phone number.'),
            const SizedBox(height: 10),
            TextButton(
              onPressed: pickCountry,
              child: const Text('Pick country'),
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                if (_country != null) Text('+${_country!.phoneCode}'),
                const SizedBox(width: 10),
                SizedBox(
                  width: size.width * 0.7,
                  child: TextField(
                    controller: phoneController,
                    decoration: const InputDecoration(
                      hintText: 'Phone number',
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: size.height * 0.6),
            SizedBox(
              width: 90,
              child: CustomButton(
                buttonText: 'Next',
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
