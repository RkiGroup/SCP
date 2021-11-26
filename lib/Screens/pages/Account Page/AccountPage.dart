import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smart_car_parking/Screens/pages/Account%20Page/Register%20Vehical/Register%20Vehical.dart';
import 'package:smart_car_parking/Widgets/Navigator.dart';
import 'package:smart_car_parking/Widgets/Profile_Card.dart';
import 'package:smart_car_parking/Widgets/TileButton.dart';

import '../../../constants.dart';

class AccountPage extends StatefulWidget {
  AccountPage({Key? key}) : super(key: key);

  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: kBackgroundColor,
        body: Stack(
          children: [
            Container(
              width: size.width,
              height: size.height * .27,
              color: kPrimaryColor,
            ),
            SafeArea(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 60),
                      child: Text(
                        'ACCOUNT',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(height: 30),
                    ProfileCard(),
                    SizedBox(
                      height: 20,
                    ),
                    Expanded(
                        child: ListView(
                      children: [
                        TileButton(
                          icon: FaIcon(FontAwesomeIcons.car),
                          onPressed: () {
                            push(context: context, page: RegisterVehical());
                          },
                          text: 'Vehical List',
                        ),
                        Divider(),
                        TileButton(
                          icon: FaIcon(Icons.insert_drive_file_outlined),
                          onPressed: () {},
                          text: 'Invoice',
                        ),
                        Divider(),
                        TileButton(
                          icon: Icon(Icons.tv),
                          onPressed: () {},
                          text: 'News and Notifications',
                        ),
                        Divider(),
                        TileButton(
                          icon: FaIcon(Icons.payment_outlined),
                          onPressed: () async {},
                          text: 'Payment History',
                        ),
                        Divider(),
                        TileButton(
                          icon: FaIcon(Icons.design_services_outlined),
                          onPressed: () {},
                          text: 'Service History',
                        ),
                        Divider(),
                        TileButton(
                          icon: FaIcon(Icons.notifications_outlined),
                          onPressed: () {},
                          text: 'Recieve Notification',
                        ),
                        Divider(),
                        InkWell(
                          onTap: () async {},
                          child: ListTile(
                            leading: FaIcon(Icons.logout),
                            title: Text('Signout'),
                          ),
                        ),
                      ],
                    ))
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
