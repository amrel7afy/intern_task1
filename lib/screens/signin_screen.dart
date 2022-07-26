import 'dart:async';

import 'package:flutter/material.dart';
import 'package:job_project/shared/styles/TextStyles.dart';



class SignInScreen extends StatefulWidget {
  const SignInScreen({Key key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Container(
          margin: const EdgeInsets.all(10),
          clipBehavior:Clip.antiAliasWithSaveLayer,
          decoration: BoxDecoration(

            borderRadius: BorderRadius.circular(10)
          ),
          child: MaterialButton(
            onPressed: (){},
            color: Colors.blue,
            child: const Icon(Icons.arrow_back_ios,color: Colors.white,),
          ),
        ),
      ),
      body:  SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //LOGO
            Center(
              child: Container(
                width: width*0.85,
                height: height*0.3,
                decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/img.png'),fit: BoxFit.fill)
                ),
              ),
            ),
            //Text
            Text('Welcome Back!',style: text1,),
           const SizedBox(height: 10,),
            Text('Login to your account',style: Theme.of(context).textTheme.bodyText1,),
            FormFieldBuilder(prefixIcon: Icon(Icons.email_outlined,color: Colors.blue,),hint: 'Email ID'),
            FormFieldBuilder(prefixIcon:Icon(Icons.key,color: Colors.blue),hint: 'Password',suffixIcon: Icon(Icons.remove_red_eye_outlined,color: Colors.blue,),),

            SizedBox(height: 60,),
            InkWell(
              onTap: (){},
              child: Container(
                width: width*0.8,
                height: 40,
                child: Center(child: Text('Send OTP',style: Theme.of(context).textTheme.headline6.copyWith(color: Colors.white),)),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20)
                ),
              ),
            ),
         SizedBox(height: 60,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [const Text('Dont have an account? '),TextButton(onPressed: (){}, child: Text('Sign Up here'))],
            )


          ],
        ),
      ),

    );
  }
}

class FormFieldBuilder extends StatelessWidget {
  Icon prefixIcon;
  String hint;
  Icon suffixIcon;

  FormFieldBuilder({@required this.prefixIcon,@required this.hint,this.suffixIcon});
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return  Container(
      width: width,
      height: 70,
      margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
      child: Stack(
        children:  [
          Align(alignment: AlignmentDirectional.centerEnd,
            child: Container(
              padding: const EdgeInsets.only(left: 70),
              width: width*0.9,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey[300]),
                  borderRadius: BorderRadius.circular(30)
              ),
              height: 50,
              child:TextFormField(
                decoration:  InputDecoration(
                  suffixIcon: suffixIcon,
                    hintText:'${hint}' ,
                    border: InputBorder.none
                ),
              )
              ,
            ),),
          Align(
            child: Container(
              width: 60,
              height: 60,
              decoration:  BoxDecoration(

                  shape: BoxShape.circle,
                  color:Colors.white,
                  boxShadow: [BoxShadow(
                      color: Colors.grey[400],spreadRadius: 0.1,blurRadius: 2
                  )
                  ]
              ),
              child:  Center(
                child:  prefixIcon,
              )
            ),alignment: AlignmentDirectional.centerStart,
          ),
        ],
      ),);
  }
}

