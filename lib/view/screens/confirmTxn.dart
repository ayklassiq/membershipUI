import 'package:flutter/material.dart';
import 'package:task2/view/widgets/confirmTxn.dart';

import '../../viewmodel/Subcriptionviewmodel.dart';
import '../widgets/buybutton.dart';

class ConfirmTrans extends StatefulWidget {
  const ConfirmTrans({super.key});
  static const routeName = '/confirm-txn2';

  @override
  State<ConfirmTrans> createState() => _ConfirmTransState();
}

class _ConfirmTransState extends State<ConfirmTrans> {
  @override
  Widget build(BuildContext context) {
    final SubscriptionViewModel _subscriptionViewModel = SubscriptionViewModel();

    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF001140),
        leading:InkWell(onTap:(){Navigator.pop(context);},child: Icon(Icons.arrow_circle_left)),
        title: const Text('Confirm Transaction'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: screenSize.height / 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    color: const Color(0xffF6F6EB),
                    width: screenSize.width / 1.5,
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "Available Cash:",
                          style: TextStyle(fontSize: 14),
                        ),
                        Text(
                          "96,800",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                      ],
                    )),
              ],
            ),
            SizedBox(
              height: screenSize.height / 25,
            ),
            const ConfirmTxn(),
            SizedBox(
              height: screenSize.height / 25,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
                right: 20,
              ),
              child: SizedBox(
                height:50 ,
                width:344 ,
                child: BuyButton(text: 'Continue', onPressed: (){
                  _subscriptionViewModel.showSuccessModal(context);

                },),
              )
            ),
            SizedBox(
              height: screenSize.height / 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: Container(
                height: 125,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color(0xffFCE9E9),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 25.0, top: 16, right: 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/error.png',
                            // height: 30,
                            // width: 30,
                          ),
                          const SizedBox(
                            width: 11,
                          ),
                           Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Looks like your balance isn’t enough to complete this transaction',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    // fontFamily: ,
                                    color: Color(0xffDB4343),
                                  ),
                                ),
                                 SizedBox(height: 21,),
                                 Text(
                                  'Fund your account with at least 150',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xffDB4343),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class button extends StatelessWidget {
//   const button({
//     Key? key,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(onPressed: () {
//     }, child: Text('continue'),
//
//     );
//   }
// }
