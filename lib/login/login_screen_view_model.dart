// import 'dart:convert';


// import 'package:flutter/material.dart';


// class LoginScreenViewModel extends BaseViewModel {
//   TextEditingController emailController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();

//   CustomAuthResult customAuthResult = CustomAuthResult();
//   final _sharedPrefs = SharedPrefService();
//   AppUser appUser = AppUser();
//   final _authService = locator<AuthService>();
//   CustomAuthResult? authResult;
//   bool isShowPassword = false;

//   bool isLoading = false;

//   Future<CustomAuthResult?> loginWithEmailPassword() async {
//     setState(ViewState.busy);
//     authResult = await _authService.loginWithEmailPassword(
//         email: appUser.email, password: appUser.password);
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     final userData = json.encode(
//       {'userUid': authResult!.user!.uid, 'userEmail': authResult!.user!.email},
//     );
//     prefs.setString('logedIn', userData);
//     print(" the user fullname is${appUser.fullName}");
//     print(" the user password is${appUser.password}");

//     return authResult;
//   }

//   togglePassword() {
//     isShowPassword = !isShowPassword;
//     notifyListeners();
//   }
// }
