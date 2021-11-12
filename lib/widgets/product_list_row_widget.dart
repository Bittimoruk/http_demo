import 'package:flutter/material.dart';
import 'package:http_demo/models/product.dart';

//ignore: must_be_immutable
class ProductListRowWidget extends StatelessWidget {

  Product products;

  ProductListRowWidget(this.products, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return buildProductItemCard(context);
  }

  Widget buildProductItemCard(BuildContext context) {
    return InkWell(
      child: Card(
        child: Column(
          children: <Widget>[
            SizedBox(
              child: Image.network("https://cdn.pixabay.com/photo/2015/12/09/17/11/vegetables-1085063_960_720.jpg"),
              height: 140.0,
              width: MediaQuery.of(context).size.width/2,
            ),
            SizedBox(
              child: Text(products.productName.toString(), textAlign: TextAlign.center,style: const TextStyle(fontSize: 16.0, color: Colors.deepPurple),),
              height: 20.0,
            ),
            SizedBox(
              child: Text(products.unitPrice.toString() + " ₺", textAlign: TextAlign.center, style: const TextStyle(fontSize: 16.0, color: Colors.deepOrange),),
              height: 20.0,
            ),
          ],
        ),
      ),
    );
  }

}