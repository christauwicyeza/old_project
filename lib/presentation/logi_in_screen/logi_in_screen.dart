import 'package:flutter/material.dart';
import 'package:taskmanagerfigma_to_flutter/core/app_export.dart';
import 'package:taskmanagerfigma_to_flutter/widgets/app_bar/appbar_title.dart';
import 'package:taskmanagerfigma_to_flutter/widgets/app_bar/custom_app_bar.dart';
import 'package:taskmanagerfigma_to_flutter/widgets/custom_elevated_button.dart';
import 'package:taskmanagerfigma_to_flutter/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LogiInScreen extends StatelessWidget {
  LogiInScreen({Key? key}) : super(key: key);

  TextEditingController userNamevalueController = TextEditingController();

  TextEditingController editTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 29.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  height: 52.v,
                  width: 130.h,
                  child: Stack(alignment: Alignment.center, children: [
                    Align(
                        alignment: Alignment.center,
                        child: Text("Log In".toUpperCase(),
                            style: theme.textTheme.displaySmall)),
                    Align(
                        alignment: Alignment.center,
                        child: Text("Log In".toUpperCase(),
                            style: theme.textTheme.displaySmall))
                  ])),
              SizedBox(height: 77.v),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: EdgeInsets.only(left: 32.h),
                      child: Text("User Name",
                          style: CustomTextStyles.headlineMediumIndigo50))),
              SizedBox(height: 14.v),
              CustomTextFormField(
                  controller: userNamevalueController,
                  hintText: "Umwari ornella",
                  borderDecoration: TextFormFieldStyleHelper.fillGrayTL38),
              SizedBox(height: 18.v),
              _buildPasswordStack(context),
              SizedBox(height: 99.v),
              CustomElevatedButton(
                  width: 176.h,
                  text: "Log in",
                  onPressed: () {
                    onTapLogIn(context);
                  }),
              SizedBox(height: 1.v)
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: AppbarTitle(
        text: "TASK MANAGER",
        margin: EdgeInsets.only(
          top: 46.v,
          bottom: 23.v,
        ),
      ),
      styleType: Style.bgGradientnameonPrimarynamebluegray900,
    );
  }

  /// Section Widget
  Widget _buildPasswordStack(BuildContext context) {
    return SizedBox(
        height: 120.v,
        width: 328.h,
        child: Stack(alignment: Alignment.topLeft, children: [
          CustomTextFormField(
            width: 328.h,
            controller: editTextController,
            textInputAction: TextInputAction.done,
            alignment: Alignment.bottomCenter,
            obscureText: true,
            borderDecoration: TextFormFieldStyleHelper.fillGrayTL38,
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 32.h),
                  child: Text(
                    "Password",
                    style: CustomTextStyles.headlineMediumIndigo50,
                  ),
                ),
                SizedBox(height: 10.v),
                Container(
                  width: 328.h,
                  padding:
                      EdgeInsets.symmetric(horizontal: 41.h, vertical: 14.v),
                  decoration: AppDecoration.fillGray50.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder38),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "............",
                        style: theme.textTheme.headlineMedium,
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ]));
  }

  /// Navigates to the dashboardScreen when the action is triggered.
  onTapLogIn(BuildContext context) 
    Navigator.pushNamed(
      context,
      AppRoutes.dashboardScreen,
    );
  }
}
