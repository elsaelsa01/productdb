import 'package:product/services/belanja_services.dart';
import 'package:product/screens/home_screen.dart';
import 'package:flutter/material.dart';

// bisa digantikan dengan addProduct.dart
class ListBelanja extends StatefulWidget {
  const ListBelanja({super.key});

  @override
  State<ListBelanja> createState() => _ShoppingListScreenState();
}

class _ShoppingListScreenState extends State<ListBelanja> {
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  final BelanjaService _shoppingService = BelanjaService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Belanjaan Kamu ..."),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(15),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller1,
                    decoration: const InputDecoration(hintText: 'Kode Product'),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller2,
                    decoration: const InputDecoration(hintText: 'Nama Produk'),
                  ),
                ),
              ],
            ),
          ),
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              _shoppingService.addItem(
                  _controller1.text, _controller2.text);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomeScreen()));
            },
          ),
        ],
      ),
    );
  }
}
