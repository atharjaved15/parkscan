import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class uploadData extends StatefulWidget {
  @override
  _uploadDataState createState() => _uploadDataState();
}

class _uploadDataState extends State<uploadData> {

  final picker = ImagePicker();
  File image,image_3d ;

  String url;
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
        body: SingleChildScrollView(
          child: Container(
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
                  SizedBox(height: 20),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        image != null ? Image.file(
                          image,
                          fit: BoxFit.cover,
                          height: 300,
                          width: 300,
                        ): Container(
                          height: 300,
                          width: 300,
                          child: InkWell(
                            onTap: ()=> {
                              chooseImage(),
                            },
                            child: Icon(
                              Icons.add_a_photo_outlined,
                              color: Colors.white,
                            ),
                          ),
                        ),

                      ],

                    ),
                  ),
                  SizedBox(height: 20,),
                  _buildTextField(Icons.drive_file_rename_outline, 'Details'),
                  SizedBox(height: 120,),
                  MaterialButton(
                    elevation: 0,
                    minWidth: double.maxFinite,
                    height: 50,
                    onPressed: (){},
                    color: Colors.red,
                    child: Text('Submit Data',
                        style: TextStyle(color: Colors.white, fontSize: 16)),
                    textColor: Colors.white,
                  ),
                  SizedBox(height: 20),

                ],
              ),
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

  Future  chooseImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    setState(() {
      if(pickedFile!=null)
      {
        image = File(pickedFile.path);
      }
    });
  }
  Widget _buildTextField( IconData icon, String labelText) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
          color: secondaryColor, borderRadius: BorderRadius.circular(10),border: Border.all(color: Colors.blue)),
      child: TextFormField(
        onChanged: (text) {
        },
        style: TextStyle(color: Colors.black87),
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 10),
            labelText: labelText,
            labelStyle: TextStyle(color: Colors.black87),
            icon: Icon(
              icon,
              color: Colors.black87,
            ),
            // prefix: Icon(icon),
            border: InputBorder.none),
      ),
    );


  }

}
