import 'package:flutter/material.dart';
import 'package:pracitce_18/screen/company_info.dart';

class CompanyDetails extends StatefulWidget {
  CompanyInfo _companyInfo;
  CompanyDetails(this._companyInfo);
  @override
  State<CompanyDetails> createState() => _CompanyDetailsState();
}

class _CompanyDetailsState extends State<CompanyDetails> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500.0,
      decoration: const BoxDecoration(
        color: Colors.pink,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(35.0),
          topRight: Radius.circular(35.0),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Row(
                children: [],
              ),
              Container(
                height: 30,
                width: 40,
                padding: EdgeInsets.all(5),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(50)),
                child: Icon(Icons.share),
              ),
              Text(widget._companyInfo.company),
            ],
          ),
          const Row(
            children: [
              Icon(Icons.bookmark_outline_sharp),
              Icon(Icons.more_horiz_outlined),
            ],
          ),
        ],
      ),
    );
  }
}
