import 'package:flutter/material.dart';
import 'package:flutter_task_manager/core/app_export.dart';

// ignore: must_be_immutable
class EmailcomponentlistItemWidget extends StatelessWidget {
  const EmailcomponentlistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 7.v),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 12.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Send an email to the manager",
                  style: theme.textTheme.bodyMedium,
                ),
                Text(
                  "march 11, 2024. High",
                  style: theme.textTheme.labelLarge,
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgRemove,
            height: 29.v,
            width: 55.h,
            margin: EdgeInsets.symmetric(vertical: 6.v),
          ),
        ],
      ),
    );
  }
}
