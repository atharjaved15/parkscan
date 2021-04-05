import 'package:flutter/material.dart';

class getStarted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 100 , left: 20, right: 20, bottom: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,

                children: [
                  Image.asset('images/gs.png' , width: MediaQuery.of(context).size.width* 0.9,),
                  //SizedBox(height: MediaQuery.of(context).size.height* 0.1,),
                  Column(
                    children: [
                      Text('Grow financial seeds' , style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),
                      SizedBox(height: MediaQuery.of(context).size.height* 0.05,),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0 , right: 20.0),
                        child: Center(child: Text('Invest your change and earn interest, plant your money and watch them grow with time.' , style: TextStyle(color: Colors.white, fontSize: 14),)),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(5),

                          ),
                          height: MediaQuery.of(context).size.height * 0.065,
                          width:  MediaQuery.of(context).size.width * 0.40,
                          child: MaterialButton(
                            onPressed: (){
                              //Navigator.push(context, MaterialPageRoute(builder: (context) => register()));
                            },
                            child: Text('Register' , style: TextStyle(color: Colors.white),),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.lightBlue,
                            borderRadius: BorderRadius.circular(5),

                          ),
                          height: MediaQuery.of(context).size.height * 0.065,
                          width:  MediaQuery.of(context).size.width * 0.40,
                          child: MaterialButton(
                            onPressed: (){
                              //Navigator.push(context, MaterialPageRoute(builder: (context) => loginScreen()));
                            },
                            child: Text('Login' , style: TextStyle(color: Colors.white),),
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
