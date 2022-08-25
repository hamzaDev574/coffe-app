import 'package:flutter/material.dart';

class ChoiceScreen extends StatelessWidget {
  const ChoiceScreen({ Key? key }) : super(key: key);
  static const routeName ="/ChoiceScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFffffff),
      body:SafeArea(child: Column(
      
        children: [
          
          Stack(children: [
            Container(
              height: 370.0,
              width: 330.0,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(20.0),
               image: DecorationImage(image: AssetImage('assets/images/aaa.webp'),fit: BoxFit.fill)
             ),
              child: Column(children: [
                Row(children: [
                  Container(
                    height: 40.0,
                    width: 40.0,
                 
                    decoration: BoxDecoration(
                       color: Colors.white,
                      borderRadius: BorderRadius.circular(30)

                    ),
                    child: IconButton(onPressed:() {}, icon:Icon(Icons.arrow_back_ios))),
                    SizedBox(width: 250.0,),
            Container(
              height: 40.0,
                    width: 40.0,
                   
                    decoration: BoxDecoration(
                     
                    color: Colors.white,
                    
                      borderRadius: BorderRadius.circular(30.0)
                    ),
              child: IconButton(onPressed: (){}, icon: Icon(Icons.favorite_outline_rounded)))
                ],),
                SizedBox(height: 200.0,),
                Row(children: [
                  Container(height: 130.0,
                  
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    backgroundBlendMode: BlendMode.darken,
                    
                       
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  width: 330.0,
               
                  child: Column(
                  
                    
                    children: [
                    Padding(
                      padding: const EdgeInsets.only(top:20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        
                        children: [
                        Text('Espresso',style: Theme.of(context).textTheme.headline2!.copyWith(
                          fontSize: 20.0,
                          color:Color(0xFFfbfbfb),
                        ),),
                        Icon(Icons.spa,color: Colors.white,),
                        Icon(Icons.opacity,color: Colors.white,)
                      ],),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:50.0),
                      child: 
                      
                      Row(
                      
                        children: [
                        
                        
                        Padding(
                          padding: const EdgeInsets.only(right:55.0,top: 10.0),
                          child: Text('with choclate',style: Theme.of(context).textTheme.headline2!.copyWith(
                            fontSize: 12.0,
                            color: Colors.grey,
                          ),),
                        ),
                        Text('coffe',style: Theme.of(context).textTheme.headline2!.copyWith(
                          fontSize: 12.0,
                          color: Colors.grey,
                        ),),SizedBox(width: 40.0,),
                        Text('choclate',style: Theme.of(context).textTheme.headline2!.copyWith(
                          fontSize: 12.0,
                          color: Colors.grey,
                        ),),
                      ],),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:25.0,left:45.0),
                      child: Row(
                       
                        children: [
                         Icon(Icons.star,color:Colors.yellow,size: 15.0,),
                         SizedBox(width: 5.0,),
                        
                         Text('4.8',style: Theme.of(context).textTheme.headline2!.copyWith(
                            color: Colors.white,
                            fontSize: 15.0
                          ),),
                        SizedBox(width: 90.0,),
                        Text('Medium requested',style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: Colors.grey,
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold

                        )),
                      ],),
                    )
                  ],),)
                ],)
              ],),
            )
          ],),
          Padding(
            padding: const EdgeInsets.only(top:8.0,left: 20.0),
            child: Row(
              
              children: [
              Text('Description',style: Theme.of(context).textTheme.headline2!.copyWith(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.black


              ),),
            ],),
          ),
          Padding(
            padding: const EdgeInsets.only(left:20.0,top: 10.0),
            child: Row(children: [
              Text('loraara akdjad khaha dhadjhd ajdha akdhakd fdafd',style: Theme.of(context).textTheme.headline2!.copyWith(
                            fontSize: 12.0,
                            color: Colors.grey,
                          ),)
            ],),
          ),
          Padding(
            padding: const EdgeInsets.only(left:20.0),
            child: Row(children: [
              Text('shdhsadg idsa ksdsdsd dksadjksa rewrewcds ',style: Theme.of(context).textTheme.headline2!.copyWith(
                            fontSize: 12.0,
                            color: Colors.grey,
                          ),),
            ],),
          ),
          Padding(
            padding: const EdgeInsets.only(left:20.0),
            child: Row(children: [
              Text('comomdo............read more',style: Theme.of(context).textTheme.headline2!.copyWith(
                            fontSize: 12.0,
                            color: Colors.grey,
                          ),),
            ],),
          ),
          Padding(
            padding: const EdgeInsets.only(left:20.0,top: 20.0),
            child: Row(children: [
              Text('Choice of choclate',style: Theme.of(context).textTheme.headline2!.copyWith(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black


                ),)
            ],),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: [
              ElevatedButton(onPressed: (){},style:ElevatedButton.styleFrom(
             primary: Color(0xFF957259),
             shape:new RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(20.0)
             )

              ), child: Text('White Choclate')),
              ElevatedButton(onPressed: (){},style:ElevatedButton.styleFrom(
             primary: Color(0xFF957259),
             shape:new RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(20.0)
             )

              ), child: Text('Milk choclate')),
              ElevatedButton(onPressed: (){},style:ElevatedButton.styleFrom(
             primary: Color(0xFF957259),
             shape:new RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(20.0)
             )

              ), child: Text('Dark Choclate'))
            ],),
          ),
          Padding(
            padding: const EdgeInsets.only(left:15.0,top: 15.0),
            child: Row(children: [
              Text('Size',style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black


                  ),),
                  SizedBox(width:180.0),
              Text('Quantity',style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black


                  ),),
            ],),
          ),
          Padding(
            padding: const EdgeInsets.only(left:15.0,top: 10.0),
            child: Row(children: [
              TextButton(onPressed: (){},style:ElevatedButton.styleFrom(
                

                primary:Color(0xFFd7d7d7),
                shape: new RoundedRectangleBorder(
                  
                  borderRadius: BorderRadius.circular(50.0),
                )
              ) ,child: Text('S',style: Theme.of(context).textTheme.bodyText1!.copyWith(
                color: Color(0xFF9e9e9e),
              ),)),
               TextButton(onPressed: (){},style:ElevatedButton.styleFrom(
               

               primary:Color(0xFFd7d7d7),
               shape: new RoundedRectangleBorder(
                 
                 borderRadius: BorderRadius.circular(50.0),
               )
              ) , child: Text('M',style: Theme.of(context).textTheme.bodyText1!.copyWith(
                color: Color(0xFF9e9e9e),
              ),)),
               TextButton(onPressed: (){},style:ElevatedButton.styleFrom(
               

               primary:Color(0xFFd7d7d7),
               shape: new RoundedRectangleBorder(
                 
                 borderRadius: BorderRadius.circular(50.0),
               )
              ) , child: Text('L',style: Theme.of(context).textTheme.bodyText1!.copyWith(
                color: Color(0xFF9e9e9e),
              ),)),
              SizedBox(
                width:20.0
              ),
               Container(
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(20.0),
                    color: Color(0xFF957259),
                 ),
                height: 40.0,
                width: 40.0,
               
                child:TextButton(onPressed: (){}, child: Text('-',style: TextStyle(color: Colors.black),)),
              ),
            SizedBox(width: 10.0,),
              Text('1'),
              SizedBox(width: 10.0,),
               Container(
                  decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(20.0),
                    color: Color(0xFF957259)
                 ),
                height: 40.0,
                width: 40.0,
              
                child:TextButton(onPressed: (){}, child: Text('+',style: TextStyle(color: Colors.black),)),
              )
            ],),
          ),
          Padding(
            padding: const EdgeInsets.only(left:20.0,top: 20.0),
            child: Column(
              
              
              children: [
              Row(children: [
                Padding(
                  padding: const EdgeInsets.only(right:15.0),
                  child: Text('Price',style: TextStyle(color: Colors.grey),),
                ),
              ],),
              Padding(
                padding: const EdgeInsets.only(bottom:15.0),
                child: Row(children: [
                  Text('& 4.20',style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                  ),),
                  SizedBox(width: 150.0,),
                   Container(
                     decoration: BoxDecoration(
                       color:   Color(0xFF967259),
                       borderRadius: BorderRadius.circular(20.0)
                       
                     ),
                  height: 40.0,
                  width: 120.0,
                  
                 
                  child: Center(child: Text('Buy Now',style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 15.0,
                    color:Colors.white,
                    fontWeight: FontWeight.bold
                  ),),)
                )
                ],),
              )
            ],),
          )
        ],
        
      )) ,

    );
  }
}