import 'package:flutter/material.dart';
import 'package:flutter_task_manager/core/app_export.dart';
import 'package:flutter_task_manager/widgets/custom_elevated_button.dart';
import 'package:flutter_task_manager/widgets/custom_icon_button.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          children: [
            _buildFortyNineStack(context),
            SizedBox(height: 59.v),
            CustomImageView(
              imagePath: ImageConstant.imgGroupGray600,
              height: 103.v,
              width: 106.h,
              alignment: Alignment.centerRight,
              margin: EdgeInsets.only(
                right: 131.h,
              ),
            ),
            SizedBox(height: 27.v),
            RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: "TASK",
                      style: CustomTextStyles.headlineLargeff3785e6),
                  TextSpan(
                      text: " MANAGER",
                      style: CustomTextStyles.headlineLargeffffffff)
                ]),
                textAlign: TextAlign.left),
            SizedBox(height: 6.v),
            Text("version: 1.0",
                style: CustomTextStyles.titleLargeIstokWebGray600),
            SizedBox(height: 52.v),
            Divider(indent: 28.h, endIndent: 28.h),
            SizedBox(height: 26.v),
            CustomElevatedButton(
                height: 25.v,
                width: 173.h,
                text: "SYNC WITH TRELLO",
                buttonStyle: CustomButtonStyles.fillGrayTL10,
                buttonTextStyle: theme.textTheme.titleMedium!),
            SizedBox(height: 14.v),
            Container(
                width: 173.h,
                padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 2.v),
                decoration: AppDecoration.fillGray
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
                child:
                    Text("CLEAR ALL DATA", style: theme.textTheme.titleMedium)),
            SizedBox(height: 14.v),
            Divider(indent: 28.h, endIndent: 28.h),
            SizedBox(height: 18.v),
            Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: EdgeInsets.only(left: 42.h),
                    child: Text("Terms and Conditions",
                        style: CustomTextStyles.titleLargeRobotoGray600))),
            SizedBox(height: 21.v),
            Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: EdgeInsets.only(left: 42.h),
                    child: Text("Privacy Policy",
                        style: CustomTextStyles.titleLargeRobotoGray600))),
            SizedBox(height: 43.v),
            Divider(indent: 28.h, endIndent: 28.h),
            Spacer(),
            SizedBox(height: 25.v),
            Text("©️ 2024 task manager",
                style: CustomTextStyles.titleSmallRobotoOnPrimaryContainer)
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFortyNineStack(BuildContext context) {
    return SizedBox(
      height: 109.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 72.h, vertical: 23.v),
              decoration: AppDecoration.gradientOnPrimaryToBluegray900,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 23.v),
                  Text("TASK MANAGER", style: theme.textTheme.headlineLarge)
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              margin: EdgeInsets.only(left: 33.h),
              padding: EdgeInsets.symmetric(horizontal: 77.h, vertical: 36.v),
              decoration: AppDecoration.gradientOnPrimaryToBluegray900,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10.v),
                  Text("SETTINGS MANAGER", style: theme.textTheme.titleLarge)
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 14.h, bottom: 34.v),
            child: CustomIconButton(
              height: 30.v,
              width: 38.h,
              alignment: Alignment.bottomLeft,
              onTap: () {
                onTapBtnIconButton(context);
              },
              child: CustomImageView(imagePath: ImageConstant.imgGroup3),
            ),
          )
        ],
      ),
    );
  }

  /// Navigates to the dashboardScreen when the action is triggered.
  onTapBtnIconButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.dashboardScreen);
  }
}
