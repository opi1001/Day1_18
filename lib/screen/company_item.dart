import 'package:flutter/material.dart';
import 'package:pracitce_18/screen/company_info.dart';

class CompanyItem extends StatefulWidget {
  CompanyInfo _companyInfo;
  CompanyItem(this._companyInfo);
  @override
  State<CompanyItem> createState() => _CompanyItemState();
}

class _CompanyItemState extends State<CompanyItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0), color: Colors.teal),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(5.0),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    height: 20,
                    width: 110,
                    // child: Image.asset("${widget._companyInfo.logoUrl}"),
                  ),
                  Text(
                    "${widget._companyInfo.company}",
                    style: TextStyle(fontSize: 20.0),
                  )
                ],
              ),
              Icon(Icons.bookmark_outline),
            ],
          ),
          Text(
            "${widget._companyInfo.tittle}",
            style: TextStyle(fontSize: 20),
          ),
          Row(
            children: [
              Icon(Icons.location_on_outlined),
              Text("${widget._companyInfo.location}")
            ],
          )
        ],
      ),
    );
  }
}
