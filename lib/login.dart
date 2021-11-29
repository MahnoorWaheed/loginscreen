import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uilover/clip.dart';
import 'package:uilover/splash.dart';

class Login extends StatefulWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
         Container(
           margin: EdgeInsets.only(top: 100),
           child: Column(
             children: [
               Container(
                 margin: EdgeInsets.only(top: 120,left: 90),
                 child: Row(
                   children: [
                     Text("Ui",
                      style: GoogleFonts.lato(fontSize: 50,
                     ),
                      // TextStyle(
                    //    fontSize: 50,
                    //    fontWeight: FontWeight.bold
                    //  ),
                     ),
                     Text("Lover",
                     style: GoogleFonts.lato(fontSize: 50, color: Color(0xFF7522ac),
                     fontWeight: FontWeight.bold,
                     ),
                     ),
                 ],
                 ),
               ),
               Container(
                 
                 child: Text("A Gateway Of UI Design",
                 style: GoogleFonts.lato(fontSize: 15, color: Colors.grey)
                 ),
               ),
               Container(
                 width: 300,
                  height: 50,
                 margin: EdgeInsets.only(top: 20),
                 child: TextFormField(
                   decoration: InputDecoration(
                labelText: 'Enter Your Email',
                 fillColor: Color(0xFFe1e0e2), filled: true,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.circular(15),
                ),
                 focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.circular(15),
                )),
                 ),
                ),
                 Container(
                 width: 300,
                 height: 50,
                 margin: EdgeInsets.only(top: 20),
                 child: TextFormField(
                   decoration: InputDecoration(
                labelText: 'Enter Your Password',
                 fillColor: Color(0xFFe1e0e2), filled: true,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.circular(15),
                ),
                 focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.circular(15),
                )),
                 ),
                ),
                Container(
                    width: 330,
                    height: 65.5,
                    margin: EdgeInsets.only(top: 15),
                    //padding: EdgeInsets.all(10),
                    child: ElevatedButton( //Elevation Button For Get Started
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF7522ac), //background color of button
                 side: BorderSide(width:1, color:Colors.white), //border width and color
                     elevation: 3, //elevation of button
                      shape: RoundedRectangleBorder( //to set border radius to button
                     borderRadius: BorderRadius.circular(15)
                 ),
                   padding: EdgeInsets.all(20) //content padding inside button
                      ),
                      onPressed: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SplashScreen()),    
                     );
                        
                },
                
                 child: Text("Login",
                 style: TextStyle(fontWeight: FontWeight.w900,fontSize: 20,
                    color: Colors.white
                    ),
                 )),
                  ),
                Container(
                  margin: EdgeInsets.only(right: 15,top: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                    GestureDetector(
                      child: Text("Forget password?", 
                      style: TextStyle(fontSize: 17, color: Color(0xFF7522ac)),
                      ),
                    )
                  ],),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Divider(
                          color: Colors.black,
                          height: 10,
                          thickness: 0.2,
                          indent: 20,
                          endIndent: 20,
                        ),
                ),
               Row(
                 children: [
                   Container(
                     margin: EdgeInsets.only(left: 15,top: 20),
                    //  color: Colors.amberAccent,
              
                     height: 45,
                     width: 160,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(

                        primary: Colors.white,
                      ),
                      child: Row(
                        children: [
                         Container(
                           
                           margin: EdgeInsets.only(right: 10),
                           child: SvgPicture.asset("assets/images/google.svg",
                            
                           ),
                         ),
                         Text("Google Login",style: TextStyle(color: Colors.black),)
                        ],
                      ),
                      onPressed: ()
                      {

                      },
                    ),
                   ),
                   Container(
                     margin: EdgeInsets.only(left: 7,top: 20),
                    //  color: Colors.amberAccent,
              
                     height: 45,
                     width: 170,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(

                        primary: Colors.white,
                      ),
                      child: Row(
                        children: [
                         Container(
                           
                           margin: EdgeInsets.only(right: 10),
                           child: SvgPicture.asset("assets/images/fb.svg",
                            height:20,

                           ),
                         ),
                         Text("FaceBook Login", 
                         style: TextStyle(color: Colors.black),
                         )
                        ],
                      ),
                      onPressed: ()
                      {

                      },
                    ),
                   ),
                 ],
               ),
              Container(
                  margin: EdgeInsets.only(right: 10,top: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        child: Text("Don't have an Account? "),
                      ),
                    GestureDetector(
                      child: Text("SignUp", 
                      style: TextStyle(fontSize: 17, color: Color(0xFF7522ac)),
                      ),
                    )
                  ],),
                ), 
           ],
           ),
         ),
         Container(
          //  height: 200,
          //  color: Colors.purpleAccent,
           child: MyClipPath(),
         ),
      ],
      ),
    );
  }
}