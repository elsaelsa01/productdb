import 'package:flutter/material.dart';
import 'package:product/screens/addproduct_screen.dart';
import 'package:product/services/belanja_services.dart';

class HomeScreen extends StatelessWidget {
  final BelanjaService _shoppingService = BelanjaService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Daftar List Belanja Kamu"),
      ),
      body: Column(children: [
        Expanded(
            child: StreamBuilder<Map<String, String>>(
          stream: _shoppingService.getShoppingList(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              Map<String, String> items = snapshot.data!;
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  final key = items.keys.elementAt(index);
                  final item = items[key];
                  return ListTile(
                    title: Text(item!),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete),
                      onPressed: () {
                        _shoppingService.removeShoppingItem(key);
                      },
                    ),
                  );
                },
              );
            } else if (snapshot.hasError) {
              return Center(child: Text("Error: ${snapshot.error}"));
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        )),
        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ListBelanja()));
          },
        ),
      ]),
    );
  }
}
