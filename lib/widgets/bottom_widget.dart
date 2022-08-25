import 'package:flutter/material.dart';

class BottomWidget extends StatelessWidget {
  const BottomWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
              child: Container(
                height: 90.0,
                width: 320.0,
                decoration: const BoxDecoration(
                  color: Color(0xFF936f56),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                      bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0),),
                      
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 70.0,
                      width: 120.0,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15.0),
                            topRight: Radius.circular(15.0)),
                        image: DecorationImage(
                            image: AssetImage('assets/images/bottom.jpg'),
                            fit: BoxFit.fill),
                      ),
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Specially mixed and',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline2!
                                  .copyWith(
                                      color: Color(0xFFdccfc8), fontSize: 14.0),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          children: [
                            Text(
                              'brewed within you',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline2!
                                  .copyWith(
                                      color: Color(0xFFdccfc8), fontSize: 14.0),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          children: [
                            Text(
                              ' must try!',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline2!
                                  .copyWith(
                                      color:  Color(0xFFdccfc8), fontSize: 14.0),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            
            );
  }
}