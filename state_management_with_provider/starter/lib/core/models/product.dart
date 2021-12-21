class Product {
  final String _id;
  final String _name;
  final double _price;
  final String _imageUrl;
  final String _description;

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
        _description = description;

  String get id => _id;
  String get name => _name;
  double get price => _price;
  String get imageUrl => _imageUrl;
  String get description => _description;
}
