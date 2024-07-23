import 'package:contact_task/models/phone_model.dart';
import 'package:flutter/cupertino.dart';

class PhoneDietal extends StatelessWidget {
  final PhoneModel phoneModel;

  const PhoneDietal({
    super.key,
    required this.phoneModel,
  });

  @override
  Widget build(BuildContext context) {
    return Visibility(
        visible: phoneModel.name.isNotEmpty && phoneModel.phone.isNotEmpty,
        child: Container(
          padding: EdgeInsets.all(18),
          margin: EdgeInsets.symmetric(vertical: 10),
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: CupertinoColors.white,
              borderRadius: BorderRadius.circular(20)),
          child: Column(
            children: [
              Text(
                "name:${phoneModel.name}",
                style: TextStyle(fontSize: 19),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "phone:${phoneModel.phone}",
                style: TextStyle(fontSize: 19),
              )
            ],
          ),
        ));
  }
}
