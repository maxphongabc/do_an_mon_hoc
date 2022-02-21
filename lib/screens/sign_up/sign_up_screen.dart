import 'package:do_an_mon_hoc/components/controlles.dart';
import 'package:do_an_mon_hoc/components/custom_btn.dart';
import 'package:do_an_mon_hoc/constants.dart';
import 'package:flutter/material.dart';

class RegistrationWidget extends StatefulWidget{
  @override
  RegistrationWidgetState createState() => RegistrationWidgetState();
}

class RegistrationWidgetState extends State<RegistrationWidget> {
  final List<String> errors = [];
   void addError({String error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }
  void removeError({String error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }
  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(.5),
              blurRadius: 10,
            )
          ],
          borderRadius: BorderRadius.circular(20)
      ),
      child: Wrap(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 1.2,
                margin: EdgeInsets.only(top: 30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.grey.withOpacity(.3),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                  child: TextField(
                    controller: userController.email,
                    decoration: InputDecoration(
                        icon: Icon(Icons.email_outlined),
                        fillColor: Colors.white,
                        border: InputBorder.none,
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        hintText: "Email"),
                        onChanged: (value){
                          if(value.isNotEmpty){
                            removeError(error: kEmailNullError);
                          }
                          else if(emailValidatorRegExp.hasMatch(value)){
                            removeError(error: kInvalidEmailError);
                          }
                          return null;
                        },
                        // validator: (value){
                        //   if(value.isEmpty){
                        //     addError(error:kEmailNullError);
                        //     return "";
                        //   }
                        //   else if(emailValidatorRegExp.hasMatch(value)){
                        //     addError(error:kInvalidEmailError);
                        //     return "";
                        //   }
                        //   return null;
                        // },
                  ),
                ),
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 1.2,
                margin: EdgeInsets.only(top: 30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.grey.withOpacity(.3),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                  child: TextField(
                    obscureText: true,
                    controller: userController.password,
                    decoration: InputDecoration(
                        icon: Icon(Icons.lock),
                        fillColor: Colors.white,
                        border: InputBorder.none,
                        hintText: "Mật Khẩu"),
                    onChanged: (value){
                      if (value.isNotEmpty){
                        removeError(error: kPassNullError);
                      }else if(value.length >= 8){
                        removeError(error: kShortPassError);
                      }
                      userController.password=value as TextEditingController;
                    },
                    // validator:(value){
                    //   if (value.isEmpty) {
                    //      addError(error: kPassNullError);
                    //      return "";                     
                    //   }else if(value.length < 8){
                    //     addError(error: kShortPassError);
                    //     return "";
                    //   }
                    //   return null;
                    // }
                  ),
                ),
              ),
            ],
          ),
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 1.2,
                margin: EdgeInsets.only(top: 30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.grey.withOpacity(.3),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                  child: TextField(
                    obscureText: true,
                    controller: userController.password2,
                    decoration: InputDecoration(
                        icon: Icon(Icons.lock),
                        fillColor: Colors.white,
                        border: InputBorder.none,
                        hintText: "Nhập lại mật Khẩu"),                      
                        onChanged: (value){
                          if (value.isNotEmpty){
                            removeError(error: kPassNullError);
                          }else if(value.isNotEmpty && userController.password == userController.password2){
                            removeError(error: kMatchPassError);
                          }
                          userController.password2= value as TextEditingController;
                        },
                        // validator:(value){
                        //   if (value.isEmpty){
                        //     addError(error: kPassNullError);
                        //     return "";
                        //   }else if((userController.password != value)){
                        //     addError(error: kMatchPassError);
                        //     return "";
                        //   }
                        //   return null;
                        // }
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: CustomButton(
                text: "Đăng kí", onTap: (){
                    userController.signUp();
                }),
          )
        ],
      ),
    );
  }
}

