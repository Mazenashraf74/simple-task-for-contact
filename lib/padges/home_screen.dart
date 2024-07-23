import 'package:contact_task/widget/my_button.dart';
import 'package:contact_task/widget/phone_deital.dart';
import 'package:contact_task/widget/text_form_filed.dart';
import 'package:flutter/material.dart';

import '../models/phone_model.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int curtind = -1;

  final List<PhoneModel> phonelist = [
    PhoneModel(),
    PhoneModel(),
    PhoneModel(),
    PhoneModel(),
    PhoneModel(),
    PhoneModel(),
  ];

  final TextEditingController namecont = TextEditingController();

  final TextEditingController phoncont = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Center(
              child: Text(
            "Contacts screen",
            style: TextStyle(fontSize: 25),
          )),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                MyTextFormfiled(
                  labelt: "enter your name",
                  sufficon: const Icon(Icons.edit),
                  controller: namecont,
                ),
                MyTextFormfiled(
                  labelt: "enter your number",
                  sufficon: const Icon(Icons.call),
                  controller: phoncont,
                ),
                Row(
                  children: [
                    Expanded(
                        child: Mybutton(
                      buttonName: "add",
                      mycolor: Colors.blueAccent,
                      onClic: () {
                        _Clicaddbutton();
                      },
                    )),
                    Expanded(
                      child: Mybutton(
                          buttonName: "Delet",
                          mycolor: Colors.red,
                          onClic: () {
                            _ClicDeletbutton();
                          }),
                    )
                  ],
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        PhoneDietal(
                          phoneModel: phonelist[0],
                        ),
                        PhoneDietal(
                          phoneModel: phonelist[1],
                        ),
                        PhoneDietal(
                          phoneModel: phonelist[2],
                        ),
                        PhoneDietal(
                          phoneModel: phonelist[3],
                        ),
                        PhoneDietal(
                          phoneModel: phonelist[4],
                        ),
                        PhoneDietal(
                          phoneModel: phonelist[5],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  _Clicaddbutton() {
    if (curtind == phonelist.length - 1) return;
    if (namecont.text.isNotEmpty && phoncont.text.isNotEmpty) {
      curtind++;
      phonelist[curtind].name = namecont.text;
      phonelist[curtind].phone = phoncont.text;
      print(phonelist);
      setState(() {});
    }
  }

  _ClicDeletbutton() {
    if (curtind == -1) return;
    phonelist[curtind].name = "";
    phonelist[curtind].phone = "";
    curtind--;

    setState(() {});
  }
}
