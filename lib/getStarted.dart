import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:parkscan/adminLogin.dart';
import 'package:parkscan/login.dart';

class getStarted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          margin: EdgeInsets.only(top: 100,bottom: 30),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Image.asset('images/pslogo.png', width: 200,),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.05,),
                    Text('W E L C O M E' , style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold, ),),

                  ],
                ),
                Column(
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => adminLogin()));
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.90,
                        height: MediaQuery.of(context).size.height * 0.2,
                        decoration: BoxDecoration(
                          color: Colors.black.withAlpha(200),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left:20.0, top: 20, bottom: 5),
                                      child: Text('Log in as' , style: TextStyle(color: Colors.white , fontSize: 16  , fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20.0),
                                      child: Text('Admin' , style: TextStyle(color: Colors.red , fontSize: 40  , fontWeight: FontWeight.bold),),
                                    ),

                                  ],
                                ),
                                SizedBox(width: 70),
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(Icons.admin_panel_settings, size: 90, color: Colors.yellow,),
                                      // child: Image.asset('images/admin.png', width: 100, height: 100,),
                                    ),
                                  ],
                                ),
                              ],

                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('Be Careful while logging in as you will be directed to admin panel' , style: TextStyle(color: Colors.white , fontSize: 10  ,fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),),
                                ),
                              ],
                            ),
                          ],
                        ),

                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => login()));
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.90,
                        height: MediaQuery.of(context).size.height * 0.2,
                        decoration: BoxDecoration(
                          color: Colors.black.withAlpha(200),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left:20.0, top: 20, bottom: 5),
                                      child: Text('Log in as' , style: TextStyle(color: Colors.white , fontSize: 16  , fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20.0),
                                      child: Text('USER' , style: TextStyle(color: Colors.green , fontSize: 40  , fontWeight: FontWeight.bold),),
                                    ),

                                  ],
                                ),
                                SizedBox(width: 70),
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(Icons.person, size: 90, color: Colors.blueAccent,),
                                      // child: Image.asset('images/admin.png', width: 100, height: 100,),
                                    ),
                                  ],
                                ),
                              ],

                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('Be Careful while logging in as you will be directed to admin panel' , style: TextStyle(color: Colors.white , fontSize: 10  ,fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),),
                                ),
                              ],
                            ),
                          ],
                        ),

                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
