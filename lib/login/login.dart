import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:strong_jhon_ui/bottomnavigationbar/bottomnavigation.dart';
import 'package:strong_jhon_ui/constants/colors.dart';
import 'package:strong_jhon_ui/constants/styles.dart';
import 'package:strong_jhon_ui/dashboard/dashboard.dart';
import 'package:strong_jhon_ui/widgets/customtxtfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  int _radioValue = 0;
  final formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: blackcolor,
      key: _scaffoldKey,
      // body: Consumer<LoginScreenViewModel>(builder: (context, model, child) {
      //   return
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Form(
          key: formKey,
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  height: 50.h,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Sign in",
                    style: whitemediumstyle,
                  ),
                ),
                SizedBox(
                  height: 50.h,
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: whitecolor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15))),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 20),
                        child: Text(
                          "SkillzUPP-pos Welcome You!",
                          style: bold16yellowtxtstyle,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 0),
                        child: Text(
                          "Continue to sign in!",
                          style: bold18blacktxtstyle,
                        ),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 24, vertical: 5),
                            child: Text(
                              "Email",
                              style: normalblack14txtstyle,
                            ),
                          ),
                          CustomTextField(
                            width: MediaQuery.of(context).size.width,
                            // controller: model.emailController,
                            lableText: 'SkillzUPP-pos@gmail.com',
                            validator: (value) {
                              if (value.isEmpty) {
                                return "Please enter a valid email address.";
                              } else {
                                return null;
                              }
                            },
                            // onChanged: (value) => model.appUser.email = value,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 27.h,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 24, vertical: 5),
                            child: Text(
                              "Password",
                              style: normalblack14txtstyle,
                            ),
                          ),
                          CustomTextFieldPassword(
                              width: MediaQuery.of(context).size.width,
                              // controller: model.passwordController,
                              // isObscureText: model.isShowPassword,
                              isPassword: true,
                              lableText: 'Password',
                              onIconPressed: () {
                                // model.togglePassword();
                              },
                              validator: (val) =>
                                  val.length == 0 ? "fill the field" : null,
                              onChanged: (value) {
                                print(value);
                                // model.appUser.password = value;
                              }),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Radio(
                                hoverColor: blackcolor,
                                value: 1,
                                toggleable: true,
                                activeColor: yellowcolor,
                                groupValue: _radioValue,
                                onChanged: (value) {
                                  setState(() {
                                    value = _radioValue;
                                  });
                                }),
                            Text(
                              "Remember me",
                              style: normalblack14txtstyle,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 27.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24, vertical: 20),
                        child: MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          minWidth: MediaQuery.of(context).size.width,
                          height: 50.h,
                          elevation: 10,
                          color: Colors.yellow,
                          onPressed: () {
                            Get.to(() => Bottomnavigation());
                          },
                          child: Text(
                            "SIGN IN",
                            style: bold16blacktxtstyle,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
