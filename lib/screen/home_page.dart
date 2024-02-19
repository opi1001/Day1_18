import 'package:flutter/material.dart';
import 'package:pracitce_18/screen/company_list.dart';
import 'package:pracitce_18/screen/home_appbar.dart';
import 'package:pracitce_18/screen/search.dart';
import 'package:pracitce_18/screen/tag_list.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.grey.withOpacity(0.2),
                ),
              ),
            ],
          ),
          Column(
            children: [HomeAppBar(), SearchDemo(), TagList(), CompanyList()],
          )
        ],
      ),
    );
  }
}
