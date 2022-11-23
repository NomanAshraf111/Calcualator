import 'package:calcualtor/components/mybutton.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class HomeScreenCal extends StatefulWidget {
  const HomeScreenCal({super.key});

  @override
  State<HomeScreenCal> createState() => _HomeScreenCalState();
}

class _HomeScreenCalState extends State<HomeScreenCal> {
  var userInput = "";
  var answer = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(122, 0, 0, 0),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: Column(
            children: [
              Spacer(),
              Text(
                userInput.toString(),
                style: TextStyle(color: Colors.white, fontSize: 27),
              ),
              Text(
                answer.toString(),
                style: TextStyle(color: Colors.white, fontSize: 27),
              ),
              Spacer(
                flex: 4,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MyButton(
                    title: 'AC',
                    onPress: () {
                      userInput = '';
                      answer = ''; 
                      setState(() {
                        
                      });
                     
                    },
                  ),
                  MyButton(title: '+/-', onPress: () {
                    userInput  +=   '+/-';
                    setState(() {
                      
                    });
                  }),
                  MyButton(title: '%', onPress: () {
                    userInput  +=   '%';
                    setState(() {
                      
                    });
                    
                    
                  }),
                  MyButton(title: '/', onPress: () {
                    userInput  +=   '/';
                    setState(() {
                      
                    });
                  }),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MyButton(
                    title: '7',
                    onPress: () {
                     setState(() {
                        userInput  = userInput + '7';
                     });
                    },
                  ),
                  MyButton(title: '8', onPress: () {
                     setState(() {
                        userInput = userInput + '8';
                     });
                  }),
                  MyButton(title: '0', onPress: () {
                     setState(() {
                        userInput =  userInput + '0';
                     });
                  }),
                  MyButton(title: 'x', onPress: () {
                    userInput  += 'x';
                      setState(() {
                        
                      });
                  }),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MyButton(
                    title: '4',
                    onPress: () {
                      setState(() {
                        userInput  = userInput + '4';
                      });
                    },
                  ),
                  MyButton(title: '5', onPress: () {
                    setState(() {
                      userInput  = userInput + '5';
                    });
                    
                  }),
                  MyButton(title: '6', onPress: () {
                    userInput  = userInput + '6';
                    setState(() {
                      
                    });
                  }),
                  MyButton(title: '-', onPress: () {
                    userInput  += '-';
                      setState(() {
                        
                      });
                  }),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MyButton(
                    title: '1',
                    onPress: () {
                      userInput  = userInput + '1';
                      setState(() {
                        
                      });
                    },
                  ),
                  MyButton(title: '2', onPress: () {
                    userInput  = userInput + '2';
                    setState(() {
                      
                    });
                  }),
                  MyButton(title: '3', onPress: () {
                    userInput  = userInput + '3';
                    setState(() {
                      
                    });
                  }),
                  MyButton(title: '+', onPress: () {
                    userInput  +=   '+';
                    setState(() {
                      
                    });
                  }),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MyButton(
                    title: '0',
                    onPress: () {
                      userInput  = userInput + '0';
                      setState(() {
                        
                      });
                    },
                  ),
                  MyButton(title: '.', onPress: () {
                    userInput  +=   '.';
                    setState(() {
                      
                    });
                  }),
                  MyButton(title: 'DEL', onPress: () {
                    userInput = userInput.substring(0, userInput.length - 1);
                    setState(() {
                      
                    });
                  }),
                  MyButton(title: '=', onPress: () {
                    onequal();
                    setState(() {
                      
                    });
                  }),
                ],
              ),
              Spacer(
                flex: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onequal(){
      Parser p = Parser();
      Expression expression = p.parse(userInput);
      ContextModel contextModel = ContextModel();

      double eval = expression.evaluate(EvaluationType.REAL, contextModel);

      answer = eval.toString();

      

  }
}
