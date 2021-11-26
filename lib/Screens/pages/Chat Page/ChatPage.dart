import 'package:flutter/material.dart';
import 'package:smart_car_parking/Screens/pages/Invoice%20Page/components/TabButton.dart';
import 'package:smart_car_parking/Widgets/app_bar.dart';
import 'package:smart_car_parking/constants.dart';
import 'package:smart_car_parking/size_config.dart';

class ChatPage extends StatefulWidget {
  ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
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
      appBar: customAppBar('Chat', false),
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
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TabButton(
            text: "Ongoing",
            pageNumber: 0,
            selectedPage: _selectedPage,
            onPressed: () {
              _changePage(0);
            },
          ),
          TabButton(
            text: "Completed",
            pageNumber: 1,
            selectedPage: _selectedPage,
            onPressed: () {
              _changePage(1);
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
        ],
      ),
    );
  }
}
