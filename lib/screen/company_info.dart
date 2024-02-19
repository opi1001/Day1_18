class CompanyInfo {
  String logoUrl;
  String company;
  String tittle;
  String location;
  String fullTime;
  List<String> req;

  CompanyInfo(this.company, this.logoUrl, this.tittle, this.location,
      this.fullTime, this.req);

  static List<CompanyInfo> companyData() {
    return [
      CompanyInfo("A", "Logo", "B", "Location", "FulName", [
        "X",
        "Y",
        "Z",
        "T",
        "M"
            "T",
      ]),
      CompanyInfo("A", "Logo", "B", "Location", "FulName", [
        "X",
        "Y",
        "Z",
        "T",
        "M"
            "T",
      ]),
      CompanyInfo("A", "Logo", "B", "Location", "FulName", [
        "X",
        "Y",
        "Z",
        "T",
        "M"
            "T",
      ]),
    ];
  }
}
