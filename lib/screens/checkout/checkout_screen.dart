import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:green/data/bookings_data.dart';
import 'package:green/presets/colors.dart';
import 'package:green/data/activities_data.dart';
import 'package:green/presets/fonts.dart';
import 'package:green/widgets/checkout_widgets/appbar_checkout.dart';
import 'package:green/widgets/checkout_widgets/dotted_line.dart';
import 'package:green/widgets/checkout_widgets/edit_button.dart';
import 'package:green/widgets/checkout_widgets/toggle_switch_checkout.dart';
import 'package:green/widgets/divider_line.dart';
import 'package:intl/intl.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
   bool greenPointsOn = true;
  @override
  Widget build(BuildContext context) {

    final checkoutActivites = activtiesList
        .toList();
      
    final checkoutAcommodation = bookingList
      // .where((Accommodation) => Accommodation.accommodationID == )
      .toList();

    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBarCheckout(title: 'Checkout'),
      body: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 20,),
              Center(
                child: Image.asset(
                  'lib/assets/images/checkout1.png',
                  width: 380,
                ),
              ),

              // Accommodation Details Container
              Expanded(
                //height: 620,
                child: SingleChildScrollView(
                  child: Column(
                  children : [
                    Padding(
                    padding: const EdgeInsets.only(top: 19.0, left: 19, right: 19, bottom: 10),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff252525).withOpacity(0.05),
                      ),
                      constraints: BoxConstraints.tightFor(),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'lib/assets/images/aa_homestay.png',
                                  width: 100,),
                                Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Column(
                                    children: [
                                      Text(
                                        'AA Homestay',
                                        style: AppFonts.smallRegularText,
                                      ),
                                      Visibility(
                                        visible: greenPointsOn,
                                        child: Row(
                                          children: [
                                            Image.asset(
                                              'lib/assets/images/leaf.png',
                                              width: 30,),
                                          Text(
                                            '+40 Green Points',
                                            style: AppFonts.extraSmallLightText,
                                          )
                                          ],
                                        ),
                                      ),
                                    Text(
                                      'MYR 452.00',
                                      style: AppFonts.extraSmallLightText,
                                    )
                                    ],
                                  ),
                                ),
                                Spacer(),
                                EditButtonCheckout(),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top : 10.0, bottom: 10),
                              child: SizedBox(
                                height: 1,
                                child: DottedLine(height: 1.0)),
                            ),
                            Row(
                              children : [
                                Text(
                                  'Details:',
                                  style: AppFonts.normalRegularText,
                              ),
                              Spacer(),
                              ]
                            ),
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Dates',
                                      style: AppFonts.smallRegularText,
                                    ),
                                    Text(
                                      (DateFormat('yMd').format(checkoutAcommodation[0].startDate).toString()
                                      + ' - ' + DateFormat('yMd').format(checkoutAcommodation[0].endDate).toString()),
                                      style: AppFonts.extraSmallLightText,
                                    )
                                  ],
                                ),
                                Spacer(),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Check-in Date',
                                      style: AppFonts.smallRegularText,
                                    ),
                                    Text(
                                      ('Friday, '+ DateFormat('yMd').format(checkoutAcommodation[0].startDate).toString()),
                                      style: AppFonts.extraSmallLightText,
                                    )
                                  ],
                                ),
                                Spacer(),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Price',
                                      style: AppFonts.smallRegularText,
                                    ),
                                    Text(
                                      ('MYR ' + '113.00' + ' / Night') ,
                                      style: AppFonts.extraSmallLightText,
                                    )
                                  ],
                                )
                              ],
                            ),
                            SizedBox(height: 8,),
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Guests',
                                      style: AppFonts.smallRegularText,
                                    ),
                                    Text(
                                      ('2 ' + ' Adults, ' + '1 Infant') ,
                                      style: AppFonts.extraSmallLightText,
                                    )
                                  ],
                                ),
                                SizedBox(width: 41,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Check-in Time',
                                      style: AppFonts.smallRegularText,
                                    ),
                                    Text(
                                      ('12 PM ' + 'MYT') ,
                                      style: AppFonts.extraSmallLightText,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  
                  // Activities Details List
                  SizedBox(
                    height: 600,
                    child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: checkoutActivites.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(left : 19.0, right: 19, bottom: 10),
                            child: Container(
                              decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xff252525).withOpacity(0.05),
                            ),
                            constraints: BoxConstraints.tightFor(),
                            child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    checkoutActivites[index].image,
                                    width: 100,),
                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Column(
                                      children: [
                                        Text(
                                          checkoutActivites[index].name,
                                          style: AppFonts.smallRegularText,
                                        ),
                                        Visibility(
                                          visible: greenPointsOn,
                                          child: Row(
                                            children: [
                                              Image.asset(
                                                'lib/assets/images/leaf.png',
                                                width: 30,),
                                              Text(
                                                '+ ' + checkoutActivites[index].sustainabilityImpact,
                                                style: AppFonts.extraSmallLightText,
                                              ),
                                            ],
                                          ),
                                        ),
                                      Text(
                                        'MYR ' + checkoutActivites[index].price.toString(),
                                        style: AppFonts.extraSmallLightText,
                                      )
                                      ],
                                    ),
                                  ),
                                  Spacer(),
                                  EditButtonCheckout(),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top : 10.0, bottom: 10),
                                child: SizedBox(
                                  height: 1,
                                  child: DottedLine(height: 1.0)),
                              ),
                              Row(
                                children : [
                                  Text(
                                    'Details:',
                                    style: AppFonts.normalRegularText,
                                ),
                                Spacer(),
                                ]
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Date',
                                        style: AppFonts.smallRegularText,
                                      ),
                                      Text(
                                        (checkoutActivites[index].date),
                                        style: AppFonts.extraSmallLightText,
                                      ),
                                    SizedBox(height: 5,),
                                    Text(
                                        'Pax',
                                        style: AppFonts.smallRegularText,
                                      ),
                                      Text(
                                        ('2 ' + ' Adults, ' + '1 Infant') ,
                                        style: AppFonts.extraSmallLightText,
                                      ) 
                                    ],
                                  ),
                                  Spacer(),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Ticket Prices',
                                        style: AppFonts.smallRegularText,
                                      ),
                                      Container(
                                        width: 200,
                                        child: Text(checkoutActivites[0].ticketPrices ?? 'No price available',
                                        style: AppFonts.extraSmallLightText ,),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 8,),
                            ],
                          ),
                        ),
                      ),
                    );
                    }),
                  ),]
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(19.0),
                child: Container(
                  child: Column(
                    children: [
                      DividerLine(),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Green Points',
                                style: AppFonts.normalRegularText,
                              ),
                              Text(
                                '*Apply the Green Points earned to get more DISCOUNTS!',
                                style: AppFonts.extraSmallLightText,
                              )
                            ],
                          ),
                          switchForm(context),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
      ),
    );
  }

    ToggleSwitchCheckout switchForm(BuildContext context) {
    return ToggleSwitchCheckout(
      greenPointsOn: greenPointsOn,
      onToggle: (value) {
        setState(() {
          greenPointsOn = value;
        });
      },
    );
  }
}