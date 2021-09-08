import 'package:country_icons/country_icons.dart';
import 'package:assignment_designing/welcome_back.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    //home: browse(),
      home: welcome_back(),
    );
  }

}
class browse extends StatelessWidget {
  const browse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: const EdgeInsets.all(40),
        color: Color(0xFFffe9f5),
        child: Column(
          children: [
            Expanded(flex: 5, child: Placeholder()),
           Expanded(
             flex: 5,
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.center,
             children: [
              Padding(
                padding: const EdgeInsets.only(top: 40),

                child: Text('Browser Popular Podcaster',

                  textAlign: TextAlign.center,
                  style: GoogleFonts.publicSans(
                    height: 1.5,
                    color: Color(0xFF110d0f),
                    fontSize: 35,
                      fontWeight: FontWeight.bold
                  ),
                ),

              ),

               Padding(
                 padding: const EdgeInsets.all(10.0),
                 child: Text(
                   'A paragraph is a brief piece of writing thats around seven to ten sentences long. ',
                   textAlign: TextAlign.center,
                   style: GoogleFonts.quicksand(color: Color(0xFF9b9ba7)),
                 ),
               ),
             ],
             ),
           ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                        color: Color(0xFFb3a8ae),
                        borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                        color: Color(0xFFb3a8ae),
                        borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                        color: Color(0xFFb3a8ae),
                        borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                )
              ],
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Container(
                  child: Center(child: Text('Skip'),),
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Color(0xFFccc1c7),
                      borderRadius: BorderRadius.circular(30)
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>subscribe()));
                  },
                  child: Container(
                    child: Center(child: Text('Next',style: TextStyle(
                      color: Colors.white
                    ),),),
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Color(0xFFf68322),
                        borderRadius: BorderRadius.circular(30)
                    ),
                  ),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}

class subscribe extends StatelessWidget {
  const subscribe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second Screen'),),
      body: Container(
        padding: const EdgeInsets.all(40),
        color: Color(0xFFe5fbd4),
        child: Column(
          children: [
            Expanded(flex: 5, child: Placeholder()),
            Expanded(
              flex: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40),

                    child: Text('Subscribe Your Favourite',

                      textAlign: TextAlign.center,
                      style: GoogleFonts.publicSans(
                          height: 1.5,
                          color: Color(0xFF110d0f),
                          fontSize: 35,
                          fontWeight: FontWeight.bold
                      ),
                    ),

                  ),

                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'A paragraph is a brief piece of writing thats around seven to ten sentences long. ',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.quicksand(color: Color(0xFF9b9ba7)),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Container(
                  child: Center(child: Text('Skip'),),
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Color(0xFFccc1c7),
                      borderRadius: BorderRadius.circular(30)
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>stream()));
                  },
                  child: Container(
                    child: Center(child: Text('Next',style: TextStyle(
                        color: Colors.white
                    ),),),
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Color(0xFFf68322),
                        borderRadius: BorderRadius.circular(30)
                    ),
                  ),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}

class stream extends StatelessWidget {
  const stream({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second Screen'),),
      body: Container(
        padding: const EdgeInsets.all(40),
        color: Color(0xFFddf0f7),
        child: Column(
          children: [
            Expanded(flex: 5, child: Placeholder()),
            Expanded(
              flex: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40),

                    child: Text('Stream or Listen Online',

                      textAlign: TextAlign.center,
                      style: GoogleFonts.publicSans(
                          height: 1.5,
                          color: Color(0xFF110d0f),
                          fontSize: 35,
                          fontWeight: FontWeight.bold
                      ),
                    ),

                  ),

                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'A paragraph is a brief piece of writing thats around seven to ten sentences long. ',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.quicksand(color: Color(0xFF9b9ba7)),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Container(
                  child: Center(child: Text('Skip'),),
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Color(0xFFccc1c7),
                      borderRadius: BorderRadius.circular(30)
                  ),
                ),
                Container(
                  child: Center(child: Text('Next',style: TextStyle(
                      color: Colors.white
                  ),),),
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Color(0xFFf68322),
                      borderRadius: BorderRadius.circular(30)
                  ),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}