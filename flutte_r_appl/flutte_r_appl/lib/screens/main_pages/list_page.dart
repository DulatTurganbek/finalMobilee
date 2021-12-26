import 'package:flutter/material.dart';



class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: mediaQuery.size.height/3,
            child:  Container(
              padding: EdgeInsets.all(30),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  colors: [
                    Color.fromRGBO(251, 121, 155, 1),
                    Color.fromRGBO(251, 53, 105, 1)
                  ]
                )
              ),
              child: Transform.translate(
                offset: Offset(5, -10),
                child:  Image.asset('assets/coffe.jpg',)),
              ),
            
        ),
          
          Positioned(
            top: 50,
            left: 10,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios, color: Colors.white,),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            height: MediaQuery.of(context).size.height / 1.4,
            child:  Container(
              padding: const EdgeInsets.all(25.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                     Text('What do people actually know about coffee? ', 
                    style: TextStyle(color: Color.fromRGBO(97, 90, 90, .54), fontSize: 18, fontWeight: FontWeight.bold),),
                  
                    SizedBox(height: 10,),
                    Text("Coffee is Culture", 
                    style: TextStyle(color: Color.fromRGBO(97, 90, 90, 1), fontSize: 23, fontWeight: FontWeight.bold),),
                    
                    SizedBox(height: 20,),                    
                     Text("Coffee is consumed in such great quantities, it is the world’s 2nd largest traded commodity, surpassed only by crude oil. It is our most beloved beverage after water. It’s worth well over \$100 billion worldwide.", style: TextStyle(color: Color.fromRGBO(51, 51, 51, 0.54), height: 1.4, fontSize: 18,),),
                    
                   
               
                    SizedBox(height: 50,),
                    Text('More option', 
                    style: TextStyle(color: Color.fromRGBO(97, 90, 90, .54), fontSize: 18, fontWeight: FontWeight.bold),),
                   
                    SizedBox(height: 20,),                    
                    Container(
                      height: 80,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                           AspectRatio(
                            aspectRatio: 3.2 / 1,
                            child: Container(
                              padding: EdgeInsets.all(13),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.all(Radius.circular(15))
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    width: 56,
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(10)),
                                      color: Color.fromRGBO(251, 53, 105, 1)
                                    ),
                                    child: Image.asset('assets/cino.jpg'),
                                  ),
                                  SizedBox(width: 10,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text('Cappuccino', style: TextStyle(color: Color.fromRGBO(97, 90, 90, 1), fontWeight: FontWeight.bold),),
                                      SizedBox(height: 2,),
                                      Text('3.22\$ ', style: TextStyle(color: Color.fromRGBO(97, 90, 90, .7), fontSize: 13),)
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          AspectRatio(
                            aspectRatio: 3.2 / 1,
                            child: Container(
                              margin: EdgeInsets.only(left: 20),
                              padding: EdgeInsets.all(13),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.all(Radius.circular(15))
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    width: 56,
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(10)),
                                      color: Color.fromRGBO(81, 234, 234, 1)
                                    ),
                                    child: Image.asset('assets/cano.jpg'),
                                  ),
                                  SizedBox(width: 10,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text('Americano', style: TextStyle(color: Color.fromRGBO(97, 90, 90, 1), fontWeight: FontWeight.bold),),
                                      SizedBox(height: 2,),
                                      Text('5.22 \$', style: TextStyle(color: Color.fromRGBO(97, 90, 90, .7), fontSize: 13),)
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 50,),
                    Container(
                      height: 60,
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 10,
                            offset: Offset(0, 10)
                          )
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        gradient: LinearGradient(
                          colors: [
                            Color.fromRGBO(251, 121, 155, 1),
                            Color.fromRGBO(251, 53, 105, 1)
                          ]
                        )
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: <Widget>[
                            Text('\$14.', style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),),
                            Text('54', style: TextStyle(color: Colors.white, )),
                          ],),
                          Text('Pay', style: TextStyle(color: Colors.white, fontSize: 25),),
                        ],
                      ),
                    ),
                    SizedBox(height: 50,),
                  ],
                )
              )
            ))

        ],
      ),
    );
  }
}