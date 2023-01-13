import 'package:flutter/material.dart';

import '../widgets/membershipcard.dart';

class SelectMembershipScreen extends StatelessWidget {
  static const routeName = '/Select-membership';

  const SelectMembershipScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF001140),

        leading:InkWell(onTap:(){Navigator.pop(context);},child: Icon(Icons.arrow_circle_left)),
        title: const Text("Select Membership Type"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 20.0, left: 20.0, top: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             const Text(
              'How would you like to pay membership fee?',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Color(0xff001140),
              ),
            ),
           const SizedBox(height: 21,),
            MemberShipCard(
              text: 'Monthly Membership',
              amount: 10,
            ),
            const SizedBox(height: 16,),

            MemberShipCard(
              text: 'Yearly Membership',
              amount: 100,
            )
          ],
        ),
      ),
    );
  }
}
