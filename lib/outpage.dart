import 'package:bmi_app/home.dart';
import 'package:flutter/material.dart';

class OutputPage extends StatefulWidget {

  var bmi, feedback;
  OutputPage({this.bmi, this.feedback});

  @override
  _OutputPageState createState() => _OutputPageState();
}

class _OutputPageState extends State<OutputPage> {
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
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: Row(
                    children: [
                      Text('Your ',
                      style: TextStyle(
                        color: Color(0xFF7777FF),
                        fontSize: 36,
                          fontWeight: FontWeight.w400
                      ),
                      ),
                      Text('Summary',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 36,
                            fontWeight: FontWeight.w300
                        ),
                      ),
                    ],
                  ),
                ),//end 1st section
                SizedBox(height: 30,),
                Container(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  // width: 336,
                  // height: 311,
                  decoration: BoxDecoration(
                    color: Color(0xFFF6FAFF),
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x467777FF),
                        offset: Offset(1, 1),
                        blurRadius: 15,
                      ),
                      BoxShadow(
                        color: Colors.white,
                        offset: Offset(-1, -1),
                        blurRadius: 15,
                      )
                    ]
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        SizedBox(height: 10,),
                        Text('Your BMI is',
                          style: TextStyle(
                            color: Color(0xFF372B7B),
                            fontSize: 36,
                            fontWeight: FontWeight.w300
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text(widget.bmi,
                          style: TextStyle(
                            fontSize: 70,
                            color: Color(0xFF7777FF),
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text('kg/m2',
                          style: TextStyle(
                              fontSize: 18,
                              color: Color(0xFF372B7B)
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text(widget.feedback,
                          style: TextStyle(
                              fontSize: 14,
                              //color: Color(0xFF289F64),
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(height: 10,),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                Container(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: Text('Healthy BMI range: 18.5 - 25 kg/m2\nHealthy weight for the height: 47.4 - 64.0 kgs\nPonderal Index: 12.2 kg/m3',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF372B7B)
                    ),
                  ),
                ),//end text section
                SizedBox(height: 50,),
                Container(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 44,
                        width: 44,
                        decoration: BoxDecoration(
                            color: Color(0xFFF6FAFF),
                            borderRadius: BorderRadius.circular(12),
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
                        child: Icon(Icons.share_outlined, color: Colors.black,),
                      ),//end share button section
                      SizedBox(width: 30,),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                          });
                        },
                        child: Container(
                          height: 59,
                          width: 58,
                          decoration: BoxDecoration(
                              color: Color(0xFF7777FF),
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xAD7777FF),
                                  offset: Offset(1, 5),
                                  blurRadius: 15,
                                ),
                                BoxShadow(
                                  color: Colors.white,
                                  offset: Offset(0, -1),
                                  blurRadius: 15,
                                )
                              ]
                          ),
                          child: Icon(Icons.refresh_sharp, size: 40, color: Colors.white,),
                        ),
                      ),//end re-calculate button section
                      SizedBox(width: 30,),
                      Container(
                        height: 44,
                        width: 44,
                        decoration: BoxDecoration(
                            color: Color(0xFFF6FAFF),
                            borderRadius: BorderRadius.circular(12),
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
                        child: Icon(Icons.bookmark_border_outlined, color: Colors.black,),
                      ),//end save button section
                    ],
                  ),
                ),
                SizedBox(height: 20,),
              ],
            ),
          )
      ),
    );
  }
}


