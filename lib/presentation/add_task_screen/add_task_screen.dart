import 'package:flutter/material.dart';
import 'package:flutter_task_manager/core/app_export.dart';
import 'package:flutter_task_manager/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:flutter_task_manager/widgets/app_bar/appbar_subtitle.dart';
import 'package:flutter_task_manager/widgets/app_bar/appbar_trailing_image.dart';
import 'package:flutter_task_manager/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter_task_manager/widgets/custom_drop_down.dart';
import 'package:flutter_task_manager/widgets/custom_elevated_button.dart';
import 'package:flutter_task_manager/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class AddTaskScreen extends StatelessWidget {
  AddTaskScreen({Key? key}) : super(key: key);

  TextEditingController titlevalueController = TextEditingController();

  TextEditingController monthController = TextEditingController();

  List<String> dropdownItemList = ["Item one", "Item Two", "Item Three"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 32.h, vertical: 22.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          height: 33.v,
                          width: 50.h,
                          margin: EdgeInsets.only(left: 8.h),
                          child:
                              Stack(alignment: Alignment.topCenter, children: [
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    height: 32.v,
                                    width: 50.h,
                                    decoration: BoxDecoration(
                                        color: appTheme.blueGray900))),
                            Align(
                                alignment: Alignment.topCenter,
                                child: Text("Title",
                                    style: CustomTextStyles
                                        .headlineSmallOnPrimaryContainer))
                          ])),
                      SizedBox(height: 5.v),
                      Padding(
                          padding: EdgeInsets.only(right: 15.h),
                          child: CustomTextFormField(
                              controller: titlevalueController,
                              hintText: "Start GYM workout plan",
                              hintStyle:
                                  CustomTextStyles.titleLargeRobotoGray700)),
                      SizedBox(height: 26.v),
                      Padding(
                          padding: EdgeInsets.only(left: 8.h),
                          child: Text("Date",
                              style: CustomTextStyles
                                  .headlineSmallInterOnPrimaryContainer)),
                      SizedBox(height: 36.v),
                      Padding(
                          padding: EdgeInsets.only(left: 40.h),
                          child: CustomTextFormField(
                              width: 140.h,
                              controller: monthController,
                              hintText: "March 23, 2024",
                              hintStyle:
                                  CustomTextStyles.titleLargeRobotoGray700,
                              textInputAction: TextInputAction.done)),
                      SizedBox(height: 59.v),
                      Padding(
                          padding: EdgeInsets.only(left: 8.h),
                          child: Text("Priority",
                              style: CustomTextStyles
                                  .headlineSmallInterOnPrimaryContainer)),
                      SizedBox(height: 2.v),
                      Padding(
                          padding: EdgeInsets.only(right: 15.h),
                          child: CustomDropDown(
                              icon: Container(
                                  margin: EdgeInsets.fromLTRB(
                                      30.h, 23.v, 19.h, 22.v),
                                  child: CustomImageView(
                                      imagePath: ImageConstant.imgDownButton,
                                      height: 32.v,
                                      width: 29.h)),
                              hintText: "High",
                              items: dropdownItemList,
                              onChanged: (value) {})),
                      Spacer(),
                      SizedBox(height: 83.v),
                      CustomElevatedButton(
                          width: 176.h,
                          text: "ADD",
                          alignment: Alignment.center)
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 52.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgGroup3,
            margin: EdgeInsets.only(left: 14.h, top: 45.v, bottom: 34.v),
            onTap: () {
              onTapBackArrow(context);
            }),
        title: AppbarSubtitle(
            text: "ADD TASK", margin: EdgeInsets.only(left: 24.h)),
        actions: [
          Container(
              height: 31.v,
              width: 117.h,
              margin: EdgeInsets.fromLTRB(3.h, 45.v, 3.h, 33.v),
              child: Stack(alignment: Alignment.center, children: [
                AppbarTrailingImage(
                    imagePath: ImageConstant.imgSettings,
                    margin: EdgeInsets.only(left: 49.h),
                    onTap: () {
                      onTapSettings(context);
                    }),
                AppbarTrailingImage(
                    imagePath: ImageConstant.imgDeliveryTime,
                    margin: EdgeInsets.only(right: 44.h, bottom: 1.v))
              ]))
        ],
        styleType: Style.bgGradientnameonPrimarynamebluegray900);
  }

  /// Navigates to the dashboardScreen when the action is triggered.
  onTapBackArrow(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.dashboardScreen);
  }

  /// Navigates to the settingsScreen when the action is triggered.
  onTapSettings(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.settingsScreen);
  }
}
