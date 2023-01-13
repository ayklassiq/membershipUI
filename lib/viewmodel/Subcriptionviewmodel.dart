import 'package:flutter/material.dart';
import 'package:task2/view/widgets/buybutton.dart';
class SubscriptionViewModel {
  void showSuccessModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        final screenSize = MediaQuery.of(context).size;
        return Container(
          height: screenSize.height / 1.8,
          child: Column(
mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // SizedBox(height:screenSize.height/15,),

              Align(

                alignment: Alignment.topRight,
                child: IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              SizedBox(height:screenSize.height/28,),
                Image.asset("assets/images/success.png",height: 160, ) ,
              SizedBox(height:screenSize.height/28,),
              const Text(
                'Your subscription was successful',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              SizedBox(height:screenSize.height/20,),
              SizedBox(height: 55,
                  width: 335,
                  child: BuyButton(text: 'Done', onPressed:(){})),


            ],
          ),
        );
      },
    );
  }
}