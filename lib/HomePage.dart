import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'CalculatorPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});


  @override
  State<HomePage> createState() => _HomepageState();
}

class _HomepageState extends State<HomePage> {

  void click(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => CalculatorPage()));

  }

  @override
  Widget build(BuildContext context) {
    return Container(
        //color: Color(0x90C1121F),
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/gifs/giphy.gif'))),
        child: Align(
        alignment: Alignment.center,
        child: Padding(padding: EdgeInsets.all(10),
        child: Container(
          width: 500.0,
          height: 130.0,
          //color: Colors.white,
          child: Column(children: <Widget>[ElevatedButton(
                onPressed: () => {this.click()},
                child: Text('Go to calculator', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFb5179e),
                  foregroundColor: Color(0xFFfdf0d5),
                  shadowColor: Color(0xFFf72585),
                  elevation: 7,
                  minimumSize: const Size(120, 50),

                )),
            SizedBox(height: 5),

            ElevatedButton(
                onPressed: () => {SystemNavigator.pop()},
                child: Text('Quit.', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF3f37c9),
                  foregroundColor: Color(0xFFfdf0d5),
                ),
            )
        ]),
      )
          
      )
    ));
  }
}
