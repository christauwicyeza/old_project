import 'package:flutter/material.dart';
import 'package:taskmanagerfigma_to_flutter/core/app_export.dart';
import 'package:taskmanagerfigma_to_flutter/widgets/custom_icon_button.dart';
import 'package:taskmanagerfigma_to_flutter/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class DashboardScreen extends StatelessWidget {
  DashboardScreen({Key? key}) : super(key: key);

  TextEditingController pendingTasksController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          children: [
            _buildHorizontalScroll(context),
            SizedBox(height: 22.v),
            _buildRow(context),
            SizedBox(height: 26.v),
            _buildRow1(context),
            SizedBox(height: 26.v),
            _buildRow2(context),
            SizedBox(height: 26.v),
            _buildRow3(context),
            SizedBox(height: 26.v),
            _buildRow4(context),
            SizedBox(height: 26.v),
            _buildRow5(context),
            SizedBox(height: 26.v),
            _buildRow6(context),
            SizedBox(height: 17.v),
            Padding(
              padding: EdgeInsets.only(right: 41.h),
              child: CustomIconButton(
                height: 60.adaptSize,
                width: 60.adaptSize,
                alignment: Alignment.centerRight,
                child: CustomImageView(imagePath: ImageConstant.imgAdd),
              ),
            ),
            SizedBox(height: 5.v)
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHorizontalScroll(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: IntrinsicWidth(
        child: SizedBox(
          height: 129.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: SizedBox(
                  height: 109.v,
                  width: 403.h,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 109.v,
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(0.5, 0),
                              end: Alignment(0.5, 1),
                              colors: [
                                theme.colorScheme.onPrimary,
                                appTheme.blueGray900
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          height: 109.v,
                          width: 403.h,
                          child: Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  height: 109.v,
                                  width: double.maxFinite,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment(0.5, 0),
                                      end: Alignment(0.5, 1),
                                      colors: [
                                        theme.colorScheme.onPrimary,
                                        appTheme.blueGray900
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgSettings,
                                height: 31.v,
                                width: 68.h,
                                alignment: Alignment.bottomRight,
                                margin:
                                    EdgeInsets.only(right: 3.h, bottom: 33.v),
                                onTap: () {
                                  onTapImgSettings(context);
                                },
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgBulletedList,
                                height: 24.v,
                                width: 73.h,
                                alignment: Alignment.bottomLeft,
                                margin: EdgeInsets.only(bottom: 37.v),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    right: 47.h,
                                    bottom: 34.v,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 2.v),
                                        child: Text(
                                          "TASK MANAGER",
                                          style: theme.textTheme.titleLarge,
                                        ),
                                      ),
                                      CustomImageView(
                                        imagePath:
                                            ImageConstant.imgDeliveryTime,
                                        height: 30.v,
                                        width: 73.h,
                                        margin: EdgeInsets.only(left: 44.h),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              CustomTextFormField(
                width: 330.h,
                controller: pendingTasksController,
                hintText: "You have [ 8 ] pending tasks out of [ 8 ]",
                hintStyle: CustomTextStyles.bodyMediumGray700,
                textInputAction: TextInputAction.done,
                alignment: Alignment.bottomCenter,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 29.h,
                  vertical: 4.v,
                ),
                borderDecoration: TextFormFieldStyleHelper.fillPrimary,
                fillColor: theme.colorScheme.primary,
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRow(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30.h),
      padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 7.v),
      decoration: AppDecoration.outlineGray
          .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Send an email to the team",
                  style: theme.textTheme.bodyMedium),
              SizedBox(height: 1.v),
              Text("march 11, 2024. High", style: theme.textTheme.labelLarge)
            ],
          ),
          CustomImageView(
              imagePath: ImageConstant.imgSquare90,
              height: 25.adaptSize,
              width: 25.adaptSize,
              margin: EdgeInsets.only(top: 7.v, right: 17.h, bottom: 9.v))
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRow1(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30.h),
      padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 6.v),
      decoration: AppDecoration.outlineGray
          .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.only(top: 2.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Prepare for tomorrow's meeting",
                        style: theme.textTheme.bodyMedium),
                    Text("march 19, 2024. Low",
                        style: theme.textTheme.titleSmall)
                  ])),
          CustomImageView(
              imagePath: ImageConstant.imgSquare90,
              height: 25.adaptSize,
              width: 25.adaptSize,
              margin: EdgeInsets.only(top: 8.v, right: 17.h, bottom: 10.v))
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRow2(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30.h),
      padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 6.v),
      decoration: AppDecoration.outlineGray
          .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.only(top: 2.v),
              child: Column(children: [
                Text("Break down project tasks.",
                    style: theme.textTheme.bodyMedium),
                Text("march 13, 2024. Medium",
                    style: theme.textTheme.titleSmall)
              ])),
          CustomImageView(
              imagePath: ImageConstant.imgSquare90,
              height: 25.adaptSize,
              width: 25.adaptSize,
              margin: EdgeInsets.only(top: 8.v, right: 17.h, bottom: 10.v))
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRow3(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30.h),
      padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 6.v),
      decoration: AppDecoration.outlineGray
          .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.only(top: 2.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Set learning goals for the week.",
                        style: theme.textTheme.bodyMedium),
                    Text("march 11, 2024. High",
                        style: theme.textTheme.titleSmall)
                  ])),
          CustomImageView(
              imagePath: ImageConstant.imgSquare90,
              height: 25.adaptSize,
              width: 25.adaptSize,
              margin: EdgeInsets.only(top: 8.v, right: 17.h, bottom: 10.v))
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRow4(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 30.h),
        padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 6.v),
        decoration: AppDecoration.outlineGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 2.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Coordinate a social gathering.",
                            style: theme.textTheme.bodyMedium),
                        Text("march 13, 2024. High",
                            style: theme.textTheme.titleSmall)
                      ])),
              CustomImageView(
                  imagePath: ImageConstant.imgSquare90,
                  height: 25.adaptSize,
                  width: 25.adaptSize,
                  margin: EdgeInsets.only(top: 8.v, right: 17.h, bottom: 10.v))
            ]));
  }

  /// Section Widget
  Widget _buildRow5(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 30.h),
        padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 6.v),
        decoration: AppDecoration.outlineGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 1.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Schedule home maintenance.",
                            style: theme.textTheme.bodyMedium),
                        SizedBox(height: 1.v),
                        Text("march 21, 2024. Low",
                            style: theme.textTheme.titleSmall)
                      ])),
              CustomImageView(
                  imagePath: ImageConstant.imgSquare90,
                  height: 25.adaptSize,
                  width: 25.adaptSize,
                  margin: EdgeInsets.only(top: 8.v, right: 17.h, bottom: 10.v))
            ]));
  }

  /// Section Widget
  Widget _buildRow6(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 30.h),
        padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 6.v),
        decoration: AppDecoration.outlineGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 2.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Check progress on assignments.",
                            style: theme.textTheme.bodyMedium),
                        Text("march 14, 2024. High",
                            style: theme.textTheme.titleSmall)
                      ])),
              CustomImageView(
                  imagePath: ImageConstant.imgSquare90,
                  height: 25.adaptSize,
                  width: 25.adaptSize,
                  margin: EdgeInsets.only(top: 8.v, right: 17.h, bottom: 10.v))
            ]));
  }

  /// Navigates to the settingsScreen when the action is triggered.
  onTapImgSettings(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.settingsScreen);
  }
}
