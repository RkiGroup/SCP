import 'package:flutter/material.dart';
import 'package:smart_car_parking/Widgets/app_bar.dart';
import 'package:smart_car_parking/constants.dart';
import 'package:smart_car_parking/size_config.dart';

import 'components/TabButton.dart';

class InvoicePage extends StatefulWidget {
  @override
  _InvoicePageState createState() => _InvoicePageState();
}

class _InvoicePageState extends State<InvoicePage> {
  int _selectedPage = 0;
  PageController? _pageController;

  void _changePage(int pageNum) {
    setState(() {
      _selectedPage = pageNum;
      _pageController!.animateToPage(
        pageNum,
        duration: Duration(milliseconds: 1000),
        curve: Curves.fastLinearToSlowEaseIn,
      );
    });
  }

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: customAppBar('Invoice', false),
      backgroundColor: kPrimaryColor,
      body: Stack(
        children: [tabBar(), customPageView()],
      ),
    );
  }

  tabBar() {
    return Container(
      width: SizeConfig.screenWidth,
      height: customHeight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TabButton(
            text: "Pending",
            pageNumber: 0,
            selectedPage: _selectedPage,
            onPressed: () {
              _changePage(0);
            },
          ),
          TabButton(
            text: "Invoices",
            pageNumber: 1,
            selectedPage: _selectedPage,
            onPressed: () {
              _changePage(1);
            },
          ),
          TabButton(
            text: "Payment History",
            pageNumber: 2,
            selectedPage: _selectedPage,
            onPressed: () {
              _changePage(2);
            },
          ),
        ],
      ),
    );
  }

  customPageView() {
    return Container(
      margin: EdgeInsets.only(top: customPadding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.elliptical(40, 40)),
      ),
      child: PageView(
        onPageChanged: (int page) {
          setState(() {
            _selectedPage = page;
          });
        },
        controller: _pageController,
        children: [
          Container(
            child: Center(
              child: Text("Page 1"),
            ),
          ),
          Container(
            child: Center(
              child: Text("Page 2"),
            ),
          ),
          Container(
            child: Center(
              child: Text("Page 3"),
            ),
          )
        ],
      ),
    );
  }
}
