import 'package:flutter/material.dart';

void main() {
  runApp(const PhotoGalleryApp());
}

class PhotoGalleryApp extends StatelessWidget {
  const PhotoGalleryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Live Test, Module 06',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget{
  HomeScreen({super.key});

  final itemsList = ['Apple', 'Banana', 'Milk', 'Egg', 'Bread', 'Mango'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Shopping List'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){
              const snackBar = SnackBar(content: Text('Cart is empty'));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            icon: const Icon(Icons.shopping_cart)
          )
        ],
      ),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: itemsList.length,
        itemBuilder: (context, index){
          return Card(
            child: ListTile(
              leading: const Icon(Icons.shopping_basket),
              title: Text(
                itemsList[index],
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.black
                ),
              ),
            )
          );
        },
      )
    );
  }
}
