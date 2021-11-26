import 'dart:io';

import 'package:flutter/material.dart';
import 'package:smart_car_parking/Screens/pages/Account%20Page/QR%20Page/MvQRCode.dart';
import 'package:smart_car_parking/Widgets/Navigator.dart';
import 'package:smart_car_parking/Widgets/TileButton.dart';
import 'package:smart_car_parking/Widgets/action_button.dart';
import 'package:smart_car_parking/Widgets/app_bar.dart';
import 'package:smart_car_parking/constants.dart';
import 'package:smart_car_parking/size_config.dart';

class RegisterVehical extends StatefulWidget {
  @override
  _RegisterVehicalState createState() => _RegisterVehicalState();
}

class _RegisterVehicalState extends State<RegisterVehical> {
  File? liscensePhoto, cmndPhoto;
  int radioValue = 0;
  String vehicalValue = 'Car';
  void handleRadioValueChanged(int? value) {
    setState(() {
      radioValue = value!;
      if (radioValue == 0) {
        setState(() {
          vehicalValue = "Car";
        });
      } else if (radioValue == 1) {
        setState(() {
          vehicalValue = "Motor Bike";
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: customAppBar('Register Vechical', true),
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
                    choiceWidget(),
                    typeField(),
                    manufecturerField(),
                    colorField(),
                    ownerField(),
                    liscenseField(),
                    choosePhotoButtons(),
                    photoContainer()
                  ]),
            )),
            ActionButton(
                text: 'REGISTER',
                onPressed: () {
                  push(context: context, page: QRCode());
                },
                icon: Icons.app_registration_outlined)
          ],
        ),
      ),
    );
  }

  choiceWidget() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Radio(
            value: 0,
            groupValue: radioValue,
            onChanged: handleRadioValueChanged,
          ),
          Text(
            'Car',
            style: new TextStyle(fontSize: 16.0),
          ),
          Spacer(),
          Radio(
            value: 1,
            groupValue: radioValue,
            onChanged: handleRadioValueChanged,
          ),
          Text(
            'Moto Bike',
            style: new TextStyle(fontSize: 16.0),
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
    );
  }

  typeField() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15),
      child: TextFormField(
        onFieldSubmitted: (value) {},
        validator: (value) {
          if (value!.isEmpty || value == '') {
            return 'Please enter email';
          }
          return null;
        },
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          labelText: 'Type',
          hintText: 'Type',
          filled: true,
          fillColor: fillColor,
          enabledBorder: border,
          focusedBorder: border,
        ),
      ),
    );
  }

  manufecturerField() {
    return Padding(
      padding: EdgeInsets.only(bottom: 15),
      child: TextFormField(
        onFieldSubmitted: (value) {},
        validator: (value) {
          if (value!.isEmpty || value == '') {
            return 'Please enter email';
          }
          return null;
        },
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          labelText: 'Manufecturer',
          hintText: 'Manufecturer',
          filled: true,
          fillColor: fillColor,
          enabledBorder: border,
          focusedBorder: border,
        ),
      ),
    );
  }

  colorField() {
    return Padding(
      padding: EdgeInsets.only(bottom: 15),
      child: TextFormField(
        onFieldSubmitted: (value) {},
        validator: (value) {
          if (value!.isEmpty || value == '') {
            return 'Please enter email';
          }
          return null;
        },
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          labelText: 'Color',
          hintText: 'Color',
          filled: true,
          fillColor: fillColor,
          enabledBorder: border,
          focusedBorder: border,
        ),
      ),
    );
  }

  ownerField() {
    return Padding(
      padding: EdgeInsets.only(bottom: 15),
      child: TextFormField(
        onFieldSubmitted: (value) {},
        validator: (value) {
          if (value!.isEmpty || value == '') {
            return 'Please enter email';
          }
          return null;
        },
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          labelText: 'Owner',
          hintText: 'Owner',
          filled: true,
          fillColor: fillColor,
          enabledBorder: border,
          focusedBorder: border,
        ),
      ),
    );
  }

  liscenseField() {
    return Padding(
      padding: EdgeInsets.only(bottom: 15),
      child: TextFormField(
        onFieldSubmitted: (value) {},
        validator: (value) {
          if (value!.isEmpty || value == '') {
            return 'Please enter email';
          }
          return null;
        },
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          labelText: 'Liscense Plate',
          hintText: 'Liscense Plate',
          filled: true,
          fillColor: fillColor,
          enabledBorder: border,
          focusedBorder: border,
        ),
      ),
    );
  }

  choosePhotoButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CustomButton(
          text: 'Liscense Photo',
          onPressed: () {},
        ),
        CustomButton(
          text: 'CMND',
          onPressed: () {},
        ),
      ],
    );
  }

  photoContainer() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          liscensePhotoWidget(),
          cmndPhotoWidget(),
        ],
      ),
    );
  }

  liscensePhotoWidget() {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        color: kPrimaryColor,
        child: Padding(
          padding: EdgeInsets.all(1.5),
          child: Stack(
            children: [
              Container(
                width: 150,
                height: 100,
                child: liscensePhoto != null
                    ? ClipRRect(
                        child: Image.file(
                          liscensePhoto!,
                          width: 400,
                          height: 200,
                          fit: BoxFit.cover,
                        ),
                      )
                    : Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                        ),
                        width: 400,
                        height: 200,
                        child: Icon(
                          Icons.camera_alt,
                          color: Colors.grey[800],
                        ),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  cmndPhotoWidget() {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        color: kPrimaryColor,
        child: Padding(
          padding: EdgeInsets.all(1.5),
          child: Stack(
            children: [
              Container(
                width: 150,
                height: 100,
                child: liscensePhoto != null
                    ? ClipRRect(
                        child: Image.file(
                          liscensePhoto!,
                          width: 400,
                          height: 200,
                          fit: BoxFit.cover,
                        ),
                      )
                    : Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                        ),
                        width: 400,
                        height: 200,
                        child: Icon(
                          Icons.camera_alt,
                          color: Colors.grey[800],
                        ),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
