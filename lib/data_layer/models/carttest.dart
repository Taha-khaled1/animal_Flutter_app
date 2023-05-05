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
