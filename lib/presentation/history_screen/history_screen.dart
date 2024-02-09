import '../history_screen/widgets/emailcomponentlist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:taskmanagerfigma_to_flutter/core/app_export.dart';
import 'package:taskmanagerfigma_to_flutter/widgets/custom_elevated_button.dart';
import 'package:taskmanagerfigma_to_flutter/widgets/custom_icon_button.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildTitleStack(context),
                  SizedBox(height: 22.v),
                  _buildEmailComponentList(context),
                  SizedBox(height: 438.v),
                  CustomElevatedButton(
                      height: 49.v,
                      width: 260.h,
                      text: "Task reassigned",
                      buttonStyle: CustomButtonStyles.fillGray),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  Widget _buildTitleStack(BuildContext context) {
    return SizedBox(
        height: 129.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  height: 109.v,
                  width: double.maxFinite,
                  decoration: AppDecoration.gradientOnPrimaryToBluegray900,
                  child: Stack(alignment: Alignment.bottomCenter, children: [
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                            height: 109.v,
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 3.h, vertical: 33.v),
                            decoration:
                                AppDecoration.gradientOnPrimaryToBluegray900,
                            child: Stack(
                                alignment: Alignment.bottomLeft,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgSettings,
                                      height: 31.v,
                                      width: 68.h,
                                      alignment: Alignment.bottomRight,
                                      onTap: () {
                                        onTapImgSettings(context);
                                      }),
                                  Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Padding(
                                          padding: EdgeInsets.only(
                                              left: 11.h, bottom: 1.v),
                                          child: Row(children: [
                                            CustomIconButton(
                                                height: 30.v,
                                                width: 38.h,
                                                onTap: () {
                                                  onTapBtnIconButton(context);
                                                },
                                                child: CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgGroup3)),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: 25.h,
                                                    top: 2.v,
                                                    bottom: 2.v),
                                                child: Text("HISTORY MANAGER",
                                                    style: theme
                                                        .textTheme.titleLarge)),
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgDeliveryTime,
                                                height: 30.v,
                                                width: 73.h,
                                                margin:
                                                    EdgeInsets.only(left: 15.h))
                                          ])))
                                ]))),
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                            padding: EdgeInsets.only(bottom: 23.v),
                            child: Text("TASK MANAGER",
                                style: theme.textTheme.headlineLarge)))
                  ]))),
          CustomElevatedButton(
              height: 29.v,
              width: 330.h,
              text: "You have completed [ 8 ] tasks",
              buttonStyle: CustomButtonStyles.fillPrimary,
              buttonTextStyle: CustomTextStyles.bodyMediumGray700,
              alignment: Alignment.bottomCenter)
        ]));
  }

  /// Section Widget
  Widget _buildEmailComponentList(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.h),
        child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 26.v);
            },
            itemCount: 2,
            itemBuilder: (context, index) {
              return EmailcomponentlistItemWidget();
            }));
  }

  /// Navigates to the settingsScreen when the action is triggered.
  onTapImgSettings(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.settingsScreen);
  }

  /// Navigates to the dashboardScreen when the action is triggered.
  onTapBtnIconButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.dashboardScreen);
  }
}
