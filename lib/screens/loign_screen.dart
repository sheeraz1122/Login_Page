import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login/pallete.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [

          ShaderMask(
            shaderCallback: (rect) => LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.center,
              colors: [Colors.black,Colors.transparent],
            ).createShader(rect),
              blendMode: BlendMode.darken,
                      
                      child: Container(
                decoration: BoxDecoration(image: DecorationImage
                (image: AssetImage('assets/images/login_bg.png'),
                
                fit: BoxFit.cover, colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
                ),
                ),
               ),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
              body: Column(
                children: [
                  Flexible(child: Center(
                    child: Text('Food Byte ',style:TextStyle
                    (
                      color: Colors.white,fontSize: 60,fontWeight: FontWeight.bold
                    ),
                    ),
                  ),
                  ),
                
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TextInputField(icon:FontAwesomeIcons.envelope,
                    hint:'Email',
                    inputType: TextInputType.emailAddress,
                    inputAction: TextInputAction.next,
                    ),

                      PasswordInput(
                  icon:FontAwesomeIcons.lock,
                  hint: 'Password',
                  inputAction: TextInputAction.done,
              
                  
                ),
                  Text('Forget Password',
                  style: kBodyText,),
                  SizedBox(
                    height: 25,
                  ),
                  RoundedButton(buttonName: 'Login',
                  ),

                  SizedBox(
                    height: 25,
                  ),
                   
                  ],
                ),
                 Container(
                      child: Text('Create New Account',style: kBodyText,
                      ),
                    decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 1,
                    color:Kwhite))),
                    ),
                   SizedBox(
                    height: 20,
                  ),
                ],
              ),

          ) 
      ],

          


    );
  }
}

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key key, 
    @required this.buttonName,
  }) : super(key: key);

final String buttonName;

  @override
  Widget build(BuildContext context) {
     Size size=MediaQuery.of(context).size;
    return Container(
     height: size.height*0.08,
     width: size.width*0.8,
     decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Kblue,                    
     ),
    child: FlatButton(
      onPressed: () {}, 
      child: Text(
        buttonName,
        style: kBodyText.copyWith(fontWeight: FontWeight.bold),
      )),
    );
  }
}

class PasswordInput extends StatelessWidget {
  const PasswordInput({
    Key key, 
    @required this.icon, 
    @required this.hint, 
    this.inputType, 
    this.inputAction,
  }) : super(key: key);


final IconData icon;
final String hint; 
final TextInputType inputType;
final TextInputAction inputAction;

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        height: size.height*0.08,
        width: size.width*0.8,
decoration: BoxDecoration(color:Colors.grey[500].withOpacity(0.5),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: TextField(
            decoration: InputDecoration(border: InputBorder.none,
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Icon(icon,
              size: 28,
              color: Kwhite,
              ),
            ),
            hintText: hint,
            hintStyle:kBodyText, 
             ),
             obscureText: true,
             style: kBodyText ,
             keyboardType: inputType,
             textInputAction: inputAction ,
             ),
        ),
      ),
    );
  }
}

class TextInputField extends StatelessWidget {
  const TextInputField(
    {
    Key key, 
   @required this.icon, 
   @required this.hint, 
    this.inputType, 
    this.inputAction,
  }) : super(key: key);

final IconData icon;
final String hint; 
final TextInputType inputType;
final TextInputAction inputAction;

  @override
  Widget build(BuildContext context) {
      Size size=MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        height: size.height * 0.08 ,
        width: size.width * 0.8,
        decoration: BoxDecoration(color:Colors.grey[500].withOpacity(0.5),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: TextField(
            decoration: InputDecoration(border: InputBorder.none,
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Icon(icon,
              size: 28,
              color: Kwhite,
              ),
            ),
            hintText: hint,
            hintStyle:kBodyText, 
             ),
             style: kBodyText ,
             keyboardType: inputType,
             textInputAction: inputAction,
             ),
        ),
      ),
    );
  }
}