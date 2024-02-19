import 'package:flutter/material.dart';

class TagList extends StatefulWidget {
  const TagList({super.key});

  @override
  State<TagList> createState() => _TagListState();
}

class _TagListState extends State<TagList> {
  final _TagList = <String>["  Opi  ", "  Popular  ", "  Featurte  "];

  var Selected = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, opi) => GestureDetector(
                onTap: () {
                  setState(() {
                    Selected = opi;
                  });
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  decoration: BoxDecoration(
                      color: Selected == opi ? Colors.yellow : Colors.white,
                      borderRadius: BorderRadius.circular(30.0),
                      border: Border.all(
                        color: Selected == opi ? Colors.red : Colors.yellow,
                      )),
                  child: Text(_TagList[opi]),
                ),
              ),
          separatorBuilder: (context, index) => SizedBox(
                height: 10.0,
              ),
          itemCount: _TagList.length),
    );
  }
}
