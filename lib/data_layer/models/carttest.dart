class CartItem {
  final String name, image;
  final double price;
  int count;

  CartItem(
      {required this.name,
      required this.price,
      this.count = 1,
      required this.image});
}

List<CartItem> cartItem = [
  CartItem(name: 'القطه الكبيره', price: 20, image: 'assets/images/catbag.png'),
  CartItem(name: 'القطه الكبيره', price: 20, image: 'assets/images/catbag.png'),
  CartItem(name: 'القطه الكبيره', price: 20, image: 'assets/images/catbag.png'),
  CartItem(name: 'القطه الكبيره', price: 20, image: 'assets/images/catbag.png'),
  CartItem(name: 'القطه الكبيره', price: 20, image: 'assets/images/catbag.png'),
];

class CartItemModel {
  final int id; // Unique identifier for the product
  final String name; // Name of the product
  final String nameEn; // English name of the product
  final double price; // Price of the product
  final String image; // URL or path to the product image
  int quantity; // Quantity of the product in the cart
  final int idProduct;
  final String type;
  final int vender_id;
  CartItemModel({
    required this.id,
    required this.vender_id,
    required this.type,
    required this.idProduct,
    required this.name,
    required this.nameEn,
    required this.price,
    required this.image,
    required this.quantity,
  });

  // Create a CartItemModel from a map (e.g., when fetching from the database).
  factory CartItemModel.fromMap(Map<String, dynamic> map) {
    return CartItemModel(
      id: map['id'],
      idProduct: map['idProduct'],
      vender_id: map['vender_id'],
      type: map['type'],
      name: map['itemsName'],
      nameEn: map['itemsNameEn'],
      price: map['itemsPrice'].toDouble(),
      image: map['itemsImage'],
      quantity: map['quntity'],
    );
  }

  // Convert a CartItemModel to a map (e.g., when storing in the database).
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'itemsName': name,
      'idProduct': idProduct,
      'itemsNameEn': nameEn,
      'itemsPrice': price,
      'itemsImage': image,
      'quntity': quantity,
      'type': type,
      'vender_id': vender_id,
    };
  }
}
