import 'package:firebase_database/firebase_database.dart';

class BelanjaService {
  final DatabaseReference _database =
      FirebaseDatabase.instance.ref().child('shopping_list');
  Stream<Map<String, String>> getShoppingList() {
    return _database.onValue.map((event) {
      final Map<String, String> items = {};
      DataSnapshot snapshot = event.snapshot;
      // print('Snapshot data: ${snapshot.value}');
      if (snapshot.value != null) {
        Map<dynamic, dynamic> values = snapshot.value as Map<dynamic, dynamic>;
        values.forEach((key, value) {
          items[key] =
              'code_product : ${value['code_product']}\nproduct_name : ${value['product_name']} ';
        });
      }
      return items;
    });
  }
  void addItem(String codeProduct, productName) {
    _database.push().set({
      'code_product': codeProduct,
      'product_name': productName,
    });
  }

  Future<void> removeShoppingItem(String key) async {
    await _database.child(key).remove();
  }
}
