import 'package:flutter/material.dart';

class PointsCounter extends StatefulWidget {
  const PointsCounter({super.key});

  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int counterA=0;
  int counterB=0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('Points Counter',style: TextStyle(color: Colors.white),),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text('Team A',style: TextStyle(fontSize: 30),),
                    const SizedBox(height: 30,),
                     Text("$counterA",style: const TextStyle(fontSize: 100),),
                    const SizedBox(height: 50,),
                    Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Colors.orange),
                      child: MaterialButton(
                        onPressed: () {
                          setState(() {
                            counterA++;
                          });
                        },
                        child: const Text('Add 1 Points',style: TextStyle(color: Colors.white),),
                      ),
                    ),
                    const SizedBox(height: 30,),
                    Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Colors.orange),
                      child: MaterialButton(
                        onPressed: () {
                          setState(() {
                            counterA=counterA+2;
                          });
                        },
                        child: const Text('Add 2 Points',style: TextStyle(color: Colors.white),),
                      ),
                    ),
                    const SizedBox(height: 30,),
                    Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Colors.orange),
                      child: MaterialButton(
                        onPressed: () {
                          setState(() {
                            counterA=counterA+3;
                          });
                        },
                        child: const Text('Add 3 Points',style: TextStyle(color: Colors.white),),
                      ),
                    ),
                  ],
                ),
              ),
              const VerticalDivider(endIndent: 400,color: Colors.black,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text('Team B',style: TextStyle(fontSize: 30),),
                    const SizedBox(height: 30,),
                     Text('$counterB',style: const TextStyle(fontSize: 100),),
                    const SizedBox(height: 50,),
                    Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Colors.orange),
                      child: MaterialButton(
                        onPressed: () {
                          setState(() {
                            counterB++;
                          });
                        },
                        child: const Text('Add 1 Points',style: TextStyle(color: Colors.white),),
                      ),
                    ),
                    const SizedBox(height: 30,),
                    Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Colors.orange),
                      child: MaterialButton(
                        onPressed: () {
                          setState(() {
                            counterB=counterB+2;
                          });
                        },
                        child: const Text('Add 2 Points',style: TextStyle(color: Colors.white),),
                      ),
                    ),
                    const SizedBox(height: 30,),
                    Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Colors.orange),
                      child: MaterialButton(
                        onPressed: () {
                          setState(() {
                            counterB=counterB+3;
                          });
                        },
                        child: const Text('Add 3 Points',style: TextStyle(color: Colors.white),),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 60,),
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Colors.red),
            child: MaterialButton(
              onPressed: () {
                setState(() {
                  counterA=0;
                  counterB=0;
                });
              },
              child: const Text('Reset',style: TextStyle(color: Colors.white),),
            ),
          ),

        ],
      ),
    );
  }
}
