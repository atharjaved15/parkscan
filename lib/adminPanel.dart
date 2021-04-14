import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parkscan/uploadDetails.dart';


class adminPanel extends StatefulWidget {
  @override
  _adminPanelState createState() => _adminPanelState();
}

class _adminPanelState extends State<adminPanel> {
  Color primaryColor = Colors.black87;
  Color secondaryColor = Colors.white;
  Color logoColor  =   Colors.redAccent;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: primaryColor,
        body: Container(
          alignment: Alignment.topCenter,
          margin: EdgeInsets.symmetric(horizontal: 30),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Align(
                  alignment: Alignment.bottomCenter,
                  child: _buildFooterLogo(),
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  'Welcome to Admin Controls',
                  textAlign: TextAlign.center,
                  style:
                  GoogleFonts.openSans(color: Colors.white, fontSize: 28),
                ),
                SizedBox(height: 20),
                Text(
                  'You can add new RoadSigns and also modify the RoadSign details as well',
                  textAlign: TextAlign.center,
                  style:
                  GoogleFonts.openSans(color: Colors.white, fontSize: 14),
                ),
                SizedBox(height: 200),
                MaterialButton(
                  elevation: 0,
                  minWidth: double.maxFinite,
                  height: 50,
                  color: logoColor,
                  child: Text('Add New RoadSigns',
                      style: TextStyle(color: Colors.white, fontSize: 16)),
                  textColor: Colors.white,
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_) => uploadData()));
                  },
                ),
                SizedBox(height: 20,),
                MaterialButton(
                  elevation: 0,
                  minWidth: double.maxFinite,
                  height: 50,
                  color: Colors.purple,
                  child: Text('Modify RoadSigns',
                      style: TextStyle(color: Colors.white, fontSize: 16)),
                  textColor: Colors.white,
                  onPressed: (){
                    //Navigator.push(context, MaterialPageRoute(builder: (_) => uploadData()));
                  },
                ),

              ],
            ),
          ),
        ));

  }
  _buildFooterLogo() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Image.asset(
            'images/pslogo.png',
            height: 40,
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}