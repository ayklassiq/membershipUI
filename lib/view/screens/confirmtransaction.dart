import 'package:flutter/material.dart';
import 'package:task2/view/widgets/buybutton.dart';

import '../widgets/confirmTxn.dart';
import 'confirmTxn.dart';

class ConfirmTxnScreen extends StatelessWidget {
  const ConfirmTxnScreen({Key? key}) : super(key: key);
  static const routeName = '/confirm-txn1';


  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF001140),
          leading:  InkWell(onTap:(){Navigator.pop(context);},child: Icon(Icons.arrow_circle_left)),
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
                      color: Color(0xffF6F6EB),
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
              ConfirmTxn(),
              SizedBox(
                height: screenSize.height / 25,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20.0,
                  right: 20,
                ),
                child: SizedBox(
                    height: 50,
                    width: 344,
                    child: BuyButton(
                      text: 'Continue',
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext ctx)=>ConfirmTrans()));
                      },
                    )),
              ),
            ],
          ),
        ));
  }
}
