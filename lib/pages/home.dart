import 'package:flutter/material.dart';
import 'package:workout_app/widgets/ScaffoldBackground.dart';
import 'package:workout_app/widgets/YellowgradientButton.dart';
import 'package:workout_app/widgets/banner.dart';
import 'package:workout_app/widgets/headingText.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Image(height: 0.1, width: 0.1, image: AssetImage('assets/images/logo.png')),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: CircleAvatar(
              backgroundColor: Colors.black,
              radius: 20,
              child: Icon(Icons.bluetooth, color: Colors.deepOrangeAccent,),
            ),
          ),
        ],
      ),
      body: Scaffoldbackground(
        widget: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              SizedBox(height: 90),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 300,
                    height: 125,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: RadialGradient(
                        colors: [Colors.orangeAccent, Colors.black],
                        center: Alignment.topRight,
                        radius: 0.85,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Image(image: AssetImage('assets/images/logo.png'), width: 20, height: 20,),
                                      SizedBox(width: 4,),
                                      Text('Helios', style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                  SizedBox(height: 4),
                                  Text('Welcome Back,', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                                  Text('Nick!', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                                  SizedBox(height: 4),
                                  Container(
                                    height: 25,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      color: Colors.deepOrangeAccent,
                                      borderRadius: BorderRadius.circular(8),
                              
                                    ),
                                    child: Center(
                                      child: Text('Try Premium Now!', style: TextStyle(color: Colors.white, fontSize: 10)),
                                    ),
                                  )
                                ],
                              ),
                              Expanded(child: SizedBox(width: 16)), 
                              Image(image: AssetImage('assets/images/bannerimage.png'),)
                            ],
                          ),
                        ))
                      ]
                    )
                  ),
                  SizedBox(width: 20,),
                  Container(
                    width: 300,
                    height: 125,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: RadialGradient(
                        colors: [Colors.deepOrangeAccent, Colors.orangeAccent],
                        center: Alignment.topRight,
                        radius: 0.85,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Image(image: AssetImage('assets/images/logo.png'), width: 20, height: 20,),
                                      SizedBox(width: 4,),
                                      Text('Helios', style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                  SizedBox(height: 4),
                                  Text('Leave us', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                                  Text('Feedback!!', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                                  SizedBox(height: 4),
                                  Center(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Icon(Icons.star, color: Colors.white, size: 18),
                                        Icon(Icons.star, color: Colors.white, size: 18),
                                        Icon(Icons.star, color: Colors.white, size: 18),
                                        Icon(Icons.star, color: Colors.white, size: 18),
                                        Icon(Icons.star, color: Colors.white, size: 18),
                                      ],
                                    )
                                  )
                                ],
                              ),
                              Expanded(child: SizedBox(width: 16)), 
                              Image(image: AssetImage('assets/images/bannerimage.png'),)
                            ],
                          ),
                        ))
                      ]
                    )
                  ),
                ],
              ),
              SizedBox(height: 40),
              Row(
                children: [
                  Text('Overall Progress:', style: TextStyle(color: Colors.white, fontSize: 15)),
                ],
                
              ),
              SizedBox(height: 10),
              Container(
                height: 12,
                child: LinearProgressIndicator(
                  value: 0.7,
                  backgroundColor: Colors.grey,
                  color: Colors.deepOrangeAccent,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              SizedBox(height: 350),
              GradientButton(text: ' +  Create New Plan', onPressed: () {}),
              SizedBox(height: 20,),
              SizedBox(
                width: 343,
                height: 50,
                child: OutlinedButton(
                        onPressed: (){}, 
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(color: Colors.deepOrangeAccent)
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.bar_chart, color: Colors.orangeAccent, size: 18),
                              SizedBox(width: 10,),
                              Headingtext(text: 'See Metrics', size: 15,)
                            ],
                          ),
                        )
                      ),
              ),
            ],
          ),
        ),

      ),
    );
  }
}