import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(name: 'Sugar', price: 5000),
    Item(name: 'Salt', price: 2000),
    Item(name: 'Rice', price: 10000),
    Item(name: 'Flour', price: 4000),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Belanja',
          style: TextStyle(color: Colors.white,),
        ),
        backgroundColor: Colors.blue, // Mengubah warna background menjadi biru
      ),
      body: Container(
        margin: const EdgeInsets.all(8),
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];

            return Card(
              elevation: 5,
              margin: const EdgeInsets.symmetric(vertical: 8),
              child: ListTile(
                title: Text(item.name),
                trailing: Text(
                  'Rp${item.price}',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/item', arguments: item);
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
