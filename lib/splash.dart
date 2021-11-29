import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// //import 'package:uilover/clip.dart';
// import 'package:uilover/signup.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:uilover/clip.dart';
import 'package:uilover/signup.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  body: ListView(
      //   padding: EdgeInsets.all(20.0),
      //   children: <Widget>[
      //     ClipPath(
      //       clipper: WaveClipperOne(flip: true,reverse: true),
      //       child: Container(
      //         height: 120,
      //         color: Colors.orange,
      //         child: Center(child: Text("WaveClipperTwo(flip: true,reverse: true)")),
      //       ),
      //     ),
      //   ],
      //  ),
      //backgroundColor: Colors.deepPurple,
      body: Container(
        decoration: BoxDecoration(
             gradient: LinearGradient(
               begin: Alignment.topRight,
              end: Alignment.bottomRight,
               colors: [
                 Color(0xFFc895ea),
                 
                  Color(0xFF603fac),
                  ],),
                  ),
        child: Column(
          
           children: [
             Center(
               child: Container(
                 margin: EdgeInsets.only(top: 180),
                 child: Text("Wellcome",
                 style: GoogleFonts.lato(fontSize: 50, color: Colors.white),
                 ),
               ),
             ),
             Center(
               child: Container(
                 margin: EdgeInsets.only(top: 10),
                 child: Text("Download Free source",style: GoogleFonts.lato(fontSize: 15, color: Colors.white),),
               ),
             ),
             Center(
               child: Container(
                margin: EdgeInsets.only(top: 10),
                 child: Text("From UiLover channel",style: GoogleFonts.lato(fontSize: 15, color: Colors.white),),
               ),
             ),
             Stack(
               children: [
                 Container(
                   margin: EdgeInsets.only(top: 166),
                   child: ClipPath(
            clipper: WaveClipperTwo(reverse: true),
            child: Container(
              //margin: EdgeInsets.only(top:200),
              height: 250,
              color: Colors.purple.shade50.withOpacity(0.2),
            
            ),
          ),
                 ),
            Container(
              margin: EdgeInsets.only(top: 167),
              child: ClipPath(
              clipper: WaveClipperOne(reverse: true),
              child: Container(
                height: 249,
                color: Colors.purple.shade50.withOpacity(0.2),
                child: Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 50),
                    height: 60,
                    width: 300,
                    child: ElevatedButton( //Elevation Button For Get Started
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white, //background color of button
                 side: BorderSide(width:3, color:Colors.purple), //border width and color
                       elevation: 3, //elevation of button
                        shape: RoundedRectangleBorder( //to set border radius to button
                       borderRadius: BorderRadius.circular(15)
                 ),
                     padding: EdgeInsets.all(20) //content padding inside button
                        ),
                        onPressed: (){
                          Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignUp()),
                 );

                },
                
                 child: Text("Let's Go",
                 style: TextStyle(fontWeight: FontWeight.w900,fontSize: 20,
                      color: Colors.purple
                      ),
                 )),
                  ),
                  ),
              ),
          ),
            ),
               ],
             ),
             
          //  Stack(children: [
          //    Container(
          //      margin: EdgeInsets.only(top: 462),
          //      height: 250,
          //      width: 400,
               
          //      child: MyClipPath(),
          //    ),
          //   //  Container(
          //   //    margin: EdgeInsets.only(top: 455),
          //   //    height: 200,
          //   //    width: 400,
          //   //    color:Color(0xFF0E3311).withOpacity(0.5),
          //   //    child: MyClipPath(),
          //   //  ),
          //  ],)
           ],
           ),
      ),
    );
  }
}