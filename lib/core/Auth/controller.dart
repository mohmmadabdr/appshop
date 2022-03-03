import 'package:appshop/modules/auth/Login/Login_Screen.dart';
import 'package:appshop/modules/home/components/gro_car_prod.dart';
import 'package:appshop/modules/home/home_screen.dart';
import 'package:appshop/shared/Widget/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../models/user_model/user_model.dart';
import '../service/firrstore.dart';

class Auth_controller extends GetxController {
  final GoogleSignIn? _googleSignIn = GoogleSignIn(scopes: ['email']);
  var isLoading = false.obs;
  var authState = ''.obs;
  String verificationID = '';
  var auth = FirebaseAuth.instance;
  String? email, password, lastname, phone, firstname;
  int selectedIndex = 0;

  void toggleDrawer() {
    print("Toggle drawer");
    zoomDrawerController.toggle?.call();
    update();
  }

  void onIntit() {
    super.onInit();
  }

  void onReady() {
    super.onReady();
  }

  void onClose() {
    super.onClose();
  }

  void googleSignInMethod() async {
    final GoogleSignInAccount? googleUser = await _googleSignIn!.signIn();
    print(googleUser);
    GoogleSignInAuthentication googleSignInAuthentication =
        await googleUser!.authentication;

    final AuthCredential credential = GoogleAuthProvider.credential(
      idToken: googleSignInAuthentication.idToken,
      accessToken: googleSignInAuthentication.accessToken,
    );

    await auth.signInWithCredential(credential).then((user) {
      saveUser(user);
      Get.offAll(Home_Screen());
    });
  }

  // void facebookSignInMethod() async {
  //   final LoginResult result = await FacebookAuth.instance.login();

  //   final OAuthCredential facebookAuthCredential =
  //       FacebookAuthProvider.credential(result.accessToken!.token);

  //   await auth.signInWithCredential(facebookAuthCredential).then((user) {
  //     Get.offAll(Home_Screen());
  //   });
  // }

  // verificationPhone() async {
  //   isLoading.value = true;
  //   await auth.verifyPhoneNumber(
  //       timeout: Duration(seconds: 50),
  //       phoneNumber: phone!,
  //       verificationCompleted: (AuthCredential authCredential) {
  //         if (auth.currentUser != null) {
  //           isLoading.value = false;
  //           authState.value = "login successfully";
  //         }
  //       },
  //       verificationFailed: (authException) {
  //         Get.snackbar("sms code info", "otp code hasn't been sent!!");
  //       },
  //       codeSent: (String id, [int? forceResent]) {
  //         isLoading.value = false;
  //         this.verificationID = id;
  //         authState.value = "login successfully";
  //       },
  //       codeAutoRetrievalTimeout: (String id) {
  //         this.verificationID = id;
  //       });
  // }

  // verfiyotp(String otp) async {
  //   isLoading.value = true;
  //   try {
  //     UserCredential userCredential = await auth.signInWithCredential(
  //         PhoneAuthProvider.credential(
  //             verificationId: this.verificationID, smsCode: otp));
  //     if (userCredential.user != null) {
  //       isLoading.value = false;
  //       Get.offAll(Home_Screen());
  //     }
  //   } on Exception catch (e) {
  //     Get.snackbar("otp info", "otp code is not correct !!");
  //   }
  // }

  void signInWithEmailAndPassword() async {
    isLoading.value = true;
    try {
      await auth.signInWithEmailAndPassword(email: email!, password: password!);
      isLoading.value = false;
      Get.offAll(Home_Screen());
      update();
    } catch (e) {
      Get.snackbar('Error login account', " Error Login account ");
    }
  }

  void nav() {
    switch (Controller.selectedIndex) {
      case 0:
        gru_car_prod();
        update();
        break;
      case 1:
        gru_car_prod_1();
        update();
        break;
        break;
    }
  }

  void siginup(Widget page) async {
    await auth.signOut();
    if (auth.currentUser == null) {
      zoomDrawerController.close?.call();
      Get.offAll(page);
    }
  }

  void createAccountWithEmailAndPassword() async {
    isLoading.value = true;
    try {
      await auth
          .createUserWithEmailAndPassword(email: email!, password: password!)
          .then((user) async {
        saveUser(user);
      });
      isLoading.value = false;
      Get.offAll(Home_Screen());
    } catch (e) {
      Get.snackbar('Error Create account', " Error Create account ");
    }
  }

  void saveUser(UserCredential user) async {
    await FireStoreUser().addUserToFireStore(UserModel(
      userId: user.user!.uid,
      email: user.user!.email,
      lastname: lastname == null ? user.user!.displayName : lastname,
      firstname: firstname == null ? user.user!.displayName : firstname,
      pic: '',
    ));
  }
}
