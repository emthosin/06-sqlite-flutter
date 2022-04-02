//MI2F_14_M. Thosin Yuhaililul Hilmi_2031710032

class Item {
  int _id;
  String _name;
  int _price;
  String _code;
  int _stock;

  int get id => _id;

  String get name => this._name;
  set name(String value) => this._name = value;

  get price => this._price;
  set price(value) => this._price = value;

  String get code => this._code;
  set code(String code) => this._code = code;

  get stock => this._stock;
  set stock(stock) => this._stock = stock;

// konstruktor versi 1
  Item(this._name, this._price, this._code, this._stock);
// konstruktor versi 2: konversi dari Map ke Item
  Item.fromMap(Map<String, dynamic> map) {
    _id = map['id'];
    _name = map['name'];
    _price = map['price'];
    _code = map['code'];
    _stock = map['stock'];
  }
  // konversi dari Item ke Map
  Map<String, dynamic> toMap() {
    return {
      'id': _id,
      'name': name,
      'price': price,
      'code': code,
      'stock': stock
    };
  }
}
