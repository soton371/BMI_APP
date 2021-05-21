import 'package:bmi_app/calculate.dart';
import 'package:bmi_app/outpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var heightcm = 120.0, weight = 50.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6FAFF),
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.only(left: 25, right: 25),
                  child: Row(
                    children: [
                      Text('BMI',
                        style: TextStyle(
                          fontSize: 36,
                          color: Color(0xFF7777FF),
                            fontWeight: FontWeight.w400
                        ),
                      ),
                      SizedBox(width: 10,),
                      Text("Calculator",
                        style: TextStyle(
                            fontSize: 36,
                            color: Colors.black,
                          fontWeight: FontWeight.w300
                        ),
                      ),
                    ],
                  )
                ),//end 1st section
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.only(left: 25, right: 25),
                  child: Text('Body mass index (BMI) is a measure of body fat based on height and weight that applies to adult men and women.',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF372B7B),
                  ),
                  ),
                ),//end 2nd section
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.only(left: 25, right: 25),
                  child: Row(
                    children: [
                      Expanded(
                          child: Column(
                            children: [
                              // Image(image: AssetImage('images/Mask Group 3@1X.png'), width: 134, height: 176,),
                              ClipOval(
                                //borderRadius: const BorderRadius.all(const Radius.circular(50)),
                                child: Image(
                                  image: AssetImage("images/Mask Group 3@1X.png"),
                                  //fit: BoxFit.cover,
                                  height: 134,
                                  width: 134,
                                ),
                              ),

                              Text('Male',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xFF372B7B),
                                  fontWeight: FontWeight.bold
                                ),
                              )
                            ],
                          )
                      ),
                      Expanded(
                          child: Column(
                            children: [
                              ClipOval(
                                //borderRadius: const BorderRadius.all(const Radius.circular(50)),
                                child: Image(
                                  image: AssetImage("images/Mask Group 2@1X.png"),
                                  //fit: BoxFit.cover,
                                  height: 134,
                                  width: 134,
                                ),
                              ),
                              Text('Female',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xFF372B7B),
                                    fontWeight: FontWeight.bold
                                ),
                              )
                            ],
                          )
                      ),//end pic section
                    ],
                  )
                ),//end 3rd section
                SizedBox(height: 20,),
                Container(
                    padding: EdgeInsets.only(left: 25),
                    child: Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Color(0x467777FF),
                                offset: Offset(1, 1),
                                blurRadius: 10,

                            ),
                            BoxShadow(
                                color: Colors.white,
                                offset: Offset(-1, -1),
                                blurRadius: 10,

                            )
                          ],
                          color: Color(0xFFF6FAFF),
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(12),
                              bottomLeft: Radius.circular(12))
                      ),
                      // height: 96,
                      // width: 393,
                      padding: EdgeInsets.only(top: 10, left: 10,bottom: 10),
                      child: Row(
                        children: [
                          Expanded(
                              flex: 1,
                              child: Column(
                                children: [
                                  Container(
                                      decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color(0x467777FF),
                                              offset: Offset(1, 1),
                                              blurRadius: 5,
                                            ),
                                            BoxShadow(
                                              color: Colors.white,
                                              offset: Offset(-1, -1),
                                              blurRadius: 5,
                                            )
                                          ]
                                      ),
                                      child: Image(image: AssetImage('images/Group 268@1X.png'))
                                  ),
                                  SizedBox(height: 5,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Height',
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xFF372B7B),
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                      Text(' cm',
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xFF7777FF),
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              )
                          ),
                          Expanded(
                              flex: 3,
                              child: Column(
                                children: [
                                  SliderTheme(
                                    data: SliderThemeData(
                                      valueIndicatorColor: Color(0xFF7777FF)
                                    ),
                                    child: Slider(
                                      min: 80.0,
                                      max: 250.0,
                                      onChanged: (values){
                                        setState(() {
                                          heightcm = values;
                                        });
                                      },
                                      value: heightcm,
                                      divisions: 100,
                                      activeColor: Color(0xFF7777FF),
                                      label: "$heightcm",
                                    ),
                                  ),

                                  Text("$heightcm cm", style: TextStyle(color: Color(0xFF7777FF), fontSize: 14, fontWeight: FontWeight.bold),),

                                ],
                              )
                          ),
                        ],
                      ),
                    )
                ),//end height logo section
                SizedBox(height: 20,),
                Container(
                    padding: EdgeInsets.only(left: 25),
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x467777FF),
                            offset: Offset(1, 1),
                            blurRadius: 10,
                          ),
                          BoxShadow(
                            color: Colors.white,
                            offset: Offset(-1, -1),
                            blurRadius: 10,
                          )
                        ],
                          color: Color(0xFFF6FAFF),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(12),
                        bottomLeft: Radius.circular(12))
                      ),
                      padding: EdgeInsets.only(top: 10, left: 10,bottom: 10),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0x467777FF),
                                          offset: Offset(1, 1),
                                          blurRadius: 5,
                                        ),
                                        BoxShadow(
                                          color: Colors.white,
                                          offset: Offset(-1, -1),
                                          blurRadius: 5,
                                        )
                                      ]
                                    ),
                                      child: Image(image: AssetImage('images/Group 269@1X.png'))
                                  ),
                                  SizedBox(height: 5,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Weight',
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xFF372B7B),
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                      Text(' kg',
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xFF7777FF),
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              )
                          ),
                          Expanded(
                            flex: 3,
                              child: Column(
                                children: [
                                  SliderTheme(
                                    data: SliderThemeData(
                                      valueIndicatorColor: Color(0xFF7777FF)
                                    ),
                                    child: Slider(
                                      min: 30.0,
                                      max: 120.0,
                                      onChanged: (values){
                                        setState(() {
                                          weight = values;
                                        });
                                      },
                                      value: weight,
                                      divisions: 100,
                                      activeColor: Color(0xFF7777FF),
                                      label: "$weight",
                                    ),
                                  ),

                                  Text("$weight kg", style: TextStyle(color: Color(0xFF7777FF), fontSize: 14, fontWeight: FontWeight.bold),),

                                ],
                              )
                          ),
                        ],
                      ),
                    )
                ),//end weight section
                SizedBox(height: 30,),
                Container(
                  padding: EdgeInsets.only(left: 25, right: 25),
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)
                    ),
                    height: 50,
                    color: Color(0xFF7777FF),
                      onPressed: (){
                        Calculate cal = Calculate(weight: weight, heightcm: heightcm);
                        Navigator.push(context, MaterialPageRoute(builder: (context) => OutputPage(
                          bmi: cal.result(),
                          feedback: cal.feedback(),
                        )));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Calculate your BMI  ',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            letterSpacing: 1.5,
                          ),
                          ),
                          Icon(Icons.arrow_forward, size: 14, color: Colors.white,),
                        ],
                      ),
                  ),
                ),//end button section
                SizedBox(height: 20,),
              ],
            ),
          )
      ),
    );
  }
}

