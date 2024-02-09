import 'package:flutter/material.dart';
import 'package:taskmanagerfigma_to_flutter/core/app_export.dart';
import 'package:taskmanagerfigma_to_flutter/widgets/app_bar/appbar_title.dart';
import 'package:taskmanagerfigma_to_flutter/widgets/app_bar/custom_app_bar.dart';
import 'package:taskmanagerfigma_to_flutter/widgets/custom_elevated_button.dart';
import 'package:taskmanagerfigma_to_flutter/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

  TextEditingController editTextController = TextEditingController();

  TextEditingController editTextController1 = TextEditingController();

  TextEditingController userNamevalueController = TextEditingController();

  TextEditingController editTextController2 = TextEditingController();

  TextEditingController editTextController3 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SingleChildScrollView(
          child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 45.h, vertical: 39.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                            height: 35.v,
                            width: 229.h,
                            child:
                                Stack(alignment: Alignment.center, children: [
                              Align(
                                  alignment: Alignment.center,
                                  child: Text("Create account".toUpperCase(),
                                      style: CustomTextStyles
                                          .headlineSmallMcLarenOnPrimaryContainer)),
                              Align(
                                  alignment: Alignment.center,
                                  child: SizedBox(
                                      height: 35.v,
                                      width: 229.h,
                                      child: Align(
                                          alignment: Alignment.center,
                                          child: Text(
                                              "Create account".toUpperCase(),
                                              style: CustomTextStyles
                                                  .headlineSmallMcLarenOnPrimaryContainer))))
                            ]))),
                    SizedBox(height: 56.v),
                    _buildEmail(context),
                    SizedBox(height: 15.v),
                    _buildUserName(context),
                    SizedBox(height: 16.v),
                    _buildPassword1(context),
                    SizedBox(height: 18.v),
                    SizedBox(
                        height: 104.v,
                        width: 286.h,
                        child: Stack(alignment: Alignment.topLeft, children: [
                          CustomTextFormField(
                              width: 286.h,
                              controller: editTextController3,
                              textInputAction: TextInputAction.done,
                              alignment: Alignment.bottomCenter,
                              obscureText: true),
                          Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 28.h),
                                  child: Text("Confirm Password",
                                      style: theme.textTheme.headlineSmall))),
                          Align(
                              alignment: Alignment.center,
                              child: SizedBox(
                                  height: 104.v,
                                  width: 286.h,
                                  child: Stack(
                                      alignment: Alignment.topLeft,
                                      children: [
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Container(
                                                height: 67.v,
                                                width: 286.h,
                                                decoration: BoxDecoration(
                                                    color: appTheme.gray50,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            33.h)))),
                                        Align(
                                            alignment: Alignment.topLeft,
                                            child: Padding(
                                                padding:
                                                    EdgeInsets.only(left: 28.h),
                                                child: Text("Confirm Password",
                                                    style: theme.textTheme
                                                        .headlineSmall))),
                                        _buildPassword3(context,
                                            dotsText: "............")
                                      ])))
                        ])),
                    SizedBox(height: 28.v),
                    CustomElevatedButton(
                        width: 176.h,
                        text: "Sign up",
                        margin: EdgeInsets.only(left: 51.h),
                        onPressed: () {
                          onTapSignUp(context);
                        }),
                    SizedBox(height: 3.v)
                  ])),
        ));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        centerTitle: true,
        title: AppbarTitle(
            text: "TASK MANAGER",
            margin: EdgeInsets.only(top: 46.v, bottom: 23.v)),
        styleType: Style.bgGradientnameonPrimarynamebluegray900);
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return SizedBox(
        height: 102.v,
        width: 286.h,
        child: Stack(alignment: Alignment.topLeft, children: [
          CustomTextFormField(
              width: 286.h,
              controller: editTextController,
              alignment: Alignment.bottomCenter,
              borderDecoration: TextFormFieldStyleHelper.fillWhiteA,
              fillColor: appTheme.whiteA700),
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 28.h),
                  child: Text("Email",
                      style: CustomTextStyles.headlineSmallGray5001))),
          Align(
              alignment: Alignment.center,
              child: SizedBox(
                  height: 102.v,
                  width: 286.h,
                  child: Stack(alignment: Alignment.topLeft, children: [
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                            height: 67.v,
                            width: 286.h,
                            decoration: BoxDecoration(
                                color: appTheme.whiteA700,
                                borderRadius: BorderRadius.circular(33.h)))),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                            padding: EdgeInsets.only(left: 28.h),
                            child: Text("Email",
                                style:
                                    CustomTextStyles.headlineSmallGray5001))),
                    Align(
                        alignment: Alignment.center,
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(left: 28.h),
                                  child: Text("Email",
                                      style: CustomTextStyles
                                          .headlineSmallGray5001)),
                              SizedBox(height: 6.v),
                              Container(
                                  width: 286.h,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 37.h, vertical: 18.v),
                                  decoration: AppDecoration.fillWhiteA.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder33),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 6.v),
                                        Text("ornella@gmail.com",
                                            style: CustomTextStyles
                                                .titleLargeRobotoGray700_1)
                                      ]))
                            ]))
                  ])))
        ]));
  }

  /// Section Widget
  Widget _buildUserName(BuildContext context) {
    return SizedBox(
        height: 108.v,
        width: 286.h,
        child: Stack(alignment: Alignment.center, children: [
          CustomTextFormField(
              width: 286.h,
              controller: editTextController1,
              alignment: Alignment.bottomCenter),
          Align(
              alignment: Alignment.center,
              child: SizedBox(
                  height: 108.v,
                  width: 286.h,
                  child: Stack(alignment: Alignment.topLeft, children: [
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                            height: 67.v,
                            width: 286.h,
                            decoration: BoxDecoration(
                                color: appTheme.gray50,
                                borderRadius: BorderRadius.circular(33.h)))),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                            padding: EdgeInsets.only(left: 26.h),
                            child: Text("User Name",
                                style: theme.textTheme.headlineSmall))),
                    Align(
                        alignment: Alignment.center,
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(left: 26.h),
                                  child: Text("User Name",
                                      style: theme.textTheme.headlineSmall)),
                              SizedBox(height: 11.v),
                              CustomTextFormField(
                                  controller: userNamevalueController,
                                  hintText: "Umwari ornella",
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 28.h, vertical: 19.v))
                            ]))
                  ])))
        ]));
  }

  /// Section Widget
  Widget _buildPassword1(BuildContext context) {
    return SizedBox(
        height: 104.v,
        width: 286.h,
        child: Stack(alignment: Alignment.topLeft, children: [
          CustomTextFormField(
              width: 286.h,
              controller: editTextController2,
              alignment: Alignment.bottomCenter,
              obscureText: true),
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 28.h),
                  child:
                      Text("Password", style: theme.textTheme.headlineSmall))),
          Align(
              alignment: Alignment.center,
              child: SizedBox(
                  height: 104.v,
                  width: 286.h,
                  child: Stack(alignment: Alignment.topLeft, children: [
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                            height: 67.v,
                            width: 286.h,
                            decoration: BoxDecoration(
                                color: appTheme.gray50,
                                borderRadius: BorderRadius.circular(33.h)))),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                            padding: EdgeInsets.only(left: 28.h),
                            child: Text("Password",
                                style: theme.textTheme.headlineSmall))),
                    _buildPassword3(context, dotsText: "............")
                  ])))
        ]));
  }

  /// Common widget
  Widget _buildPassword3(
    BuildContext context, {
    required String dotsText,
  }) {
    return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 8.v),
          Container(
              width: 286.h,
              padding: EdgeInsets.symmetric(horizontal: 37.h, vertical: 7.v),
              decoration: AppDecoration.fillGray50
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder33),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 19.v),
                    Text(dotsText,
                        style: theme.textTheme.headlineMedium!
                            .copyWith(color: appTheme.gray700))
                  ]))
        ]);
  }

  /// Navigates to the logiInScreen when the action is triggered.
  onTapSignUp(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.logiInScreen);
  }
}
