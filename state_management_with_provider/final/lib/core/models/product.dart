class Product {
  final String _id;
  final String _name;
  final double _price;
  final String _imageUrl;
  final String _description;
  int _countInCart;

  Product({
    required id,
    required name,
    required price,
    required imageUrl,
    required description,
  })  : _id = id,
        _name = name,
        _price = price,
        _imageUrl = imageUrl,
        _description = description,
        _countInCart = 0;

  String get id => _id;
  String get name => _name;
  double get price => _price;
  String get imageUrl => _imageUrl;
  String get description => _description;
  int get countInCart => _countInCart;
  void addCountInCart(int value) => _countInCart += value;
}
