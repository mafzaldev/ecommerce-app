import 'package:ecommerce_app/widgets/input_field.dart';
import 'package:ecommerce_app/widgets/page_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../util/responsive.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    TextEditingController username = TextEditingController();
    TextEditingController password = TextEditingController();
    return Column(
      children: <Widget>[
        Image.asset('assets/images/logo.jpg') ,
        SizedBox(
              height: SizeConfig.verticalBlockSize! * 1.5),
        const PageHeading("Sign Up"),
        SizedBox(
              height: SizeConfig.verticalBlockSize! * 2),
        InputField(controller: username, labelHint: "Username"),
        SizedBox(
              height: SizeConfig.verticalBlockSize! * 1),
        InputField(controller: password, labelHint: "Password"),
        SizedBox(
              height: SizeConfig.verticalBlockSize! * 1),
      ],
    );
  }
}