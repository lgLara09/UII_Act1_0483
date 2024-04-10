import 'package:flutter/material.dart';

class Itemlibreria extends StatelessWidget {
  const Itemlibreria({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xfff4f7f8),
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 5),
                color: Theme.of(context).colorScheme.primary.withOpacity(.1),
                spreadRadius: 5,
                blurRadius: 5)
          ]),
      child: Column(
        children: [
          const CircleAvatar(
            backgroundImage: NetworkImage(
                "https://raw.githubusercontent.com/lgLara09/Img_FlutterFlow_IOS_6j/main/Act12NavBar_FlutterFlow/drama.jpg"),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Nuestros libros",
            style: Theme.of(context).textTheme.titleSmall,
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: List.generate(
                5,
                (index) => Icon(
                      Icons.star,
                      color: Color(0xffffc107),
                      size: 18,
                    )),
          )
        ],
      ),
    );
  }
}
