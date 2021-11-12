class Product {
  int?    id;
  int?    categoryId;
  String? productName;
  String? quantityPerUnit;
  double? unitPrice;
  int?    unitsInStock;

  Product(
      this.id,
      this.categoryId,
      this.productName,
      this.quantityPerUnit,
      this.unitPrice,
      this.unitsInStock
      );

  Product.fromJson(Map json) {
    id              = int.tryParse(json["id"].toString());
    categoryId      = int.tryParse(json["categoryId"].toString());
    productName     = json["productName"].toString();
    quantityPerUnit = json["quantityPerUnit"].toString();
    unitPrice       = double.tryParse(json["unitPrice"].toString());
    unitsInStock    = int.tryParse(json["unitsInStock"].toString());
  }

  Map productToJson() {
    return {
      "id"              : int.tryParse(id.toString()),
      "categoryId"      : int.tryParse(categoryId.toString()),
      "productName"     : productName.toString(),
      "quantityPerUnit" : quantityPerUnit.toString(),
      "unitPrice"       : double.tryParse(unitPrice.toString()),
      "unitsInStock"    : int.tryParse(unitsInStock.toString())
    };
  }

}