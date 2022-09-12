import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tickets/config/constants/app_colors.dart';
import 'package:tickets/config/constants/app_decorations.dart';
import 'package:tickets/config/constants/app_text_styles.dart';

import '../../../config/constants/assets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _controllerOne = TextEditingController();
  final TextEditingController _controllerTwo = TextEditingController();
  final TextEditingController _controllerThree = TextEditingController();
  final TextEditingController _controllerFour = TextEditingController();
  final TextEditingController _controllerFive = TextEditingController();
  final TextEditingController _controllerSix = TextEditingController();
  final TextEditingController _controllerSeven = TextEditingController();
  final TextEditingController _controllerEight = TextEditingController();
  final TextEditingController _controllerNine = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.enableButtonColor,
      body: Column(
        children: [
          Container(
            height: 160,
            padding: const EdgeInsets.symmetric(horizontal: 55),
            width: double.infinity,
            child: SvgPicture.asset(Assets.icons.appLogo),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: AppDecorations.defDecor.copyWith(
                color: AppColors.bgColor,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Ваш код',
                          style: AppTextStyles.h4.copyWith(color: AppColors.secondaryTextColor),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            PinItem(controllerOne: _controllerOne),
                            PinItem(controllerOne: _controllerTwo),
                            PinItem(controllerOne: _controllerThree),
                            PinItem(controllerOne: _controllerFour),
                            PinItem(controllerOne: _controllerFive),
                            PinItem(controllerOne: _controllerSix),
                            PinItem(controllerOne: _controllerSeven),
                            PinItem(controllerOne: _controllerEight),
                            PinItem(controllerOne: _controllerNine),
                            IconButton(onPressed: () {}, icon: SvgPicture.asset(Assets.icons.cancel))
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
                    child: TextButton(
                      onPressed: () {},
                      style: AppDecorations.buttonStyle(
                        bgColor: AppColors.disableButtonColor,
                        padding: const EdgeInsets.symmetric(vertical: 17),
                      ),
                      child: Text(
                        'Войти',
                        style: AppTextStyles.h4.copyWith(color: AppColors.secondaryTextColor),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PinItem extends StatelessWidget {
  const PinItem({
    Key? key,
    required TextEditingController controllerOne,
  })  : _controllerOne = controllerOne,
        super(key: key);

  final TextEditingController _controllerOne;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 30,
      height: 30,
      child: TextField(
        controller: _controllerOne,
        textAlign: TextAlign.center,
        maxLength: 1,
        keyboardType: const TextInputType.numberWithOptions(),
        style: AppTextStyles.h2,
        showCursor: false,
        decoration: const InputDecoration(
          counterText: '',
          enabledBorder: UnderlineInputBorder(),
          focusedBorder: UnderlineInputBorder(),
        ),
      ),
    );
  }
}
