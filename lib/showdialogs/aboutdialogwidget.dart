import 'package:flutter/material.dart';

class AboutDialogWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          showAboutDialogbox(context);
        },
        child: Text('About Dialog'));
  }

  void showAboutDialogbox(BuildContext context) {

    showAboutDialog(
        context: context,
      applicationIcon: FlutterLogo(),
      applicationName: 'Show Dialogs',
      applicationVersion: '10.0.90',
      applicationLegalese: 'Irfan @LOGiC',
      children: [Text('This is my Flutter Application')],



    );
  }
}
