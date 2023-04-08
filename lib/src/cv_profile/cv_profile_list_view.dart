import 'package:flutter/material.dart';

import '../settings/settings_view.dart';
import 'cv_profile.dart';
import 'cv_profile_details_view.dart';

/// Displays a list of SampleItems.
class CvProfileListView extends StatelessWidget {
  const CvProfileListView({
    super.key,
    this.items = const [
      CvProfile(1, 'Dominik Ocsofszki', ' ', ' ', ' ', ' ', ' ', ' ', 'flutter_logo.png'),
      CvProfile(2, 'Anh Pham', ' ', ' ', ' ', ' ', ' ', ' ', ' '),
    ]
  });

  static const routeName = '/';

  final List<CvProfile> items;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile List'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Navigator.restorablePushNamed(context, SettingsView.routeName);
            },
          ),
        ],
      ),

      body: ListView.builder(
        restorationId: 'sampleItemListView',
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          final item = items[index];

          return ListTile(
            title: Text('${item.fullName}'),
            leading:  CircleAvatar(
              // Display the Flutter Logo image asset.
              foregroundImage: AssetImage('assets/images/{$item.imageNamePlusExtension}'),
            ),
            onTap: () {
              Navigator.restorablePushNamed(
                context,
                CvProfileDetailsView.routeName,
              );
            }
          );
        },
      ),
    );
  }
}
