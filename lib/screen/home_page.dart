import 'package:flutter/material.dart';
import 'package:u2/helper/custom_button.dart';
import 'package:u2/screen/admin_log_in_page.dart';
import 'package:u2/utills/all_colors.dart';
import 'package:u2/utills/all_size.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('USA'),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: AllColors.whiteColor,
        child: Column(
          children: [
            SizedBox(height: 60,),
            InkWell(
              onTap: (){
                Navigator.push(context,
                MaterialPageRoute(builder: (context)=>LogInPage()));
              },
              child: CustomButton(
                  btnHight: AllSize.btnHight,
                  btnwidth: AllSize.btnWidth,
                  btnColor: AllColors.btnColor,
                  btnText: 'Admin LogIn',
                  btnTextColor: AllColors.btnTextColor),
            ),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}
