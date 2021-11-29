import 'package:flutter/material.dart';

class Clip extends StatefulWidget {
  const Clip({ Key? key }) : super(key: key);

  @override
  _ClipState createState() => _ClipState();
}

class _ClipState extends State<Clip> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("BottomWaveClipper"),
        ),
        body: Center(
          child: MyClipPath(),
        ),
      
    );
  }
}

class MyClipPath extends StatelessWidget {
  final Color backgroundColor = Colors.purple;
  @override

  Widget build(BuildContext context) {
    return ClipPath(
      clipper: BottomWaveClipper(),
      child: Container(
       decoration: BoxDecoration(
             gradient: LinearGradient(
               begin: Alignment.topRight,
              end: Alignment.bottomRight,
               colors: [
                 Color(0xFFc895ea),
                 
                  Color(0xFF603fac),
                  ],),
                  ),
        width: 400,
        height: 230,
      ),
    );
  }
}

class BottomWaveClipper extends CustomClipper<Path> {
  @override

  Path getClip(Size size) {
     Path path = Path();
    path.lineTo(0, size.height);
    
    path.quadraticBezierTo(size.width/6, size.height - 40, size.width/2, size.height-20);
    path.quadraticBezierTo(3/4*size.width, size.height, size.width, size.height-30);
  //  path.quadraticBezierTo(size.width/4, size.height - 40, size.width/2, size.height-20);


    //path.quadraticBezierTo(3/4*size.width, size.height, size.width, size.height-30);
   // path.quadraticBezierTo(size.width/4, size.height - 40, size.width/2, size.height-20);

  
    path.lineTo(size.width, 0);

    return path;
  }
  @override

  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}