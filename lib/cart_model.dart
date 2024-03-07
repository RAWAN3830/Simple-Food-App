class CartModel {
  final String? name;
  final String? time;
  final String? image;
  final double? rate;
  final double? price;
  final String? plate;
  final int? qty;

  CartModel({
    required this.name,
    required this.time,
    required this.image,
    required this.rate,
    required this.plate,
    required this.price,
    required this.qty,
  });
}

List<CartModel> cartdata = [];


