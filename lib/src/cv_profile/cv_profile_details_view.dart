import 'package:cv_generator/src/cv_profile/cv_profile.dart';
import 'package:flutter/material.dart';


class CvProfileDetailsView extends StatefulWidget {

  const CvProfileDetailsView({super.key, required this.cvProfile});
  final CvProfile cvProfile;
  static const routeName = '/profile_view';

  @override
  _CvProfileDetailsView createState() => _CvProfileDetailsView(cvProfile: cvProfile);
}


/// Displays detailed information about a SampleItem.
class _CvProfileDetailsView extends State<CvProfileDetailsView> {
  final CvProfile cvProfile;

  _CvProfileDetailsView({required this.cvProfile});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Details'),
      ),
      body:  Center(
        child: Column(children: [
          Image.asset('assets/images/{$cvProfile.imageNamePlusExtension'),
          Text('{$cvProfile.fullName}'),
          // Text('{$cvProfile.email}'),
          // Text('{$cvProfile.phoneNumber}'),
          // Text('{$cvProfile.address}'),
          // Text('{$cvProfile.city}'),

        ]),
      ),
    );
  }
}
