import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'components/checkout_actionbar.dart';
import 'components/wallet_options_list.dart';

class PaymentGateway extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<PayCard> paymentOptions = getPaymentOptions();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildCheckoutAppBar(context),
      body: Container(
        padding: EdgeInsets.only(top: 0, left: 10, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child: ListView.builder(
                    itemCount: paymentOptions.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                          padding: EdgeInsets.all(8.0),
                          child: ListTile(
                            title: Text(
                              paymentOptions[index].title,
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              paymentOptions[index].title,
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.normal),
                            ),
                            onTap: () => print(paymentOptions[index]),
                            leading: Icon(Icons.credit_card,
                                color: Colors.blueGrey, size: 30),
                            trailing: Icon(
                              Icons.arrow_drop_down_sharp,
                              color: Colors.blueGrey,
                            ),
                          ));
                    }))
          ],
        ),
      ),
    );
  }
}
