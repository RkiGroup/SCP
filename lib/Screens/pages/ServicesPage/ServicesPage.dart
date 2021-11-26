import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_car_parking/Screens/pages/ServicesPage/Car%20Care%20Services/Car%20Care%20Services.dart';
import 'package:smart_car_parking/Screens/pages/ServicesPage/components/Utilities_Card.dart';
import 'package:smart_car_parking/Widgets/Navigator.dart';
import 'package:smart_car_parking/Widgets/app_bar.dart';
import 'package:smart_car_parking/constants.dart';
import 'package:smart_car_parking/size_config.dart';
import 'Bike Care Services/Bike Care Services.dart';

class ServicesPage extends StatefulWidget {
  ServicesPage({Key? key}) : super(key: key);

  @override
  _ServicesPageState createState() => _ServicesPageState();
}

class _ServicesPageState extends State<ServicesPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: customAppBar('Services', false),
      backgroundColor: kPrimaryColor,
      body: Stack(
        children: [tabBar(), customBody()],
      ),
    );
  }

  tabBar() {
    return Container(
      width: SizeConfig.screenWidth,
      height: customHeight,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Text(
          'Free Utilities',
          style: GoogleFonts.lobster(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
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
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              utilities(),
              Text(
                'Services',
                style: GoogleFonts.lobster(
                    fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              services()
            ],
          ),
        ),
      ),
    );
  }

  utilities() {
    return SingleChildScrollView(
      child: Container(
        height: getProportionateScreenHeight(250),
        child: GridView.count(
          crossAxisCount: 3,
          children: [
            UtilitiesCard(
                imagePath: 'assets/images/product/car1.jpg', title: 'Bumping'),
            UtilitiesCard(
                imagePath: 'assets/images/product/car2.jpg', title: 'Charging'),
            UtilitiesCard(
                imagePath: 'assets/images/product/car3.jpg',
                title: 'Wheel Chair'),
            UtilitiesCard(
                imagePath: 'assets/images/product/laptop1.jpg',
                title: 'Helmet'),
            UtilitiesCard(
                imagePath: 'assets/images/product/phone1.jpg',
                title: 'Umberlla'),
          ],
        ),
      ),
    );
  }

  services() {
    return SingleChildScrollView(
      child: Container(
        height: getProportionateScreenHeight(400),
        child: GridView.count(
          crossAxisCount: 3,
          children: [
            UtilitiesCard(
              imagePath: 'assets/images/product/bike1.jpg',
              title: 'Motobike Care',
              onPressed: () {
                push(
                    context: context,
                    page: BikeCareServices(title: 'Bike Care Services'));
              },
            ),
            UtilitiesCard(
              imagePath: 'assets/images/product/car2.jpg',
              title: 'Car Care',
              onPressed: () {
                push(
                    context: context,
                    page: CarCareServices(title: 'Car Care Services'));
              },
            ),
          ],
        ),
      ),
    );
  }
}
