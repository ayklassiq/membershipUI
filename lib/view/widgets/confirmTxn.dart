import 'package:flutter/material.dart';

import '../../viewmodel/Subcriptionviewmodel.dart';

class ConfirmTxn extends StatelessWidget {
  const ConfirmTxn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(
        left: 20.0,
        right: 20,
      ),
      child: Container(
        width: double.infinity,
        height: 184,
        decoration: BoxDecoration(
          color: const Color(0xffF0F4FD),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 23, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IntrinsicHeight(
                child: Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white,
                      ),
                      child: Center(
                          child: Image.asset(
                        'assets/images/herconomy.png',
                        height: 30,
                        width: 30,
                      )),
                    ),
                    const SizedBox(width: 7.9),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Herconomy Syndicate',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff001140))),
                        SizedBox(height: 2),
                        Text('Membership payment',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff4c5b90))),
                      ],
                    )
                  ],
                ),
              ),
              const Divider(),
              // const SizedBox(height: 18,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0, bottom: 33),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('You are paying ',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff4c5b90))),
                        SizedBox(height: 2),
                        Text('200',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff001140))),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0, bottom: 15),
                    child: Column(children: const [
                      Text('Transaction Fee',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff4c5b90))),
                      Text('1',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff001140))),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        '(0.5%)',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          color: Color(0xff001140),
                        ),
                      ),
                    ]),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
