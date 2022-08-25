import 'package:coffe_app/coffe_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DiveScreen extends StatefulWidget {
  const DiveScreen({Key? key}) : super(key: key);
  static const routeName = '/DiveScreen';

  @override
  State<DiveScreen> createState() => _DiveScreenState();
}

class _DiveScreenState extends State<DiveScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFece0d1),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  height: 300,
                  width: 300.0,
                  color: Colors.brown,
                  child: const Image(
                    image: AssetImage('assets/images/coffe.jpeg'),
                    fit: BoxFit.fill,
                  ))
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 120.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Stay Focused',
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                    fontSize: 30.0,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Get the cup filled of your choice to stay',
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'focused and awake. Different type of coffe',
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'menu, hot lottee cappucino',
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
          SizedBox(
            height: 50.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => const Coffeapp(),));
                    Navigator.pushNamed(context, Coffeapp.routename);
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF947057),
                    

                  ),
                  child: const Text('Dive in -->')
                  
                  
                  ),

              // TextButton(
              //   onPressed: () {},
              //   child: const Text('Dive in -->'),
              // ),
              
              // IconButton(onPressed: () {}, icon: Icon(Icons.person))

              //
              // Container(

              //     height: 50.0,
              //     width: 130.0,
              //     decoration: BoxDecoration(
              //       color:  Color(0xFF967259),
              //       borderRadius: BorderRadius.circular(25.0),

              //     ),
              //     child: Center(child:Text(
              //       'Dive in ->',
              //       style: TextStyle(color: Colors.white),
              //     ) ,) )
            ],
          )
        ],
      ),
    );
  }
}
