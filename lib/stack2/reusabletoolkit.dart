import 'package:flutter/material.dart';

class ReUsableToolKit extends StatelessWidget {
  const ReUsableToolKit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ReusableTooltip(
        tooltipHeader: '',
        tooltipText: 'deviceContactClause',
        tooltipDirection: AxisDirection.down,
        tooltipChild: Container(
        alignment: Alignment.center,
        width: 45,
        height: 40,
        color: Colors.transparent,
        child: SvgPicture.asset(
        'assets/logo/Information.svg',
    ),
    ),
    additionalWidget: GestureDetector(
    onTap: () {
    Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context) =>
    const PrivacyPolicyPage()
    ),
    );
    },
    child: Container(
    child: Text('seePrivacyPolicy',
    ),
    ),
    ),;
  }
}
