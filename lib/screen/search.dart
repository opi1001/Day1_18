import 'package:flutter/material.dart';

class SearchDemo extends StatefulWidget {
  const SearchDemo({super.key});

  @override
  State<SearchDemo> createState() => _SearchDemoState();
}

class _SearchDemoState extends State<SearchDemo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        image: const DecorationImage(
            image: NetworkImage(
                "https://image.cnbcfm.com/api/v1/image/106359710-1580238878705gettyimages-1070079890.jpeg?v=1696264107"),
            fit: BoxFit.cover),
      ),
      child: Stack(
        children: [
          Column(
            children: [
              const Text(
                "Fast Search",
                style: TextStyle(fontSize: 30, fontStyle: FontStyle.italic),
              ),
              const Text(
                "You can Search quickly for\n the you want ",
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Container(
                height: 50,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(30.0),
                      topRight: Radius.circular(30.0),
                    ),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Image.network(
                        "data:image/png;base64,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",
                        height: 70,
                        width: 70,
                      ),
                      const Text(
                        "Search",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
