import 'package:flutter/material.dart';
import 'package:flutter_task_manager/core/app_export.dart';
import 'package:flutter_task_manager/widgets/custom_elevated_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 47.v),
                child: Column(children: [
                  Spacer(flex: 36),
                  CustomImageView(
                      imagePath: ImageConstant.imgGroup,
                      height: 103.v,
                      width: 106.h),
                  SizedBox(height: 62.v),
                  _buildTitleSection(context),
                  Spacer(flex: 63),
                  CustomElevatedButton(
                      width: 176.h,
                      text: "Sign up ",
                      onPressed: () {
                        onTapSignUp(context);
                      }),
                  SizedBox(height: 40.v),
                  GestureDetector(
                      onTap: () {
                        onTapTxtAlreadyhavean(context);
                      },
                      child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "Already Have An Account ?",
                                style: theme.textTheme.bodyLarge),
                            TextSpan(text: " "),
                            TextSpan(
                                text: "Log in",
                                style:
                                    CustomTextStyles.titleLargeRobotoffffffff),
                            TextSpan(text: " ")
                          ]),
                          textAlign: TextAlign.left))
                ]))));
  }

  /// Section Widget
  Widget _buildTitleSection(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 68.h, vertical: 4.v),
        decoration: AppDecoration.gradientOnPrimaryToBlueGray,
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          SizedBox(height: 30.v),
          Text("TASK MANAGER", style: theme.textTheme.headlineLarge),
          SizedBox(height: 11.v),
          Align(
              alignment: Alignment.centerRight,
              child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "Organize . ",
                        style: CustomTextStyles.bodyMediumIrishGroverff858383),
                    TextSpan(
                        text: "Prioritize . ",
                        style: CustomTextStyles.bodyMediumIrishGroverffffffff),
                    TextSpan(
                        text: "Accomplish",
                        style: CustomTextStyles.bodyMediumIrishGroverff3785e6)
                  ]),
                  textAlign: TextAlign.left))
        ]));
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapSignUp(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpScreen);
  }

  /// Navigates to the logiInScreen when the action is triggered.
  onTapTxtAlreadyhavean(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.logiInScreen);
  }
}
