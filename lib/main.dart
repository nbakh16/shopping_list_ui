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
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Shopping List'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){
              final snackBar = SnackBar(content: Text('Cart is empty'));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            icon: const Icon(Icons.shopping_cart)
          )
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          MyListTile(title: 'Apple'),
          MyListTile(title: 'Bread'),
          MyListTile(title: 'Milk'),
          MyListTile(title: 'Egg'),
          MyListTile(title: 'Banana'),
        ],
      )
    );
  }

}

class MyListTile extends StatelessWidget {
  MyListTile({
    super.key,
    required this.title
  });

  String title;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.shopping_basket),
      title: Text(
        title,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)
      ),
      onTap: (){
        final snackBar = SnackBar(content: Text(title));
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
    );
  }
}
