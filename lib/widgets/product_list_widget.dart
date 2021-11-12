import 'package:flutter/material.dart';
import 'package:http_demo/models/product.dart';

import 'product_list_row_widget.dart';

//ignore: must_be_immutable
class ProductListWidget extends StatefulWidget {

  List<Product> products = <Product>[];

  ProductListWidget(this.products, {Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return ProductListWidgetState();
  }

}

class ProductListWidgetState extends State<ProductListWidget> {
  @override
  Widget build(BuildContext context) {
    return buildProductList(context);
  }

  Widget buildProductList(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox(height: 10.0,),
        SizedBox(
          height: 500.0,
          child: GridView.count(
            crossAxisCount: 2,
            children: List.generate(widget.products.length ,(index) {
              return ProductListRowWidget(widget.products[index]);
            }),
          ),
        ),
      ],
    );
  }
}