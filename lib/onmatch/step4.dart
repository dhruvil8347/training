import 'package:flutter/material.dart';


class Step4 extends StatefulWidget {
  final void Function()? onTab;
  const Step4({Key? key,this.onTab}) : super(key: key);

  @override
  State<Step4> createState() => _Step4State();
}

class _Step4State extends State<Step4> {
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
        child: Column(mainAxisAlignment: MainAxisAlignment.start,

            children: [



          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 20,
              ),
              Text("Add Higher Education",
                  style: TextStyle(
                      color: Color(0xFF003C30), fontWeight: FontWeight.w500)),
            ],
          ),
          Row(
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
          SizedBox(
            height: 18,
          ),
          Row(
            children: [
              SizedBox(
                width: 32,
              ),
              Text("Level of Education*", style: TextStyle(fontSize: 12))
            ],
          ),
          Container(
            height: 50,
            width: 300,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [BoxShadow(blurRadius: 1.0, color: Colors.black12)]),
            child: TextField(
              decoration: InputDecoration(
                  isDense: false,
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(left: 10),
                  hintText: "e.g Graduation",
                  hintStyle: TextStyle(fontSize: 10)),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 32,
              ),
              Text("Field of Study*", style: TextStyle(fontSize: 12)),
            ],
          ),
          Container(
            height: 50,
            width: 300,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [BoxShadow(blurRadius: 1.0, color: Colors.black12)]),
            child: TextField(
              decoration: InputDecoration(
                  isDense: false,
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(left: 10),
                  hintText: "e.g Computer Science",
                  hintStyle: TextStyle(fontSize: 10)),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 32,
              ),
              Text("School Name*", style: TextStyle(fontSize: 12)),
            ],
          ),
          Container(
            height: 50,
            width: 300,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [BoxShadow(blurRadius: 1.0, color: Colors.black12)]),
            child: TextField(
              decoration: InputDecoration(
                  isDense: false,
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(left: 10),
                  hintText: "e.g Harvard School",
                  hintStyle: TextStyle(fontSize: 10)),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
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
                boxShadow: [BoxShadow(blurRadius: 1.0, color: Colors.black12)]),
            child: TextField(
              decoration: InputDecoration(
                  isDense: false,
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(left: 10),
                  hintText: "e.g Germany",
                  hintStyle: TextStyle(fontSize: 10)),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
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
                boxShadow: [BoxShadow(blurRadius: 1.0, color: Colors.black12)]),
            child: TextField(
              decoration: InputDecoration(
                  isDense: false,
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(left: 10),
                  hintText: "e.g Berlin",
                  hintStyle: TextStyle(fontSize: 10)),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 30,
              ),
              Text("Time Period"),
            ],
          ),
          Row(
            children: [
              SizedBox(
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
              Text("Currently Enrolled", style: TextStyle(fontSize: 12)),
            ],
          ),
          Text("Do you want to work in same industry in future?",
              style: TextStyle(fontSize: 10)),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Radio(
                  value: "yes",
                  groupValue: fature,
                  activeColor: Color(0xFF003C30),
                  onChanged: (value) {
                    setState(() {
                      fature = value.toString();
                    });
                  }),
              Text("Yes"),
              SizedBox(
                width: 20,
              ),
              Radio(
                  value: "no",
                  groupValue: fature,
                  activeColor: Color(0xFF003C30),
                  onChanged: (value) {
                    setState(() {
                      fature = value.toString();
                    });
                  }),
              Text("No"),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 40,
              ),
              Text("From"),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Container(
                width: 150,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12,
                          offset: Offset(0.0, 0.0),
                          blurRadius: 1.2),
                    ],
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                      icon: Icon(Icons.keyboard_arrow_down_rounded),
                      hint: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Month",style: TextStyle(fontSize: 10)),
                      ),
                      value: dropdownvalue.isEmpty ? null : dropdownvalue,
                      items: item.map((String item) {
                        return DropdownMenuItem(child: Text(item), value: item);
                      }).toList(),
                      onChanged: (String? newvalue) {
                        setState(() {
                          dropdownvalue = newvalue!;
                        });
                      }),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12,
                          offset: Offset(0.0, 0.0),
                          blurRadius: 1.2),
                    ],
                    borderRadius: BorderRadius.circular(10)),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                      icon: Icon(Icons.keyboard_arrow_down_rounded),
                      hint: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("year",style: TextStyle(fontSize: 10)),
                      ),
                      value: dropdownvalu.isEmpty ? null : dropdownvalu,
                      items: year.map((String year) {
                        return DropdownMenuItem(child: Text(year), value: year);
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
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              SizedBox(
                width: 40,
              ),
              Text("To"),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Container(
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12,
                          offset: Offset(0.0, 0.0),
                          blurRadius: 1.2),
                    ],
                    borderRadius: BorderRadius.circular(10)),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                    icon: Icon(Icons.keyboard_arrow_down_rounded),
                    hint: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Month",style: TextStyle(fontSize: 10)),
                    ),
                      value: dropdownvalue.isEmpty?null:dropdownvalue,
                      items: item.map((String item) {
                        return DropdownMenuItem(child: Text(item), value: item);
                      }).toList(),
                      onChanged: (String? newvalue) {
                        setState(() {
                          dropdownvalue = newvalue!;
                        });
                      }),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12,
                          offset: Offset(0.0, 0.0),
                          blurRadius: 1.2),
                    ],
                    borderRadius: BorderRadius.circular(10)),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                      icon: Icon(Icons.keyboard_arrow_down_rounded),
                      hint: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("year",style: TextStyle(fontSize: 10)),
                      ),
                      value: dropdownvalu.isEmpty?null:dropdownvalu,
                      items: year.map((String year) {
                        return DropdownMenuItem(child: Text(year), value: year);
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
                  child: Text(
                    "skip",
                    style: TextStyle(color: Color(0XFF003C30)),
                  )),
              ElevatedButton(
                  onPressed: widget.onTab,
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size.fromHeight(40),
                    backgroundColor: const Color(0xFF003C30),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  child: Text(
                      style: TextStyle(color: Color(0xFFF1FA3F)), "Contiune")),
              SizedBox(
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
