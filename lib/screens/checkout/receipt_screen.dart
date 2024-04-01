import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:green/data/payment_data.dart';
import 'package:green/presets/colors.dart';
import 'package:green/presets/fonts.dart';
import 'package:green/screens/home_screen.dart';
import 'package:green/widgets/button.dart';
import 'package:green/widgets/checkout_widgets/appbar_checkout.dart';

class ReceiptScreen extends StatelessWidget {
  const ReceiptScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final customerReceipt = paymentList;


    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBarCheckout(title: 'Checkout'),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              SizedBox(height: 20,),
              Image.asset('lib/assets/images/receipt1.png'),
              SizedBox(height: 70,),
              Image.asset(
                'lib/assets/icons/confirmation_icon.png',
                width: 130,
              ),
              SizedBox(height: 60,),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                  boxShadow: [
                    BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 6,
                  offset: Offset(0, 2),
                    )
                  ]
                ),
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Payment Detail',
                        style: AppFonts.normalRegularText,
                        ),
                      DetailsRow('Receipt No.', paymentList[0].receiptNo),
                      DetailsRow('Total', ('MYR ' + paymentList[0].total.toString())),
                      DetailsRow('Date & Time', paymentList[0].dateTime.toString()),
                      DetailsRow('Payment Method', paymentList[0].paymentMethod),
                      DetailsRow('Name', paymentList[0].name),
                      DetailsRow('Email', paymentList[0].email),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  '*NOTE: A receipt will be sent directly to your email.',
                  style: AppFonts.extraSmallLightText,
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 25.0),
                child: DefaultButton(
                  text: 'Return to Home', 
                  press: () {
                          Navigator.push(
                          context, 
                          MaterialPageRoute(builder: (context) => HomeScreen()));
                        }, 
                  backgroundColor: AppColor.btnColorPrimary, 
                  height: 50, 
                  fontStyle: AppFonts.normalRegularTextWhite, 
                  width: double.infinity, 
                  padding: EdgeInsets.zero),
              )
            ],
          ),
        ),
      ),
    );
  }

  Padding DetailsRow(String category, String details) {
      return Padding(
        padding: const EdgeInsets.all(3.0),
        child: Row(
                      children: [
                        Text(
                          category,
                          style: AppFonts.smallRegularText,
                        ),
                        Spacer(),
                        Text(
                          details,
                          style: AppFonts.smallLightText,
                        ),
                      ],
                    ),
      );
  }
}