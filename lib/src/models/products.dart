class Product {
  int id;
  String title;
  var price;
  String description;
  String category;
  String image;

  Product({
    this.id,
    this.title,
    this.price,
    this.description,
    this.category,
    this.image,
  });

  //
  // [fake data model]
  // "id": 1,
  // "title": "Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops",
  // "price": 109.95,
  // "description": "Your perfect pack for everyday use and walks in the forest. Stash your laptop (up to 15 inches) in the padded sleeve, your everyday",
  // "category": "men clothing",
  // "image": "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg"
  //

  factory Product.fromJson(Map<String, dynamic> json) => new Product(
        id: json['id'] as int,
        title: json["title"] == null ? null : json["title"],
        price: json["price"],
        description: json["description"] == null ? null : json["description"],
        category: json["category"] == null ? null : json["category"],
        image: json["image"] == null ? null : json["image"],
      );
}

List<Product> fetchProducts() {
  List<Product> productList = [];
  // Some constant fields for image icons
  // final String lamp = "assets/images/lamp.png";
  // final String chair = "assets/images/chair.png";
  // final String sofa = "assets/images/sofa.png";
  // final String table = "assets/images/table.png";
  // final String table1 = "assets/images/table_1.png";
  return productList;
}
