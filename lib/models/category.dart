class Category {
  int?    id;
  String? categoryName;
  String? seoUrl;

  Category(this.id, this.categoryName, this.seoUrl);

  Category.fromJson (Map json) {
    id           = int.tryParse(json["id"].toString());
    categoryName = json["categoryName"].toString();
    seoUrl       = json["seoUrl"].toString();
  }

  Map categoryToJson() {
    return {
      "id"           : int.tryParse(id.toString()),
      "categoryName" : categoryName.toString(),
      "seoUrl"       : seoUrl.toString()
  };
}

}