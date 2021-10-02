import 'package:flutter/material.dart';

class CheckoutScreen extends StatelessWidget {
  final cart;
  final sum;
  CheckoutScreen(this.cart, this.sum);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListView.separated(
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(cart[index].name),
                trailing: Text(
                  "\$${cart[index].price}",
                  style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                onTap: () {},
              );
            },
            separatorBuilder: (context, index) {
              return Divider();
            },
            shrinkWrap: true,
            itemCount: cart.length),
        Divider(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Total:\$$sum",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
        ),
      ],
    );
  }
}
