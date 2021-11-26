import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_car_parking/Screens/pages/Home%20Page/components/Notification.dart';
import 'package:smart_car_parking/Screens/pages/Home%20Page/components/vehical_options.dart';
import 'package:smart_car_parking/Screens/pages/ServicesPage/components/Utilities_Card.dart';
import 'package:smart_car_parking/Widgets/app_bar.dart';
import 'package:smart_car_parking/constants.dart';
import 'package:smart_car_parking/size_config.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String date = DateFormat("MM-yyyy").format(DateTime.now());
  String dateTime = DateFormat("h:mma dd-MM-yyyy").format(DateTime.now());
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: customAppBar('Home', false),
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
        child: ListTile(
            title: Text(
              'Xin Chao, SPM!',
              style: GoogleFonts.lobster(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            trailing: Badge(
              position: BadgePosition.topEnd(end: -5),
              elevation: 0,
              badgeContent: Text(
                '2',
                style: TextStyle(color: kWhiteColor, fontSize: 10),
              ),
              child: Icon(
                Icons.notifications,
                size: 32,
                color: Colors.yellow,
              ),
            )),
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
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              totalInvoice(),
              Divider(),
              SizedBox(height: 8),
              latestNotifications(),
              banners(),
              SizedBox(height: 8),
              Text(
                'Vehical Care Services',
                style: GoogleFonts.lobster(
                    fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              vehicalCareServices(),
              SizedBox(
                height: 10,
              ),
              Text(
                'Utilities',
                style: GoogleFonts.lobster(
                    fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              utilities()
            ],
          ),
        ),
      ),
    );
  }

  totalInvoice() {
    return Row(
      children: [
        Container(
          width: getProportionateScreenWidth(280),
          child: Text('Total invoice this month $date',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic)),
        ),
        Spacer(),
        Text('\$10',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        Icon(
          Icons.arrow_forward_ios,
          size: 18,
          color: Colors.black54,
        )
      ],
    );
  }

  latestNotifications() {
    return Container(
        height: getProportionateScreenHeight(150),
        child: ListView.builder(
            itemCount: 2,
            itemBuilder: (context, index) {
              return NotificationWidget(
                  title:
                      'This is a demo notification - This is a demo notification',
                  subtitle: dateTime);
            }));
  }

  banners() {
    return Container(
      height: getProportionateScreenHeight(150),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.count(
            crossAxisCount: 4,
            mainAxisSpacing: 10,
            childAspectRatio: 0.9,
            children: [
              VehicalOptionCard(imagePath: '', title: 'Card 1'),
              VehicalOptionCard(imagePath: '', title: 'Card 2'),
              VehicalOptionCard(imagePath: '', title: 'Card 3'),
              VehicalOptionCard(imagePath: '', title: 'Card 4'),
              VehicalOptionCard(imagePath: '', title: 'Card 5'),
              VehicalOptionCard(imagePath: '', title: 'Card 6'),
            ],
          ),
        ),
      ),
    );
  }

  vehicalCareServices() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          VehicalOptionCard(imagePath: '', title: 'Bike Care'),
          VehicalOptionCard(imagePath: '', title: 'Car Care'),
          VehicalOptionCard(imagePath: '', title: 'Bike Care'),
          VehicalOptionCard(imagePath: '', title: 'Car Care'),
          VehicalOptionCard(imagePath: '', title: 'Bike Care'),
          VehicalOptionCard(imagePath: '', title: 'Car Care'),
        ],
      ),
    );
  }

  utilities() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          UtilitiesCard(imagePath: '', title: 'Bike Care'),
          UtilitiesCard(imagePath: '', title: 'Car Care'),
          UtilitiesCard(imagePath: '', title: 'Bike Care'),
          UtilitiesCard(imagePath: '', title: 'Car Care'),
        ],
      ),
    );
  }
}
