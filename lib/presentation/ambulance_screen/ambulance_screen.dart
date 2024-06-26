import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AmbulanceScreen extends StatelessWidget {
  AmbulanceScreen({Key? key}) : super(key: key);

  Completer<GoogleMapController> googleMapController = Completer();
}

@override
Widget build(BuildContext context) {
  return SafeArea(
    child: Scaffold(
      appBar: _buildAppbar(context), // Assuming this function exists to build the app bar.
      body: Container(
        height: 710.v, // Using a custom 'v' extension for responsive height (likely from a utility class).
        width: double.maxFinite,
        margin: EdgeInsets.only(top: 13.v, bottom: 1.v), 
        child: GoogleMap(
          mapType: MapType.normal,
          initialCameraPosition: CameraPosition(
            target: LatLng(37.43296265331129, -122.08832357078792),
            zoom: 14.4746,
          ),
          onMapCreated: (GoogleMapController controller) {
            googleMapController.complete(controller); 
          },
          zoomControlsEnabled: false,
          zoomGesturesEnabled: false,
          myLocationButtonEnabled: false,
          myLocationEnabled: false,
        ),
      ),
    ),
  );
}

/// Section Widget
PreferredSizeWidget _buildAppbar(BuildContext context) {
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
      text: "Ambulance",
    ),
  );
}

/// Navigates back to the previous screen.
onTapArrowleftone(BuildContext context) {
  Navigator.pop(context);
}
