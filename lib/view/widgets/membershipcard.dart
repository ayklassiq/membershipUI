import 'package:flutter/material.dart';
import 'package:task2/view/screens/confirmtransaction.dart';

class MemberShipCard extends StatelessWidget {
final String text;
final double amount;
MemberShipCard({ required this.text, required this.amount});
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 64,
      // width: 344,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color:  Color(0XFFF0F4FD)
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 9,bottom: 9,right: 27,),
        child: IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  Text(text,style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff001140
                      ))),
                  const SizedBox(height:2),
                  Text('$amount',style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff4c5b90
                      ))),
                ],
              ),
              Center(
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext ctx)=>ConfirmTxnScreen()));
                  },
                  icon: const Icon(Icons.arrow_forward_ios_outlined),
                  color: const Color(0xff4F5877),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
