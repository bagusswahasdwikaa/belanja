import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Item item = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white,),
        title: Text(item.name, 
        style: TextStyle(color: Colors.white,),),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Nama Produk: ${item.name}', style: TextStyle(fontSize: 18), ),
            SizedBox(height: 10),
            Text('Harga: Rp${item.price}', style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
