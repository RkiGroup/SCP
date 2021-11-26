import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:smart_car_parking/Widgets/TileButton.dart';
import 'package:smart_car_parking/Widgets/action_button.dart';
import 'package:smart_car_parking/Widgets/app_bar.dart';
import 'package:smart_car_parking/constants.dart';
import 'package:smart_car_parking/size_config.dart';

class CarCareServices extends StatefulWidget {
  final String? title;
  CarCareServices({@required this.title});

  @override
  _CarCareServicesState createState() => _CarCareServicesState();
}

class _CarCareServicesState extends State<CarCareServices> {
  ///
  String date = DateFormat("dd-MM-yyyy").format(DateTime.now());
  String dateTime = DateFormat("h:mma").format(DateTime.now());

  ///
  final List servicesList = [
    'Washout',
    'Undercarriage',
    'Wash the furniture',
    'Covering Rom',
    'Coated with cenamic',
    'Making shells',
    'Other'
  ];

  ///
  final List paymentList = ['Cash', 'Momo', 'VNPay'];

  ///
  final List locationList = ['Location 1', 'Location 2', 'Location 3'];

  ////
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: customAppBar(widget.title, true),
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
                    imageWidget(),
                    servicesField(),
                    howManyField(),
                    paymentField(),
                    locationField(),
                    timeField(),
                    Row(
                      children: [
                        CustomButton(
                          text: 'Choose Photo',
                          onPressed: () {},
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Text('Image Selected.'),
                        )
                      ],
                    )
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

  imageWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 120,
          height: 80,
          color: fillColor,
          child: Image.asset(
            'assets/images/product/car2.jpg',
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
        )
      ],
    );
  }

  servicesField() {
    return Padding(
      padding: EdgeInsets.only(top: 20, bottom: 15),
      child: DropdownButtonFormField(
        isExpanded: true,
        onChanged: (value) {},
        validator: (value) {
          if (value == null) {
            return "Please select a service";
          }
        },
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          labelText: 'Serivces',
          hintText: 'Serivces',
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
    );
  }

  howManyField() {
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
          labelText: 'How Many',
          hintText: 'How Many',
          filled: true,
          fillColor: fillColor,
          enabledBorder: border,
          focusedBorder: border,
        ),
      ),
    );
  }

  paymentField() {
    return Padding(
      padding: EdgeInsets.only(bottom: 15),
      child: DropdownButtonFormField(
        isExpanded: true,
        onChanged: (value) {},
        validator: (value) {
          if (value == null) {
            return "Please select a service";
          }
        },
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          labelText: 'Payment',
          hintText: 'Payment',
          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          filled: true,
          fillColor: fillColor,
          enabledBorder: border,
        ),
        items: paymentList.map((e) {
          return DropdownMenuItem(
            child: Text(e),
            value: e,
          );
        }).toList(),
      ),
    );
  }

  locationField() {
    return Padding(
      padding: EdgeInsets.only(bottom: 15),
      child: DropdownButtonFormField(
        isExpanded: true,
        onChanged: (value) {},
        validator: (value) {
          if (value == null) {
            return "Please select a service";
          }
        },
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          labelText: 'Location',
          hintText: 'Location',
          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          filled: true,
          fillColor: fillColor,
          enabledBorder: border,
        ),
        items: locationList.map((e) {
          return DropdownMenuItem(
            child: Text(e),
            value: e,
          );
        }).toList(),
      ),
    );
  }

  timeField() {
    return Padding(
      padding: EdgeInsets.only(bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Time: ',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic),
          ),
          Container(
            width: getProportionateScreenWidth(90),
            height: 57,
            child: TextFormField(
              initialValue: dateTime,
              onFieldSubmitted: (value) {},
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                filled: true,
                fillColor: fillColor,
                enabledBorder: border,
              ),
            ),
          ),
          Container(
            width: getProportionateScreenWidth(180),
            height: 57,
            child: TextFormField(
              initialValue: date,
              onFieldSubmitted: (value) {},
              decoration: InputDecoration(
                filled: true,
                fillColor: fillColor,
                enabledBorder: border,
              ),
            ),
          )
        ],
      ),
    );
  }
}
