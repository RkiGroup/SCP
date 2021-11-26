import 'package:flutter/material.dart';
import 'package:smart_car_parking/Screens/Home/home.dart';
import 'package:smart_car_parking/Widgets/Custom_Error.dart';
import 'package:smart_car_parking/Widgets/Navigator.dart';
import 'package:smart_car_parking/Widgets/action_button.dart';
import 'package:smart_car_parking/constants.dart';
import 'package:smart_car_parking/size_config.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => new _LoginState();
}

class _LoginState extends State<Login> {
  // Controllers
  TextEditingController email = TextEditingController();

  //
  String? error;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          header(),
          Container(
              padding: EdgeInsets.only(
                  top: getProportionateScreenHeight(25),
                  left: getProportionateScreenWidth(20),
                  right: getProportionateScreenWidth(20)),
              child: Form(
                key: formKey,
                child: Column(
                  children: <Widget>[
                    emailField(),
                    SizedBox(height: getProportionateScreenHeight(30)),
                    passwordField(),
                    error != null
                        ? SizedBox(
                            height: getProportionateScreenHeight(20),
                          )
                        : Container(),
                    error != null ? MyError(error: error) : Container(),
                    SizedBox(height: getProportionateScreenHeight(40)),
                    loginButton(),
                    SizedBox(height: getProportionateScreenHeight(20)),
                  ],
                ),
              )),
          SizedBox(height: getProportionateScreenHeight(130)),
        ],
      ),
    ));
  }

  Widget header() {
    return Container(
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(getProportionateScreenWidth(19),
                getProportionateScreenHeight(100), 0, 0),
            child: Text('NH',
                style: TextStyle(fontSize: 80.0, fontWeight: FontWeight.bold)),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(getProportionateScreenWidth(155),
                getProportionateScreenHeight(105), 0, 0),
            child: Image.asset('assets/nhunited.jpg', width: 90, height: 90),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(getProportionateScreenWidth(20),
                getProportionateScreenHeight(170), 0, 0),
            child: Text('United',
                style: TextStyle(fontSize: 80.0, fontWeight: FontWeight.bold)),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(getProportionateScreenWidth(255),
                getProportionateScreenHeight(165), 0, 0),
            child: Text('.',
                style: TextStyle(
                    fontSize: 80.0,
                    fontWeight: FontWeight.bold,
                    color: kPrimaryColor)),
          )
        ],
      ),
    );
  }

  emailField() {
    return TextFormField(
      controller: email,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter email';
        }

        return null;
      },
      decoration: InputDecoration(
        labelText: 'EMAIL',
        hintText: 'Enter your email',
        suffixIcon: Icon(Icons.email_outlined),
      ),
    );
  }

  passwordField() {
    return TextFormField(
      controller: password,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter password';
        }

        return null;
      },
      decoration: InputDecoration(
        labelText: 'PASSWORD',
        hintText: 'Enter your password',
        suffixIcon: Icon(Icons.lock_outlined),
      ),
      obscureText: true,
    );
  }

  loginButton() {
    return ActionButton(
        text: 'LOGIN',
        onPressed: () {
          push(context: context, page: Home());
        },
        icon: Icons.login);
  }

  Future signinUser(context,
      {@required String? email, @required String? password}) async {}
}
