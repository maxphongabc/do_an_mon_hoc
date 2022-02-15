class CartModel {
   String name, image, price, productId;
   int quantity;

  CartModel({
     this.name,
     this.image,
     this.price,
     this.productId,
    this.quantity = 1,
  });

  CartModel.fromJson(Map<dynamic, dynamic> map) {
    name = map['name'];
    image = map['image'];
    price = map['price'];
    productId = map['productId'];
    quantity = map['quantity'];
  }

  toJson() {
    return {
      'name': name,
      'image': image,
      'price': price,
      'productId': productId,
      'quantity': quantity,
    };
  }
}
