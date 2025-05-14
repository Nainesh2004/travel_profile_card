import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel Profile Card',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: const MyHomePage(title: 'Travel Profile Card'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        
        title: Text(widget.title),
      ),
      body:Column(
        children: [
          Container(
            height: 90,
            // color: Colors.greenAccent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Explore With Me!',style: TextStyle(
                  fontSize: 35 ,
                  fontWeight: FontWeight.w800,
                  color: Colors.blue
                )),
              ],
            ),
          ),
          Container(
            height: 270,
            width: 250,
            child: Column(
              children: [
                Image.asset('assets/images/nai_image.jpg')
              ],
            ),
          ),
          Container(
            height:380,
            width:360,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Text('Name: ',style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize:24,
                        color: Colors.red
                    )),
                    Text('Nainesh',style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize:24
                    ))
                  ],
                ),
                Row(
                  children: [
                    Text('Location: ',style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize:24,
                        color: Colors.red
                    )),
                    Text('Gujarat, India',style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize:24
                    ))
                  ],
                ),
                Container(
                  height:30,
                  width:360,
                  // color: Colors.grey,
                  child: Row(
                    children: [
                      Text('Favorite Spots: ',style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w800,
                        color: Colors.blue
                      ))
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  width: 300,
                  // color: Colors.grey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              Text('[',style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.w500
                              )),
                              Text('Beach',style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.w300
                              )),
                              Text(']',style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.w500
                              ),)
                            ],
                          ),
                          Row(
                            children: [
                              Text('[',style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.w500
                              )),
                              Text('Mountains',style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.w300
                              )),
                              Text(']',style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.w500
                              ),)
                            ],
                          ),Row(
                            children: [
                              Text('[',style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.w500
                              )),
                              Text('City',style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.w300
                              )),
                              Text(']',style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.w500
                              ),)
                            ],
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              Text('[',style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.w500
                              )),
                              Text('Follow',style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.w300
                              )),
                              Text(']',style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.w500
                              ),)
                            ],
                          ),
                          Row(
                            children: [
                              Text('[',style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.w500
                              )),
                              Text('Message',style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.w300
                              )),
                              Text(']',style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.w500
                              ),)
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(onPressed: (){
                        print('clicked');
                      }, child: Text('Submit')),
                    ],
                  ),
              ],
            ),

          )

        ],
      )

    );
  }
}
