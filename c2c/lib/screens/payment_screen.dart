// ignore_for_file: sized_box_for_whitespace, avoid_print

import 'package:flutter/material.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  final GlobalKey<FormState> _formkey = GlobalKey();
  late TextEditingController _amountController;
  late Razorpay _razorpay;
  @override
  void initState() {
    super.initState();
    _amountController = TextEditingController();
    _razorpay = Razorpay();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, handlerPaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, handlerErrorFailure);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, handlerExternalWallet);
  }

  @override
  void dispose() {
    super.dispose();
    _razorpay.clear();
  }

  void handlerPaymentSuccess() {
    print("Payment Success");
  }

  void handlerErrorFailure() {
    print("Payment Failed");
  }

  void handlerExternalWallet() {
    print("External Wallet");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Payment screen")),
        body: SingleChildScrollView(
          child: Column(children: [
            const SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 350,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Form(
                      key: _formkey,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 50,
                          ),
                          const Text(
                            "Do Payment Here ",
                            style: TextStyle(fontSize: 21),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: TextFormField(
                              controller: _amountController,
                              decoration: const InputDecoration(
                                  hintText: "Enter Amount"),
                              validator: (value) {
                                if (value != null && value.isEmpty) {
                                  return "Please enter Amount";
                                }
                                return null;
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              if (!_formkey.currentState!.validate()) {
                                return;
                              }
                              _formkey.currentState!.save();
                              var options = {
                                "key": "rzp_test_ACfKcntNeZkfR2",
                                "amount":
                                    num.parse(_amountController.text) * 100,
                                "name": "Farmer",
                                "description": "pay for items",
                                "prefill": {
                                  "contact": "8148201705",
                                  "email": "shiyam1705@gmail.com"
                                },
                                "external": {
                                  "wallets": ["paytm"]
                                },
                              };
                              try {
                                _razorpay.open(options);
                              } catch (e) {
                                print(e.toString());
                              }
                            },
                            child: const Text("Pay Now"),
                          ),
                        ],
                      )),
                ),
              ),
            )
          ]),
        ));
  }
}
