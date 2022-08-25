import 'package:coffe_app/coffe_app.dart';
import 'package:flutter/material.dart';

class CartWidget extends StatelessWidget {
  const CartWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return  Row(
            mainAxisAlignment: MainAxisAlignment.center,
            
            children: [
     
            
     Container(
                height: 150.0,
                width: 350.0,
                decoration: BoxDecoration(
                  color: Color(0xFFfefefe),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Row(children: [
                  IconButton(onPressed: (){}, icon:  Icon(Icons.check_circle,color: Color(0xFF8d674c),)),
                  Container(
                    height: 100.0,
                    width: 120.0,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      
                      
                      borderRadius: BorderRadius.circular(20.0),
                      image: DecorationImage(image: AssetImage('assets/images/bb.webp'),fit: BoxFit.fill),
                    ),
                  ),
                  SizedBox(width: 10.0,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Row(children: [
                      Text('Cappucino with',style:Theme.of(context).textTheme.headline2!.copyWith(
                        fontSize: 15.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                      ),)
                    ],),
                    SizedBox(height: 2,),
                    Row(children: [
                      Text('Choclate',style:Theme.of(context).textTheme.headline2!.copyWith(
                        fontSize: 15.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                      ),),
                    ],),
                    SizedBox(height: 4.0,),
                    Row(children: [
                      Text('US &10.00',style:Theme.of(context).textTheme.headline2!.copyWith(
                        fontSize: 17.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                      ),)
                    ],),SizedBox(height: 10.0,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      
                      children: [
                      Text('delivery in 5.87',style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: Color(0xFFf8be9a),
                      ),),
                      SizedBox(width: 10.0,),
                      Icon(Icons.add_circle_outline,size: 20.0,color: Colors.grey,),
                      SizedBox(width:5.0),
                     
                   
                     Text('1'),
                     SizedBox(width: 5.0,),
                      Icon(Icons.remove_circle_outline,size: 20.0,color:Colors.grey ),
                      
                    
                    
                    
                      
                    ],),
                    
                  ],),
                 
                ],),
                
              ),
            
         SizedBox(height:20.0)  ],);
  }
}