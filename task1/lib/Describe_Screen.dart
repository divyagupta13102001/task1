import 'package:flutter/material.dart';
import 'Date_Screen.dart';
// import 'package:repair_duniya/pop_Up_Screen/Date_Screen.dart';

void Describe_sheet(context) {
  final TextEditingController _Textcontroller = TextEditingController();
  showModalBottomSheet(
      context: context,
      builder: (context) => Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10))),
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 45),
                child: Center(
                    child: Text(
                  "Describe Repair",
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.w500),
                )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: TextFormField(
                  minLines: 8,
                  maxLines: 200,
                  controller: _Textcontroller,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    hintMaxLines: 2,
                    hintText: 'My Air Conditioner is not working',
                    hintStyle:
                        TextStyle(color: Colors.grey.shade400, fontSize: 22),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(width: 1, color: Colors.black26),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)),
                      borderSide: BorderSide(width: 1, color: Colors.black26),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 10),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: IconButton(
                      icon: Image.asset('assets/right-arrow.png'),
                      color: Colors.black,
                      onPressed: () {
                        Date_sheet(context);
                      }),
                ),
              )
            ]),
          ));
}
