import 'package:flutter/material.dart';


class Step6 extends StatefulWidget {
  final void Function()? onTab;
  const Step6({Key? key,this.onTab}) : super(key: key);

  @override
  State<Step6> createState() => _Step6State();
}

class _Step6State extends State<Step6> {


  bool is_checked = false;
  String? fature;

  String dropdownvalue = "";
  var item = [
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "10",
    "11",
    "12",
  ];
  String dropdownvalu = "";
  var year = [
    "2015",
    "2015",
    "2016",
    "2017",
    "2018",
    "2019",
    "2020",
    "2021",
    "2022",
    "2023",
    "2024",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [


          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 20,
              ),
              Text("Add Work Experience ",
                  style: TextStyle(
                      color: Color(0xFF003C30), fontWeight: FontWeight.w500)),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 20,
              ),
              Text("This helps match you with nearby jobs",
                  style: TextStyle(
                      color: Color(0xFF003C30),
                      fontSize: 10,
                      fontWeight: FontWeight.w500)),
            ],
          ),
          const SizedBox(
            height: 18,
          ),
          const Row(
            children: [
              SizedBox(
                width: 32,
              ),
              Text("Job Title*", style: TextStyle(fontSize: 12))
            ],
          ),
          Container(
            height: 50,
            width: 300,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [BoxShadow(blurRadius: 1.0, color: Colors.black12)]),
            child: const TextField(
              decoration: InputDecoration(
                  isDense: false,
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(left: 10),
                  hintText: "E.g UI UX Designer",
                  hintStyle: TextStyle(fontSize: 10)),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            children: [
              SizedBox(
                width: 32,
              ),
              Text("Company", style: TextStyle(fontSize: 12)),
            ],
          ),
          Container(
            height: 50,
            width: 300,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [BoxShadow(blurRadius: 1.0, color: Colors.black12)]),
            child: const TextField(
              decoration: InputDecoration(
                  isDense: false,
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(left: 10),
                  hintText: "e.g Softrave",
                  hintStyle: TextStyle(fontSize: 10)),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            children: [
              SizedBox(
                width: 32,
              ),

            ],
          ),

          const SizedBox(
            height: 10,
          ),
          const Row(
            children: [
              SizedBox(
                width: 32,
              ),
              Text("Country*", style: TextStyle(fontSize: 12)),
            ],
          ),
          Container(
            height: 50,
            width: 300,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [BoxShadow(blurRadius: 1.0, color: Colors.black12)]),
            child: const TextField(
              decoration: InputDecoration(
                  isDense: false,
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(left: 10),
                  hintText: "e.g Germany",
                  hintStyle: TextStyle(fontSize: 10)),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            children: [
              SizedBox(
                width: 32,
              ),
              Text("City*", style: TextStyle(fontSize: 12)),
            ],
          ),
          Container(
            height: 50,
            width: 300,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [BoxShadow(blurRadius: 1.0, color: Colors.black12)]),
            child: const TextField(
              decoration: InputDecoration(
                  isDense: false,
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(left: 10),
                  hintText: "e.g Berlin",
                  hintStyle: TextStyle(fontSize: 10)),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            children: [
              SizedBox(
                width: 30,
              ),
              Text("Time Period"),
            ],
          ),
          Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              Checkbox(
                  activeColor: Colors.blue,
                  value: is_checked,
                  onChanged: (val) {
                    setState(() {
                      is_checked = val!;
                    });
                  }),
              const Text("Currently Enrolled", style: TextStyle(fontSize: 12)),
            ],
          ),
          const Text("Do you want to work in same industry in future?",
              style: TextStyle(fontSize: 10)),
          Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              Radio(
                  value: "yes",
                  groupValue: fature,
                  activeColor: const Color(0xFF003C30),
                  onChanged: (value) {
                    setState(() {
                      fature = value.toString();
                    });
                  }),
              const Text("Yes"),
              const SizedBox(
                width: 20,
              ),
              Radio(
                  value: "no",
                  groupValue: fature,
                  activeColor: const Color(0xFF003C30),
                  onChanged: (value) {
                    setState(() {
                      fature = value.toString();
                    });
                  }),
              const Text("No"),
            ],
          ),
          const Row(
            children: [
              SizedBox(
                width: 40,
              ),
              Text("From",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 10)),
            ],
          ),
          const SizedBox(
            height: 5,
          ),

          Row(
            children: [
              const SizedBox(
                width: 30,
              ),
              Container(
                width: 150,
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black12,
                          offset: Offset(0.0, 0.0),
                          blurRadius: 1.2),
                    ],
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                      icon: const Icon(Icons.keyboard_arrow_down),
                      hint: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("Month",style: TextStyle(fontSize: 10)),
                      ),
                      value: dropdownvalue.isEmpty ? null : dropdownvalue,
                      items: item.map((String item) {
                        return DropdownMenuItem(
                            value: item,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(item,style: const TextStyle(fontSize: 10)),
                            ));
                      }).toList(),
                      onChanged: (String? newvalue) {
                        setState(() {
                          dropdownvalue = newvalue!;
                        });
                      }),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black12,
                          offset: Offset(0.0, 0.0),
                          blurRadius: 1.2),
                    ],
                    borderRadius: BorderRadius.circular(10)),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                      icon: const Icon(Icons.keyboard_arrow_down),
                      hint: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("Year",style: TextStyle(fontSize: 10)),
                      ),
                      value: dropdownvalu.isEmpty ? null : dropdownvalu,
                      items: year.map((String year) {
                        return DropdownMenuItem(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(year,style: const TextStyle(fontSize: 10)),
                            ),
                            value: year);
                      }).toList(),
                      onChanged: (String? newvalue) {
                        setState(() {
                          dropdownvalu = newvalue!;
                        });
                      }),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            children: [
              SizedBox(
                width: 40,
              ),
              Text("To",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500)),

            ],
          ),

          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              const SizedBox(
                width: 30,
              ),
              Container(
                width: 150,
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black12,
                          offset: Offset(0.0, 0.0),
                          blurRadius: 1.2),
                    ],
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                    icon: const Icon(Icons.keyboard_arrow_down),
                      hint: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("Month",style: TextStyle(fontSize: 10)),
                      ),
                      value: dropdownvalue.isEmpty ? null : dropdownvalue,
                      items: item.map((String item) {
                        return DropdownMenuItem(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(item,style: const TextStyle(fontSize: 10)),
                            ),
                            value: item);
                      }).toList(),
                      onChanged: (String? newvalue) {
                        setState(() {
                          dropdownvalue = newvalue!;
                        });
                      }),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black12,
                          offset: Offset(0.0, 0.0),
                          blurRadius: 1.2),
                    ],
                    borderRadius: BorderRadius.circular(10)),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                      icon: const Icon(Icons.keyboard_arrow_down),
                      hint: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("Year",style: TextStyle(fontSize: 10)),
                      ),
                      value: dropdownvalu.isEmpty ? null : dropdownvalu,
                      items: year.map((String year) {
                        return DropdownMenuItem(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(year,style: const TextStyle(fontSize: 10)),
                            ),
                            value: year);
                      }).toList(),
                      onChanged: (String? newvalue) {
                        setState(() {
                          dropdownvalu = newvalue!;
                        });
                      }),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "skip",
                    style: TextStyle(color: Color(0XFF003C30)),
                  )),
              ElevatedButton(
                  onPressed: widget.onTab ,
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size.fromHeight(40),
                    backgroundColor: const Color(0xFF003C30),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  child: const Text(
                      style: TextStyle(color: Color(0xFFF1FA3F)), "Contiune")),
              const SizedBox(
                width: 15,
                height: 90,
              ),
            ],
          )
        ]),
      ),

    );
  }
}
