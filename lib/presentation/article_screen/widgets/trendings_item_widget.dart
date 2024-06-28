import 'package:flutter/material.dart';
import '../../../core/app_export.dart'; // Update with your actual import path

class TrendingsItemWidget extends StatelessWidget {
  const TrendingsItemWidget({Key? key}) 
      : super(
        key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 7.v),
      decoration: AppDecoration.outlineTeal50.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      width: 153.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 87.v,
            width: 138.h,
            margin: EdgeInsets.only(left: 1.h),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle54,
                  height: 87.v,
                  width: 138.h,
                  radius: BorderRadius.circular(8.h),
                  alignment: Alignment.center,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgBookmark,
                  height: 15.adaptSize,
                  width: 15.adaptSize,
                  alignment: Alignment.topRight,
                  margin: EdgeInsets.only(right: 1.h, top: 5.v),
                ),
              ],
            ),
          ),
          SizedBox(height: 13.v),
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Text(
              "Covid-19",
              style: CustomTextStyles.labelMediumCyan300,
            ),
          ),
          SizedBox(height: 5.v),
          Container(
            margin: EdgeInsets.only(left: 1.h),
            width: 106.h,
            child: Text(
              "Comparing the \nAstraZeneca and \nSinovac COVID-19 \nVaccines",
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.labelLargeOnPrimarySemiBold.copyWith(
                height: 1.50,
              ),
            ),
          ),
          SizedBox(height: 4.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Jun 12, 2021",
                  style: Theme.of(context).textTheme.labelSmall,
                ),
                Container(
                  height: 2.adaptSize,
                  width: 2.adaptSize,
                  margin: EdgeInsets.only(left: 10.h, top: 3.v, bottom: 4.v),
                  decoration: BoxDecoration(
                    color: AppTheme.gray500,
                    borderRadius: BorderRadius.circular(1.h),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Text(
                    "6 min read",
                    style: CustomTextStyles.labelSmallCyan300,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}