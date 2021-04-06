import 'package:flutter/material.dart';
import 'package:parkscan/values.dart';

class login extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  int check = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Image(image: AssetImage('images/pslogo.png') , color: Colors.white,),
          ),
          backgroundColor: Colors.purple[800],
          title: Text('Admin Login'  , style: TextStyle(color: Colors.white),),
        ),
        body: Center(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.7, 1.4],
                colors: [
                  Colors.white,
                  Colors.purple[800],
                ],
              ),
            ),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top:20, left: 10,right: 10,),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset('images/admin.png', height: MediaQuery.of(context).size.height * 0.15,),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.06,),
                    Text('Login' , style: headingStyle,),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.05,),
                    TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.grey[100],
                        hintText: 'UserName',
                        hoverColor: Colors.purple[800],
                        prefixIcon: Icon(Icons.admin_panel_settings_outlined),

                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
                    TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.grey[100],
                        hintText: 'Password',
                        hoverColor: Colors.purple[800],
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: InkWell(child: Icon(Icons.remove_red_eye),
                          onTap: (){
                            setState(() {
                              if(check==0){check=1;}
                              else
                                check=0;
                            });
                          },
                        ),
                      ),
                      obscureText: check==0?true:false,
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.05,),
                    MaterialButton(
                      onPressed: (){},
                      height: MediaQuery.of(context).size.height * 0.04,
                      minWidth: MediaQuery.of(context).size.width *0.9,
                      color: Colors.blueAccent,
                      child: Center(
                        child: Text('Log In', style: TextStyle(color: Colors.white),),
                      ),
                    )


                  ],
                ),
              ),
            ),
          ),

        ),
      ),
    );
  }
}
