import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:green/presets/colors.dart';
import 'package:green/presets/fonts.dart';
import 'package:green/screens/checkout/receipt_screen.dart';
import 'package:green/widgets/button.dart';
import 'package:green/widgets/checkout_widgets/payment_options_toggle.dart';
import 'package:green/widgets/checkout_widgets/appbar_checkout.dart';
import 'package:green/widgets/form_field.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  final _cardHolderNameController = TextEditingController();
  final _cardNumberController = TextEditingController();
  final _expiryController = TextEditingController();
  final _cvvController = TextEditingController();
  int _selectedButtonIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCheckout(title: 'Payment'),
      backgroundColor: AppColor.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left : 15.0, right: 15),
          child: Column(
            children: [
              SizedBox(height: 20,),
                Center(
                  child: Image.asset(
                    'lib/assets/images/payment1.png',
                    //width: 500,
                  ),
                ),
          
                // Payment Method
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          SizedBox(height: 20,),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: 
                              Text(
                                'Payment Method',
                                style: AppFonts.normalRegularText,
                              ),
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              PaymentOptionsToggle(
                                isSelected: _selectedButtonIndex == 0, 
                                onPressed:() => _onPressed(0),
                                image: 'lib/assets/icons/visa_icon.png'),
                              SizedBox(width: 10,),
                              PaymentOptionsToggle(
                                isSelected: _selectedButtonIndex == 1, 
                                onPressed:() => _onPressed(1),
                                image: 'lib/assets/icons/mc_icon.png'),
                              SizedBox(width: 10,),
                              PaymentOptionsToggle(
                                isSelected: _selectedButtonIndex == 2, 
                                onPressed:() => _onPressed(2),
                                image: 'lib/assets/icons/paypal_icon.png'),
                              SizedBox(width: 10,),
                              PaymentOptionsToggle(
                                isSelected: _selectedButtonIndex == 3, 
                                onPressed:() => _onPressed(3),
                                image: 'lib/assets/icons/amex_icon.png'),
                            ],
                          ),
                          SizedBox(height: 15,),
                          CreditCardContainer(),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Add Card',
                              style: AppFonts.normalRegularText,
                            ),
                          ),
                          Ink(
                            decoration: const ShapeDecoration(
                            color: Colors.white,
                            shape: CircleBorder(),),
                              child: IconButton(onPressed:() {
                                
                              }, 
                              icon: Icon(Icons.add),),
                          ),
                          // Cardholder Details
                          Column(
                            children: [
                              CustomFormField(
                                label: 'Cardholder Name', 
                                keyboardType: TextInputType.name, 
                                obscureText: false, 
                                width: double.infinity, 
                                controller: _cardHolderNameController),
                              CustomFormField(
                                label: 'Card Number', 
                                keyboardType: TextInputType.visiblePassword, 
                                obscureText: false, 
                                width: double.infinity, 
                                controller: _cardNumberController),
                              Row(
                                children: [
                                  CustomFormField(
                                    label: 'Expiry', 
                                    keyboardType: TextInputType.visiblePassword, 
                                    obscureText: false, 
                                    width: 170, 
                                    controller: _expiryController),
                                  SizedBox(width: 20,),
                                  CustomFormField(
                                    label: 'CVV', 
                                    keyboardType: TextInputType.visiblePassword, 
                                    obscureText: true, 
                                    width: 170, 
                                    controller: _cvvController),
                                ],
                              ),
                            ],
                          ),
                          Padding(
                              padding: const EdgeInsets.only(top: 30.0, bottom: 20),
                              child: DefaultButton(
                                text: 'PAY NOW', 
                                press: () {
                                   Navigator.push(
                                   context,
                                   MaterialPageRoute(
                                     builder: (context) => 
                                     ReceiptScreen()),
                                   );
                                }, 
                                backgroundColor: AppColor.btnColorPrimary, 
                                height: 45, 
                                fontStyle: AppFonts.normalRegularTextWhite, 
                                width: double.infinity, 
                                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8)
                                ),
                            ),
                        ],
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

    void _onPressed(int index) {
    setState(() {
      // Toggle the selection state of the button
      if (_selectedButtonIndex == index) {
        // If the same button is tapped again, deselect it
        _selectedButtonIndex = -1;
      } else {
        // Otherwise, select the tapped button
        _selectedButtonIndex = index;
      }
    });
  }
}



class CreditCardContainer extends StatelessWidget {
  const CreditCardContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color(0xff141E30),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Master',
                      style: AppFonts.normalRegularTextWhite,
                    ),
                    Text(
                      'Card',
                      style: AppFonts.normalRegularTextWhite,
                    )
                  ],
                ),
                Spacer(),
                Column(
                  children: [
                    Text('Valid Thru',
                    style: AppFonts.extraSmallLightTextWhite,),
                    Text(
                      '12/08',
                      style: AppFonts.extraSmallLightTextWhite,
                    )
                  ],
                ),
              ],
            ),
          Image.asset('lib/assets/icons/chip_logo.png',
          width: 100,),
          Row(
            children: [
              Column(
                children: [
                  Text(
                    'Evelyn',
                    style: AppFonts.smallLightTextWhite,
                  ),
                  Text(
                    '1234   5678    2934   345O',
                    style: AppFonts.normalRegularTextWhite,
                  ),
                ],
              ),
              Spacer(),
              Image.asset(
                'lib/assets/icons/mc_icon2.png',
                width: 80,
              )
            ],
          ),
          ],
        ),
      ),
    );
  }
}