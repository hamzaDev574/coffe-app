import 'dart:ui';

import 'package:flutter/material.dart';

class CoffeCardWidget extends StatefulWidget {
  
  
      
 const  CoffeCardWidget({ Key? key,  }) : super(key: key);

  @override
  State<CoffeCardWidget> createState() => _CoffeCardWidgetState();
}

class _CoffeCardWidgetState extends State<CoffeCardWidget> {
  @override
  Widget build(BuildContext context) {
    
    return     
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
                            decoration: BoxDecoration(
                                image: const DecorationImage(
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
                            'Espresso',
                            style: Theme.of(context)
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
                              child: Icon(
                                Icons.add,
                                color: Color(0xFFc9b8ab),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              );
  ;}
}