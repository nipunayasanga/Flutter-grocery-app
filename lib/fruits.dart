import 'package:flutter/material.dart';
import 'package:flutter_grocery_shopping/SizeConfig.dart';
import 'package:flutter_grocery_shopping/Kiwi.dart';
import 'package:flutter_grocery_shopping/second.dart';
import 'package:flutter_grocery_shopping/papaya.dart'; 

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of my application.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'HomeScreen App',
              home: Fruits(),
            );
          },
        );
      },
    );
  }
}

class Fruits extends StatefulWidget {
  Fruits({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _FruitsState createState() => _FruitsState();
}

class _FruitsState extends State<Fruits> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
              child: Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Column(
                  children: <Widget>[
                        
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                                context, MaterialPageRoute(builder: (context) => Second()));
                          },
                          child: _buildFruitCard("Avocado", "assets/avocado.png","Rs.120", 0x8A2BE2, 0xffC4D400),
                        ),
                        

                         SizedBox(height: 2 * SizeConfig.heightMultiplier,),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                                context, MaterialPageRoute(builder: (context) => Kiwi()));
                          },
                          child: _buildFruitCard("Kiwi", "assets/kiwi.png","Rs.120", 0xffC4D400, 0XffE0E8CF),
                        ),
                        
                        
//============================================================================================================================                        
                        SizedBox(height: 2 * SizeConfig.heightMultiplier,),
                        _buildFruitCard("Mango", "assets/mango.png","Rs.150", 0xffF6E475, 0XffF9EFB0),
                      ],
                    ),
                    Spacer(),
                    Column(
                      children: <Widget>[
                        Container(
                          width: 42.5 * SizeConfig.widthMultiplier,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Color(0xffECEDF1)
                          ),
//=================================================================================================
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 20.0, bottom: 20.0),
                              child: Column(
                                children: <Widget>[
                                  Text("A Holiday surprise", style: TextStyle(
                                      fontFamily: 'OpenSans-Bold',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 1.5 * SizeConfig.textMultiplier
                                  ),),
                                  SizedBox(height: 10.0,),
                                  Text("40% OFF", style: TextStyle(
                                      fontFamily: 'OpenSans-Bold',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 2.5 * SizeConfig.textMultiplier
                                  ),),
                                  SizedBox(height: 10.0,),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(5.0),
                                      border: Border.all(color: Colors.green)
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text("FOODLY SURPRISE", style: TextStyle(
                                        color: Colors.green,
                                        fontFamily: 'OpenSans',
                                        fontSize: 1.7 * SizeConfig.textMultiplier,
                                        fontWeight: FontWeight.bold
                                      ),),
                                    ),
                                  ),
                                  SizedBox(height: 10.0,),
                                  Text("Use the code above for Holiday collection purchases",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'OpenSans-Bold',
                                      fontSize: 1.4 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.bold
                                  ),),
                                  SizedBox(height: 30.0,),
                                ],
                              ),
                            ),
                          ),
                        ),
//===========================================================================================
                        SizedBox(height: 2 * SizeConfig.heightMultiplier,),
                         GestureDetector(
                          onTap: (){
                            Navigator.push(
                                context, MaterialPageRoute(builder: (context) => Papaya()));
                          },
                          child: _buildFruitCard("Papaya", "assets/papaya.png","Rs.45", 0xffC4D4A3, 0XffE0E8CF),
                        ),



                       
                        SizedBox(height: 2 * SizeConfig.heightMultiplier,),
                        _buildFruitCard("Strawberry", "assets/strawberry.png","Rs.200", 0xffF0AEAF, 0XffF8C6CA),
                        SizedBox(height: 2 * SizeConfig.heightMultiplier,),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),

    );
  }

  _buildFruitCard(String name, String asset, String rate, int color, int color2) {
    return Container(
      width: 42.5 * SizeConfig.widthMultiplier,
      decoration: BoxDecoration(
        color: Color(color),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Align(
            alignment: Alignment.topRight,
            child: Container(
              decoration: BoxDecoration(
                color: Color(color2),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                )
              ),
              child: Padding(
                padding: const EdgeInsets.all(9.0),
                child: Icon(Icons.add, color: Colors.grey,),
              ),
            ),
          ),
          Center(
            child: Image.asset(
              asset,
            fit: BoxFit.contain,
            height: 30 * SizeConfig.imageSizeMultiplier,
              width: 30 * SizeConfig.imageSizeMultiplier,),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 10.0),
            child: Text(name, style: TextStyle(
              fontFamily: 'OpenSans-Bold',
              color: Colors.blue,
              fontWeight: FontWeight.bold,
              fontSize: 2.5 * SizeConfig.textMultiplier
            ),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 10.0),
            child: Text("lorem ipsum", style: TextStyle(
                fontFamily: 'OpenSans-Bold',
                fontWeight: FontWeight.bold,
                // color: Colors.blue,
                fontSize: 1.5 * SizeConfig.textMultiplier
            ),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
            child: Row(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(rate, style: TextStyle(
                        fontFamily: 'OpenSans',
                        // color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 2.5 * SizeConfig.textMultiplier
                    ),),
                    Text("Per unit", style: TextStyle(
                        fontFamily: 'OpenSans',
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 1.3 * SizeConfig.textMultiplier
                    ),),
                  ],
                ),
                Spacer(),
                Text("View Prices", style: TextStyle(
                    fontFamily: 'OpenSans',
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                    fontSize: 1.3 * SizeConfig.textMultiplier
                ),),
              ],
            ),
          ),
          SizedBox(height: 2 * SizeConfig.heightMultiplier,)
        ],
      ),
    );
  }
}
