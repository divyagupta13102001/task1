import 'package:flutter/material.dart';
import 'Describe_Screen.dart';
import 'Install_Screen.dart';
import 'ac.dart';
// import 'package:repair_duniya/pop_Up_Screen/Show_Date.dart';
// import 'package:repair_duniya/pop_Up_Screen/address.dart';

void Date_sheet(context) {
  final TextEditingController _Textcontroller = TextEditingController();
  DateTime _selectedDate = DateTime.now();

  showModalBottomSheet(
      context: context,
      builder: (context) => Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10))),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(
                  "Date",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size.fromHeight(40),
                    primary: Colors.grey.shade300,
                  ),
                  child: FittedBox(
                    child: Text(
                      "Date",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                  onPressed: () {
                    _showDatePicker(context);
                  },
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  "Select Timing",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: SizedBox(
                    height: 50,
                    width: 110,
                    child: OutlinedButton(
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            side: BorderSide(width: 10.0, color: Colors.black),
                          )),
                          overlayColor:
                              MaterialStateProperty.resolveWith<Color?>(
                            (Set<MaterialState> states) {
                              if (states.contains(MaterialState.hovered))
                                return Colors.blue; //<-- SEE HERE
                              return Colors
                                  .white; // Defer to the widget's default.
                            },
                          ),
                        ),
                        onPressed: () {
                          ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.blue),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              side:
                                  BorderSide(width: 10.0, color: Colors.black),
                            )),
                          );
                        },
                        child: Text(
                          "Morning",
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: SizedBox(
                    height: 50,
                    width: 110,
                    child: OutlinedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                          shape:
                              MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            side: BorderSide(width: 10.0, color: Colors.black),
                          )),
                        ),
                        onPressed: () {
                          ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.blue),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              side:
                                  BorderSide(width: 10.0, color: Colors.black),
                            )),
                          );
                        },
                        child: Text(
                          "Afternoon",
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: SizedBox(
                    height: 50,
                    width: 110,
                    child: OutlinedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                          shape:
                              MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            side: BorderSide(width: 10.0, color: Colors.black),
                          )),
                        ),
                        onPressed: () {
                          ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.blue),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              side:
                                  BorderSide(width: 10.0, color: Colors.black),
                            )),
                          );
                        },
                        child: Text(
                          "Evening",
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        )),
                  ),
                ),
              ]),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Center(
                  child: Text(
                    "Our Expert will arrive on your appointment Day and Time",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.grey.shade600,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: IconButton(
                    icon: Image.asset('assets/right-arrow.png'),
                    color: Colors.black,
                    onPressed: () {
                      // Address_sheet(context);
                    },
                  ),
                ),
              )
            ]),
          ));
}

void _showDatePicker(context) {
  showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(DateTime.now().month),
      lastDate: DateTime.now().add(Duration(days: 2)));
  //     .then((pickedDate) {
  //   if (pickedDate == null) {
  //     return;
  //   }
  //   setState(() {
  //     _selectedDate = pickedDate;
  //   });
  // });
}
