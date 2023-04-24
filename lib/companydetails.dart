class Companydetails {
  final String companyname;
  final String companynamefild;
  final String description;
  final String date;
  final String aplicationno;
  final String image;
  final String time;
  final String type;
  final String address;
  final String salary;
  final Requirements requirements;
  Companydetails(
      this.companyname,
      this.companynamefild,
      this.description,
      this.date,
      this.aplicationno,
      this.image,
      this.time,
      this.type,
      this.address,
      this.salary,
      this.requirements);

  static List<Companydetails> getCompany() {
    List<Companydetails> items = <Companydetails>[];
    items.add(Companydetails(
        "CSL ","SME Engineer -111252525 Clean",
        "Lattice Technologies uses machine learning, artificial intelligence.",
        "30 Dec 2021","12 Applicants" , "firstimg.png","Full time","Remote Job","Kingston Rd, WB, To Victoria Park",
    "\$3k - \$5k per month",
        Requirements("Graphic Designer","2 Years"," Design","Illustation",
            "Art Direction"," Accounting,Tax")));
    items.add(Companydetails(
        "Kensho Tecnologies ","Senior Software Engin..",
        "Lattice Technologies uses machine learning, artificial intelligence.",
        "30 Dec 2021","12 Applicants" , "asddag.png","Full time","Remote Job","Kingston Rd, WB, To Victoria Park",
        "\$3k - \$5k per month",
        Requirements("Graphic Designer","2 Years"," Design","Illustation",
            "Art Direction"," Accounting,Tax")));
    items.add(Companydetails(
        "Chainalysis Inc. ","Business Development",
        "Lattice Technologies uses machine learning, artificial intelligence.",
        "30 Dec 2021","12 Applicants" , "third.png","Full time","Remote Job","Kingston Rd, WB, To Victoria Park",
        "\$3k - \$5k per month",
        Requirements("Graphic Designer","2 Years"," Design","Illustation",
            "Art Direction"," Accounting,Tax")));
    items.add(Companydetails(
        "Kensho Technologies ","Senior Software Engineer",
        "Lattice Technologies uses machine learning, artificial intelligence.",
        "30 Dec 2021","12 Applicants" , "Kensho.png","Full time","Remote Job","Kingston Rd, WB, To Victoria Park",
        "\$3k - \$5k per month",  Requirements("Graphic Designer","2 Years"," Design","Illustation",
        "Art Direction"," Accounting,Tax")));
    items.add(Companydetails(
        "Lattice ","Staff Software Engineer",
        "Lattice Technologies uses machine learning, artificial intelligence.",
        "30 Dec 2021","12 Applicants" , "third.png","Full time","Remote Job","Kingston Rd, WB, To Victoria Park",
        "\$3k - \$5k per month",
        Requirements("Graphic Designer","2 Years"," Design","Illustation",
            "Art Direction"," Accounting,Tax")));
    items.add(Companydetails(
        "Chainalysis Inc. ","Machine Learning Engineer",
        "Lattice Technologies uses machine learning, artificial intelligence.",
        "30 Dec 2021","12 Applicants" , "asddag.png","Full time","Remote Job","Kingston Rd, WB, To Victoria Park",
        "\$3k - \$5k per month",
        Requirements("Graphic Designer","2 Years"," Design","Illustation",
            "Art Direction"," Accounting,Tax")));
    items.add(Companydetails(
        "CSL ","Senior Software Engineer",
        "Lattice Technologies uses machine learning, artificial intelligence.",
        "30 Dec 2021","12 Applicants" , "firstimg.png","Full time","Remote Job","Kingston Rd, WB, To Victoria Park",
        "\$3k - \$5k per month",
        Requirements("Graphic Designer","2 Years"," Design","Illustation",
            "Art Direction"," Accounting,Tax")));

    return items;
  }
}
class Requirements{
  final String designation;
  final String experience;
  final String expertise;
  final String jobfunctions;
  final String skills;
  final String industry;
  Requirements(this.designation, this.experience, this.expertise,
      this.jobfunctions, this.skills, this.industry);


}