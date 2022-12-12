import 'package:bmi_calc/age.dart';
import 'package:bmi_calc/weight.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color color = Colors.black54;
  double height = 120;
  bool isMale = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
        centerTitle: true,
        backgroundColor: Colors.black87,
      ),
      body:
      Container(
        color: Colors.black87,
        child: Column(
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),

                  child: Row(
                    children: [
                      Expanded(
                        child:
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isMale = true;
                            });
                          },
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.male_outlined,
                                  color: Colors.white,
                                  size: 100,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text('MALE',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white
                                  ),
                                )
                                ,

                              ],

                            ),
                            decoration: BoxDecoration(
                              color: isMale ? Colors.grey : Colors
                                  .black54,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),

                      ),

                      SizedBox(width: 20,),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isMale = false;
                            });
                          },
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.female_sharp,
                                  color: Colors.white,
                                  size: 100,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text('Female',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white
                                  ),
                                )
                                ,

                              ],

                            ),
                            decoration: BoxDecoration(
                              color: !isMale ? Colors.grey : Colors
                                  .black54,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),


                ),
              ),
            ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.black54,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('HEIGHT',
                              style: TextStyle(
                                  fontSize: 20,

                                  color: Colors.white
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [

                                Text('${height.round()} ',
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.white
                                  ),


                                ),
                                Text('CM',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white
                                  ),)
                              ],
                            ),
                            Slider(
                              inactiveColor: Colors.white,
                              activeColor: Colors.red,
                              value: height,
                              onChanged: (value) {
                                setState(() {
                                  height = value;
                                });
                                print(value.round());
                              },
                              max: 222,
                              min: 80,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(

              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black54,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('AGE',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Consumer<Age>(
                              builder: (context, provider, child) {
                                return Text('${provider.age}',
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.white
                                  ),
                                );
                              },
                            ),
                            SizedBox(height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(onPressed: () {
                                  Provider.of<Age>(
                                      context, listen: false).decrementAge();
                                },
                                    backgroundColor: Colors.grey[800],
                                    mini: true,
                                    child: Icon(
                                      Icons.remove,
                                      size: 20,
                                      color: Colors.grey,
                                    )),
                                SizedBox(
                                  width: 5,
                                ),
                                FloatingActionButton(onPressed: () {
                                  Provider.of<Age>(
                                      context, listen: false).incrementAge();
                                },
                                    backgroundColor: Colors.grey[800],
                                    mini: true,
                                    child: Icon(
                                      Icons.add,
                                      size: 20,
                                      color: Colors.grey,
                                    ))
                              ],
                            ),

                          ],

                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.black54,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('WEIGHT',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Consumer<Weight>(
                              builder: (context, provider, child) {
                                return Text('${provider.weight}',
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.white
                                  ),
                                );
                              },
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(onPressed: () {
                                  Provider.of<Weight>(
                                      context, listen: false).decrementWeight();
                                },
                                    backgroundColor: Colors.grey[800],
                                    mini: true,
                                    child: Icon(
                                      Icons.remove,
                                      size: 20,
                                      color: Colors.grey,
                                    )),
                                SizedBox(
                                  width: 5,
                                ),
                                FloatingActionButton(onPressed: () {
                                  Provider.of<Weight>(
                                      context, listen: false).incrementWeight();
                                },
                                    backgroundColor: Colors.grey[800],
                                    mini: true,
                                    child: Icon(
                                      Icons.add,
                                      size: 20,
                                      color: Colors.grey,
                                    ))
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),

            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(15),
                      topRight: Radius.circular(15))
              ),
              child: MaterialButton(onPressed: () {



              },
                child: Text('Calculate',
                  style: TextStyle(fontSize: 20,
                      color: Colors.white
                  ),
                ),
                height: 45,
              ),
            )

          ],
        ),
      ),
    );
  }
}
