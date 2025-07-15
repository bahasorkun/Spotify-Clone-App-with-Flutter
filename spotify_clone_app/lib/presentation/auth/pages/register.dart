import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify_clone_app/common/helpers/is_dark_mode.dart';
import 'package:spotify_clone_app/common/widgets/appbar/app_bar.dart';
import 'package:spotify_clone_app/common/widgets/button/basic_app_button.dart';
import 'package:spotify_clone_app/core/configs/assets/app_vectors.dart';
import 'package:spotify_clone_app/core/configs/theme/app_colors.dart';
import 'package:spotify_clone_app/presentation/auth/pages/support_page.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppBar(
        title: SvgPicture.asset(
          AppVectors.logo,
          width: 100,
          height: 40,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _registerText(),
          const SizedBox(
            height: 15,
          ),
          Text.rich(
            TextSpan(
              text: "If You Need Any Support  ",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
                color:
                    context.isDarkMode ? AppColors.signinColor : Colors.black,
              ),
              children: [
                TextSpan(
                  text: "Click Here",
                  style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: AppColors.primary),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SupportPage(),
                        ),
                      );
                    },
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          _fullNameField(context),
          const SizedBox(
            height: 20,
          ),
          _enterEmailField(context),
          const SizedBox(
            height: 20,
          ),
          _passwordField(context),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 29.0),
            child: BasicAppButton(onPressed: () {}, title: "Create Account"),
          ),
          const SizedBox(
            height: 20,
          ),
          //Yatay çizgi ve "Or" metni
          Row(
            children: [
              Expanded(child: Divider(thickness: 1)),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Text("Or"),
              ),
              Expanded(child: Divider(thickness: 1)),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          //Google ve Apple butonları
          googleappleButtons(),
          const SizedBox(
            height: 30,
          ),
          //Kayıtlı mısınız? metni ve Giriş Yap linki
          _signText(context),
        ],
      ),
    );
  }

  Widget _registerText() {
    return const Text(
      "Register",
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        fontFamily: "Satoshi",
      ),
      textAlign: TextAlign.center,
    );
  }

  Widget _fullNameField(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28.0),
      child: TextField(
        decoration: const InputDecoration(
          hintText: "Full Name",
        ).applyDefaults(Theme.of(context).inputDecorationTheme),
      ),
    );
  }

  Widget _enterEmailField(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28.0),
      child: TextField(
        decoration: const InputDecoration(
          hintText: "Enter E-mail",
        ).applyDefaults(Theme.of(context).inputDecorationTheme),
      ),
    );
  }

  Widget _passwordField(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28.0),
      child: TextField(
        decoration: const InputDecoration(
          hintText: "Password",
        ).applyDefaults(Theme.of(context).inputDecorationTheme),
      ),
    );
  }

  Widget googleappleButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Google ikonunu ekle
        GestureDetector(
          onTap: () {
            // Google ile giriş işlemi
          },
          child: SvgPicture.asset(
            'assets/vectors/google_logo.svg', // Vektör dosya yolunu güncelle
            width: 40,
            height: 40,
          ),
        ),
        const SizedBox(width: 100),
        // Apple ikonunu ekle
        GestureDetector(
          onTap: () {
            // Apple ile giriş işlemi
          },
          child: SvgPicture.asset(
            'assets/vectors/apple_logo.svg', // Vektör dosya yolunu güncelle
            width: 40,
            height: 40,
          ),
        ),
      ],
    );
  }

  Widget _signText(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Do you have an account? ",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        GestureDetector(
          onTap: () {
            // Giriş yapma işlemi
          },
          child: const Text(
            "Sign In",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: AppColors.primary,
            ),
          ),
        ),
      ],
    );
  }
}
