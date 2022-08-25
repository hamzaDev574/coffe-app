import 'dart:ffi';

import 'package:coffe_app/cart_screen.dart';
import 'package:coffe_app/choice_screen.dart';
import 'package:coffe_app/utils/theme/theme.dart';
import 'package:coffe_app/widgets/bottom_widget.dart';
import 'package:coffe_app/widgets/coffe_card.dart';
import 'package:flutter/material.dart';

import 'profile/profile_screen.dart';

class Coffeapp extends StatefulWidget {
  const Coffeapp({Key? key}) : super(key: key);
  static const routename = '/Coffeapp';

  @override
  State<Coffeapp> createState() => _CoffeappState();
}

class _CoffeappState extends State<Coffeapp> {
  int index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(  //used to scroll the page
        scrollDirection: Axis.vertical, //if you want to scroll the page vertical
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AppBar(
              elevation: 0.0,
              backgroundColor: Color(0xFFffffff),
              toolbarHeight: 120.0,
              leading: Icon(
                Icons.drag_indicator,
                color: Colors.black,
              ),
              actions: [
                CircleAvatar(),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Row(
                children: [
                  Text(
                    'Find the best',
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                        fontSize: 20.0,
                        color: Color(0xFF555555),
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, bottom: 15.0),
              child: Row(
                children: [
                  Text(
                    'Coffee to your taste',
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                        fontSize: 20.0,
                        color: Color(0xFF555555),
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Row(
                children: [
                  SizedBox(
                    height: 70.0,
                    width: 270.0,
                    child: Padding(
                      padding: const EdgeInsets.only(left:10.0),
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search,color: Colors.grey,),
                          hintText: 'find your coffee',
                          
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)
                            
                          ),
                        ),
                        
                      ),
                    ),
                  ),
                  SizedBox(width: 10.0,),
                  Container(
                     decoration: BoxDecoration(
                        color: Color(0xFF926d53),
                        borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20),bottomRight:Radius.circular(20.0),bottomLeft: Radius.circular(10.0) ),
                        
                     ),
                      height: 50.0,
                      width: 50.0,
                      child: Icon(Icons.spoke))
                ],
              ),
            
            // Padding(
            //   padding: const EdgeInsets.only(left: 15.0),
            //   child: Row(
            //     children: [
            //       Container(
            //         height: 40.0,
            //         width: 265.0,
            //         color: Color(0xFFffffff),
            //         child: Row(
            //           children: [
            //             Icon(Icons.search),
            //             Text('Find your coffee'),
            //           ],
            //         ),
            //       ),
            //       SizedBox(
            //         width: 15.0,
            //       ),
            //       Container(
            //          decoration: BoxDecoration(
            //             color: Color(0xFF926d53),
            //             borderRadius: BorderRadius.circular(50.0),
                        
            //          ),
            //           height: 40.0,
            //           width: 45.0,
            //           child: Icon(Icons.spoke))
            //     ],
            //   ),
            // ),
            Row(
              children: [
                ElevatedButton(
                    onPressed: (
                      
                    ) { onTap: () {
                                      setState(() {
                                        index = 0; 
                                      });

                                      print('Tapped on espresso');
                    };},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                    ),
                    child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        index = 0; 
                                      });

                                      print('Tapped on espresso');
                                    },
                      child: Text(
                        
                        'Espresso',
                        style: Theme.of(context).textTheme.headline3!.copyWith(
                            color: const Color(0xFFa1a1a1), fontSize: 15.0),
                      ),
                    )),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                    ),
                    child: Text(
                      'Latte',
                      style: Theme.of(context).textTheme.headline3!.copyWith(
                          color: const Color(0xFFa1a1a1), fontSize: 15.0),
                    )),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                    ),
                    child: Text(
                      'Cappucino',
                      style: Theme.of(context).textTheme.headline3!.copyWith(
                          color: const Color(0xFFa1a1a1), fontSize: 15.0),
                    )),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                    ),
                    child: Text(
                      'Cafetibre',
                      style: Theme.of(context).textTheme.headline3!.copyWith(
                          color: const Color(0xFFa1a1a1), fontSize: 15.0),
                    ))
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 210.0,
                    width: 160.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: const Color(0xFFffffff),
                    ),
                    child: Column(
                      children: [
                      
                        
                        Stack(
                          
                          children: [
                             
                            
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0, top: 8.0),
                              child: Container(
                              
                                
                                height: 120.0,
                                width: 130.0,
                                child: GestureDetector(
                                  onTap: (){
                                   Navigator.pushNamed(context, ChoiceScreen.routeName);
                                  },
                                ),
                                decoration: BoxDecoration(
                                  
                                  
                                    image:const  DecorationImage(
                                      
                                        image:
                                       
                    
                                      
                                             AssetImage('assets/images/coffe.jpeg'),
                                        fit: BoxFit.fill),
                                    borderRadius: BorderRadius.circular(15.0)),
                              ),
                            
                            ),
                            Align(
                              alignment: AlignmentDirectional.bottomEnd,
                              child: Container(
                                height: 22.0,
                                width: 45.0,
                                decoration: const BoxDecoration(
                                    color: Color(0xFF261c18),
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(15.0),
                                      topRight: Radius.circular(15.0),
                                    )),
                                child: Row(
                                  children: [
                              const      Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 20.0,
                                    ),
                                    const SizedBox(
                                      width: 5.0,
                                    ),
                                    Text(
                                      '4.5',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline2!
                                          .copyWith(
                                            fontSize: 12.0,
                                            color: Colors.white,
                                          ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          
                          padding: const EdgeInsets.only(left: 12.0, top: 7.0),
                          child: Row(
                            children: [
                           
                   
                       Text(
                                'Espresso',   style: Theme.of(context)
                                    .textTheme
                                    .headline3!
                                    .copyWith(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF838383)),
                              ),
                    
                              
                               
                    
                    
                            
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: Row(
                            children: [
                              Text(
                                'with oa 1 Milk',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline2!
                                    .copyWith(
                                        color: Color(0xFF838383), fontSize: 12.0),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '&4.2',
                                style:
                                    Theme.of(context).textTheme.headline2!.copyWith(
                                          color: Color(0xFF838383),
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                              ),
                              Container(
                                height: 40.0,
                                width: 40.0,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20.0)),
                                  color: Color(0xFF957057),
                                ),
                                child: Center(
                                  child: GestureDetector(
                                    onTap: (){
                                      Navigator.pushNamed(context,CartScreen.routeName);


                                    },
                                    child: Icon(
                                     
                                      Icons.add,
                                      color: Color(0xFFc9b8ab),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                const CoffeCardWidget(),
                 const CoffeCardWidget(),
                  const CoffeCardWidget(), //calling the constructore widget
                  
                
                  // Container(
                  //   height: 210.0,
                  //   width: 160.0,
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(12.0),
                  //     color: Color(0xFFffffff),
                  //   ),
                  //   child: Column(
                  //     children: [
                  //       Stack(
                  //         children: [
                  //           Padding(
                  //             padding: const EdgeInsets.only(left: 15.0, top: 8.0),
                  //             child: Container(
                  //               height: 120.0,
                  //               width: 130.0,
                  //               decoration: BoxDecoration(
                  //                   image: const DecorationImage(
                  //                       image:
                  //                           AssetImage('assets/images/coffe.jpeg'),
                  //                       fit: BoxFit.fill),
                  //                   borderRadius: BorderRadius.circular(15.0)),
                  //             ),
                  //           ),
                  //           Align(
                  //             alignment: Alignment.bottomRight,
                  //             child: Container(
                  //               height: 22.0,
                  //               width: 45.0,
                  //               color: Colors.black,
                  //               child: Row(
                  //                 children: const [
                  //                   Icon(
                  //                     Icons.star,
                  //                     color: Colors.yellow,
                  //                   ),
                  //                   Text('4.5')
                  //                 ],
                  //               ),
                  //             ),
                  //           )
                  //         ],
                  //       ),
                  //       Row(
                  //         children: [
                  //           Text('Espresso'),
                  //         ],
                  //       ),
                  //       Row(
                  //         children: [Text('with oa 1 Milk')],
                  //       ),
                  //       Row(
                  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //         children: [
                  //           Text('&4.2'),
                  //           Container(
                  //             height: 40.0,
                  //             width: 40.0,
                  //             color: Colors.amber,
                  //           )
                  //         ],
                  //       )
                  //     ],
                  //   ),
                  // )
                ],
              ),
            ),SizedBox(height: 20.0,),
          const BottomWidget(), //again used the constructore widget
          SizedBox(height:15.0),
            const BottomWidget(),
             SizedBox(height:15.0),
            const BottomWidget(),
             SizedBox(height:15.0),
            const BottomWidget(),
             SizedBox(height:15.0),
            const BottomWidget(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              color: Colors.black,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_basket,
              color: Colors.black,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications_none,
              color: Colors.black,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.perm_identity,
              color: Colors.black,
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
