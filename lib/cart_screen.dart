import 'package:coffe_app/widgets/cart_widget.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({ Key? key }) : super(key: key);
  static const routeName='/CartSreen';

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List<String> coffees =['coffe1', 'coffe2', 'coffe3','coffe4','coffe4','coffe5','coffe6'];
  @override
 
  Widget build(BuildContext context) {
    return Scaffold(

        appBar:  AppBar(
            toolbarHeight: 100.0,
            backgroundColor: Colors.white,
            elevation: 0.0,
            leading: 
            Icon(Icons.arrow_back,color: Colors.black,),
            centerTitle: true,
            title: Text('Cart',style: Theme.of(context).textTheme.bodyText1!.copyWith(
              color:Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold
            ),),
      
      
      
          ),
      body: 
      
      
      ListView.builder(itemCount: coffees.length, itemBuilder: (BuildContext context, int index){
        final coffe =coffees[index];
      
    return  Dismissible(
      key: Key(coffe),
      onDismissed: (direction){
        if(direction==DismissDirection.startToEnd){
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text(coffees[index]),
          backgroundColor: Colors.red,
          ));
        }
        else{
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text(coffees[index]),
          backgroundColor: Colors.green,
          ));
        }
      },
      direction: DismissDirection.endToStart,
      child: Container(
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
    );



      })
      
      // SafeArea(child: SingleChildScrollView(
      //   scrollDirection: Axis.vertical,
      //   child: Column(children: [
      
      //     Padding(
      //       padding: const EdgeInsets.only(left:10.0),
      //       child: Row(
              
      //         children: [
      //         Text('items (20)',style: Theme.of(context).textTheme.headline2!.copyWith(
      //           color: Colors.black,
      //           fontSize: 18.0,
      //           fontWeight: FontWeight.bold
      //         ),),
      //       ],),
      //     ),
      //     SizedBox(
      //       height: 20.0,
      //     ),
      //     Row(
      //       mainAxisAlignment: MainAxisAlignment.center,
            
      //       children: [
      //       Container(
      //         height: 150.0,
      //         width: 350.0,
      //         decoration: BoxDecoration(
      //           color: Color(0xFFfefefe),
      //           borderRadius: BorderRadius.circular(20.0),
      //         ),
      //         child: Row(children: [
      //           IconButton(onPressed: (){}, icon:  Icon(Icons.check_circle,color: Color(0xFF8d674c),)),
      //           Container(
      //             height: 100.0,
      //             width: 120.0,
      //             decoration: BoxDecoration(
      //               color: Colors.red,
                    
                    
      //               borderRadius: BorderRadius.circular(20.0),
      //               image: DecorationImage(image: AssetImage('assets/images/bb.webp'),fit: BoxFit.fill),
      //             ),
      //           ),
      //           SizedBox(width: 10.0,),
      //           Column(
      //             mainAxisAlignment: MainAxisAlignment.center,
      //             crossAxisAlignment: CrossAxisAlignment.start,
      //             children: [
      //             Row(children: [
      //               Text('Cappucino with',style:Theme.of(context).textTheme.headline2!.copyWith(
      //                 fontSize: 15.0,
      //                 color: Colors.black,
      //                 fontWeight: FontWeight.bold
      //               ),)
      //             ],),
      //             SizedBox(height: 2,),
      //             Row(children: [
      //               Text('Choclate',style:Theme.of(context).textTheme.headline2!.copyWith(
      //                 fontSize: 15.0,
      //                 color: Colors.black,
      //                 fontWeight: FontWeight.bold
      //               ),),
      //             ],),
      //             SizedBox(height: 4.0,),
      //             Row(children: [
      //               Text('US &10.00',style:Theme.of(context).textTheme.headline2!.copyWith(
      //                 fontSize: 17.0,
      //                 color: Colors.black,
      //                 fontWeight: FontWeight.bold
      //               ),)
      //             ],),SizedBox(height: 10.0,),
      //             Row(
      //               crossAxisAlignment: CrossAxisAlignment.end,
                    
      //               children: [
      //               Text('delivery in 5.87',style: Theme.of(context).textTheme.bodySmall!.copyWith(
      //                 color: Color(0xFFf8be9a),
      //               ),),
      //               SizedBox(width: 10.0,),
      //               Icon(Icons.add_circle_outline,size: 20.0,color: Colors.grey,),
      //               SizedBox(width:5.0),
                   
                 
      //              Text('1'),
      //              SizedBox(width: 5.0,),
      //               Icon(Icons.remove_circle_outline,size: 20.0,color:Colors.grey ),
                    
                  
          
          
                    
      //             ],),
                  
      //           ],),
               
      //         ],),
              
      //       ),
      //      SizedBox(height:20.0),  ],),
      //      CartWidget(),
      //      CartWidget(),
      //      CartWidget(),
      //      CartWidget(),
      //      CartWidget(),
      //      CartWidget(),
      //      CartWidget(),
      //      CartWidget(),
      //      CartWidget(),
           
           
      //   ],
      //   ),
      // )
      // )
      
      
      );
  }
}