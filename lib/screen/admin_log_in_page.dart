import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:u2/helper/custom_button.dart';
import 'package:u2/helper/custom_text_form_fild.dart';
import 'package:u2/screen/data_update.dart';
import 'package:u2/utills/all_colors.dart';
import 'package:u2/utills/all_size.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  _LogInPageState createState() => _LogInPageState();
}

TextEditingController _emailController = TextEditingController();
TextEditingController _passController = TextEditingController();
final GlobalKey<FormState> _formKey = GlobalKey();
final _auth = FirebaseAuth.instance;

class _LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 80,),
              Icon(Icons.tag_faces_rounded,
                size: 150,),
              SizedBox(height: 20,),
              CustomTextFormFild(
                  emailController: _emailController,
                  levelText: "Email",
                  hintText: 'Enter Your Email',
                  obscurValu: false),
              SizedBox(height: 20,),
              CustomTextFormFild(
                  emailController: _passController,
                  levelText: "Password",
                  hintText: 'Enter Your Password',
                  obscurValu: true),
              SizedBox(height: 20,),
              InkWell(
                onTap: (){

                },
                child: CustomButton(
                    btnHight: AllSize.btnHight,
                    btnwidth: AllSize.btnWidth,
                    btnColor: AllColors.btnColor,
                    btnText: 'Log In',
                    btnTextColor: AllColors.btnTextColor),
              ),
              SizedBox(height: 20,),
              SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}

void singIn (String email, String password, context) async {
  if (_formKey.currentState!.validate()){
    await _auth.signInWithEmailAndPassword(email: email, password: password).then((value) => {
      Fluttertoast.showToast(msg: "Login Successful!"),
    Navigator.push(context,
    MaterialPageRoute(builder: (context)=>DataUpdate()))
    }).catchError((e){
      Fluttertoast.showToast(msg: e.message);
    });

  }

}