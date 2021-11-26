import 'package:flutter/material.dart';
import 'package:smart_car_parking/Widgets/action_button.dart';
import 'package:smart_car_parking/Widgets/app_bar.dart';
import 'package:smart_car_parking/constants.dart';
import 'package:smart_car_parking/size_config.dart';

class QRCode extends StatefulWidget {
  @override
  _QRCodeState createState() => _QRCodeState();
}

class _QRCodeState extends State<QRCode> {
  final List servicesList = [
    'Washout',
    'Undercarriage',
    'Wash the furniture',
    'Covering Rom',
    'Coated with cenamic',
    'Making shells',
    'Other'
  ];
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: customAppBar('MV QR Code', true),
      backgroundColor: kPrimaryColor,
      body: Stack(
        children: [
          tabBar(),
          customBody(),
        ],
      ),
    );
  }

  tabBar() {
    return Container(
      width: SizeConfig.screenWidth,
      height: customHeight,
    );
  }

  customBody() {
    return Container(
      margin: EdgeInsets.only(top: customPadding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.elliptical(40, 40)),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          children: [
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    vehicalListField(),
                    photoContainer(),
                    addButton()
                  ]),
            )),
            ActionButton(
                text: 'REGISTER',
                onPressed: () {},
                icon: Icons.app_registration_outlined)
          ],
        ),
      ),
    );
  }

  vehicalListField() {
    return Padding(
      padding: EdgeInsets.only(top: 20, bottom: 15),
      child: Row(
        children: [
          Container(
            width: getProportionateScreenWidth(270),
            child: DropdownButtonFormField(
              isExpanded: true,
              onChanged: (value) {},
              validator: (value) {
                if (value == null) {
                  return "Please select a vehical";
                }
              },
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                floatingLabelBehavior: FloatingLabelBehavior.auto,
                labelText: 'Vehical List',
                hintText: 'Vehical List',
                filled: true,
                fillColor: fillColor,
                enabledBorder: border,
              ),
              items: servicesList.map((e) {
                return DropdownMenuItem(
                  child: Text(e),
                  value: e,
                );
              }).toList(),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Container(
            decoration: BoxDecoration(
                color: fillColor, borderRadius: BorderRadius.circular(50)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.delete_outline,
                color: Colors.red,
                size: 24,
              ),
            ),
          ),
        ],
      ),
    );
  }

  photoContainer() {
    return Padding(
      padding: EdgeInsets.only(top: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          liscensePhotoWidget(),
        ],
      ),
    );
  }

  liscensePhotoWidget() {
    return Stack(
      children: [
        Container(
          width: 200,
          height: 170,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
            ),
            width: 200,
            height: 150,
            child: Icon(
              Icons.camera_alt,
              color: Colors.grey[800],
            ),
          ),
        ),
      ],
    );
  }

  addButton() {
    return Padding(
      padding: EdgeInsets.only(right: 50),
      child: Row(
        children: [
          Spacer(),
          Container(
            decoration: BoxDecoration(
                color: fillColor, borderRadius: BorderRadius.circular(50)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.add,
                color: kPrimaryColor,
                size: 24,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
