import 'package:flutter/material.dart';
import 'package:garcia_uii_act1_0483/pantallas0483/panel0483/widgets0483/item_libreria0483.dart';

class PanelPantalla0483 extends StatelessWidget {
  const PanelPantalla0483({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff25b7db),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu, color: Color(0xfffdfbfb)),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 25),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://raw.githubusercontent.com/lgLara09/Img_FlutterFlow_IOS_6j/main/Act12NavBar_FlutterFlow/iconlib.png"),
            ),
          )
        ],
        title: const Text(
          'Garcia Libreria0483',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.all(15),
            padding: const EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: const Color(0xfffefefe),
                boxShadow: [
                  BoxShadow(
                      offset: const Offset(0, 5),
                      color:
                          Theme.of(context).colorScheme.primary.withOpacity(.1),
                      spreadRadius: 5,
                      blurRadius: 5),
                ]),
            child: const TextField(
              decoration: InputDecoration(
                  hintText: "Busca lo que necesites",
                  hintStyle: TextStyle(fontWeight: FontWeight.w300),
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.search,
                    color: Color(0xff607d8b),
                  )),
            ),
          ),
          Container(
            height: 180,
            margin: const EdgeInsets.all(15),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://raw.githubusercontent.com/lgLara09/Img_FlutterFlow_IOS_6j/main/Act12NavBar_FlutterFlow/libros.jpeg"))),
          ),
          ListTile(
            title: const Text("Top libros"),
            titleTextStyle: Theme.of(context).textTheme.titleLarge,
            trailing: const Icon(Icons.filter_list_outlined),
          ),
          Expanded(
              child: GridView.count(
            padding: const EdgeInsets.all(15),
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 15,
            children: [for (int i = 1; i <= 10; i++) const Itemlibreria()],
          ))
        ],
      ),
    );
  }
}
