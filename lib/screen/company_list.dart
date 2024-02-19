import 'package:flutter/material.dart';
import 'package:pracitce_18/company_details.dart';
import 'package:pracitce_18/screen/company_info.dart';
import 'package:pracitce_18/screen/company_item.dart';

class CompanyList extends StatefulWidget {
  @override
  State<CompanyList> createState() => _CompanyListState();
}

class _CompanyListState extends State<CompanyList> {
  final cInfo = CompanyInfo.companyData();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                showModalBottomSheet(
                    backgroundColor: Colors.transparent,
                    isScrollControlled: true,
                    context: context,
                    builder: (context) => CompanyDetails(cInfo[index]));
              },
              child: CompanyItem(cInfo[index])),
          separatorBuilder: (context, index) => SizedBox(
                width: 10.0,
              ),
          itemCount: cInfo.length),
    );
  }
}
