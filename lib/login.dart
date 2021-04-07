import 'package:flutter/material.dart';

class login extends StatelessWidget {
  TextEditingController userNameController, passController;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(top: 100,bottom: 30),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('images/pslogo.png', width: 200,),
                  //SizedBox(height: MediaQuery.of(context).size.height * 0.05,),
                  Column(
                    children: [
                      Icon(Icons.person, color: Colors.blue, size: 200,),
                      Text('Login' , style: TextStyle(color: Colors.black, fontSize: 25),),
                    ],
                  ),
                  Column(
                    children: [
                      _buildTextField(userNameController, Icons.person, 'Email or Username'),
                      SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
                      _buildTextField(passController, Icons.lock, 'Password'),
                    ],
                  ),
                  MaterialButton(
                    elevation: 0,
                    minWidth: double.maxFinite,
                    height: 50,
                    onPressed: () => {},
                    color: Colors.purple[900],
                    child: Text('Login',
                        style: TextStyle(color: Colors.white, fontSize: 16)),
                    textColor: Colors.white,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.2,)




                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  Widget _buildTextField(TextEditingController controller, IconData icon, String labelText) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
          color: Colors.purple, borderRadius: BorderRadius.circular(20),border: Border.all(color: Colors.blue)),
      child: TextField(
        controller: controller,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 10),
            labelText: labelText,
            labelStyle: TextStyle(color: Colors.white),
            icon: Icon(
              icon,
              color: Colors.white,
            ),
            // prefix: Icon(icon),
            border: InputBorder.none),
      ),
    );


  }
}
