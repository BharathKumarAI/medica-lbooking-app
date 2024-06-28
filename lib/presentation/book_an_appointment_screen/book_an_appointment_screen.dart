import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';

class BookAnAppointmentScreen extends StatelessWidget {
  const BookAnAppointmentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 24.v),
          child: Column(
            children: [
              _buildDoctorDetails(context),
              SizedBox(height: 19.v),
              _buildDate(context),
              SizedBox(height: 29.v),
              _buildReason(context),
              SizedBox(height: 13.v),
              Divider(),
              SizedBox(height: 18.v),
              _buildColumnPaymentDetails(context),
              SizedBox(height: 18.v),
              _buildPaymentMethod(context),
              SizedBox(height: 5.v)
            ],
          ),
        ),
        bottomNavigationBar: _buildPrice(context),
      ),
    );
  }
  // Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 45.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeft,
        margin: EdgeInsets.only(
          left: 21.h,
          top: 10.v,
          bottom: 10.v,
        ),
        onTap: () {
          onTapArrowleftone(context); 
        },
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "Appointment",
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgNotification,
          margin: EdgeInsets.fromLTRB(14.h, 14.v, 14.h, 10.v),
        )
      ],
    );
  }

  Widget _buildDoctorDetails(BuildContext context) {
  return Column(
    children: [
      Container(
        padding: EdgeInsets.symmetric(horizontal: 7.h, vertical: 6.v),
        decoration: AppDecoration.outlineGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Row(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgProfilePic,
              height: 111.adaptSize,
              width: 111.adaptSize,
                radius: BorderRadius.circular(12.h),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 18.h,
                  top: 7.v,
                  bottom: 4.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Dr. Marcus Horizon",
                      style: CustomTextStyles.titleMedium18,
                    ),
                    SizedBox(height: 7.v),
                    Text(
                      "Chardiologist",
                      style: theme.textTheme.labelLarge,
                    ),
                    SizedBox(height: 13.v),
                    Padding(
                      padding: EdgeInsets.only(left: 3.h),
                      child: Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgSignal,
                            height: 13.adaptSize,
                            width: 13.adaptSize,
                            margin: EdgeInsets.only(bottom: 1.v),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 4.h),
                            child: Text(
                              "4.7",
                              style: CustomTextStyles.labelLargeCyan300,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.v),
                    Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgLinkedin,
                          height: 13.adaptSize,
                          width: 13.adaptSize,
                          margin: EdgeInsets.only(bottom: 2.v),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 3.h),
                          child: Text(
                            "800m away",
                            style: theme.textTheme.labelLarge,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

}