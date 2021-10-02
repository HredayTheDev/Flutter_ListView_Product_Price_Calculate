import 'package:flutter/material.dart';
import 'package:flutter_listview/productModel.dart';

class ProductScreen extends StatelessWidget {

  final ValueSetter <ProductModel>_valueSetter;
  ProductScreen(this._valueSetter);

  List<ProductModel> products = [
    ProductModel("Laptop1", 300),
    ProductModel("Laptop2", 400),
    ProductModel("Laptop3", 500),
    ProductModel("Laptop4", 300),
    ProductModel("Laptop5", 600),
    ProductModel("Laptop6", 700),
    ProductModel("Laptop7", 800),
    
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(products[index].name),
            trailing: Text(
              "\$${products[index].price}",
              style: TextStyle(
                  color: Colors.red, fontWeight: FontWeight.bold, fontSize: 20),
                  
            ),
            onTap: (){
              _valueSetter(products[index]);


            },
          );
        },
        separatorBuilder: (context, index) {
          return Divider();
        },
        itemCount: products.length);
  }
}
