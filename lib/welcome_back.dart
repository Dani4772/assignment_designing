import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:country_icons/country_icons.dart';
import 'package:country_picker/country_picker.dart';

class welcome_back extends StatelessWidget {
  const welcome_back({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: Container(
          color: Color(0xFFffffff),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Color(0xFFf7f7f7),
                      borderRadius: BorderRadius.circular(30)),
                  child: IconButton(
                    icon: new Icon(Icons.close),
                    onPressed: () {},
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 16.0),
                child: Text(
                  'Welcome',
                  style: GoogleFonts.publicSans(
                      color: Color(0xFF393939),
                      fontSize: 35,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4, left: 16.0),
                child: Text(
                  'Back',
                  style: GoogleFonts.publicSans(
                      color: Color(0xFF393939),
                      fontSize: 35,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 30, left: 16.0, right: 32.0),
                child: TextField(
                  decoration: InputDecoration(labelText: "Email Address"),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 10, left: 16.0, right: 32.0),
                child: TextField(
                  decoration: InputDecoration(labelText: "Password"),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 30, left: 16.0, right: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Sign In',
                      style: GoogleFonts.publicSans(
                          color: Color(0xFF110d0f),
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Color(0xFFfa6501),
                          borderRadius: BorderRadius.circular(30)),
                      child: IconButton(
                        icon: new Icon(
                          Icons.chevron_right,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => language()));
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 30, left: 16.0, right: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.network(
                        'data:image/png;base64,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',
                        height: 30,
                        fit: BoxFit.fill),
                    Image.network(
                        'https://cdn4.iconfinder.com/data/icons/vector-brand-logos/40/Apple-512.png',
                        height: 50,
                        fit: BoxFit.fill),
                    Image.network(
                        'https://img.flaticon.com/icons/png/512/124/124010.png?size=1200x630f&pad=10,10,10,10&ext=png&bg=FFFFFFFF',
                        height: 30,
                        fit: BoxFit.fill),
                  ],
                ),
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => sign_up()));
                    },
                    child: Text(
                      'Sign up',
                      style: GoogleFonts.publicSans(
                        color: Color(0xFF110d0f),
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  Text(
                    'Forgot Password?',
                    style: GoogleFonts.publicSans(
                      color: Color(0xFF110d0f),
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class sign_up extends StatelessWidget {
  const sign_up({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: Container(
          color: Color(0xFFffffff),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Color(0xFFf7f7f7),
                      borderRadius: BorderRadius.circular(30)),
                  child: IconButton(
                    icon: new Icon(Icons.close),
                    onPressed: () {},
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 16.0),
                child: Text(
                  'Sign up and',
                  style: GoogleFonts.publicSans(
                      color: Color(0xFF393939),
                      fontSize: 35,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4, left: 16.0),
                child: Text(
                  'starting learning',
                  style: GoogleFonts.publicSans(
                      color: Color(0xFF393939),
                      fontSize: 35,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 30, left: 16.0, right: 32.0),
                child: TextField(
                  decoration: InputDecoration(labelText: "Name"),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 10, left: 16.0, right: 32.0),
                child: TextField(
                  decoration: InputDecoration(labelText: "Email Address"),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 10, left: 16.0, right: 32.0),
                child: TextField(
                  decoration: InputDecoration(labelText: "Password"),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 30, left: 16.0, right: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Sign up',
                      style: GoogleFonts.publicSans(
                          color: Color(0xFF110d0f),
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Color(0xFFfa6501),
                          borderRadius: BorderRadius.circular(30)),
                      child: IconButton(
                        icon: new Icon(
                          Icons.chevron_right,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => welcome_back()));
                },
                child: Text(
                  'Sign In',
                  style: GoogleFonts.publicSans(
                    color: Color(0xFF110d0f),
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class language extends StatelessWidget {
  const language({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Color(0xFFf9f9f9),
              child: Card(
                child:
                    Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Color(0xFFf7f7f7),
                          borderRadius: BorderRadius.circular(30)),
                      child: IconButton(
                        icon: new Icon(Icons.close),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, left: 16.0),
                    child: Text(
                      'Choose Your',
                      style: GoogleFonts.publicSans(
                          color: Color(0xFF393939),
                          fontSize: 35,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4, left: 16.0),
                    child: Text(
                      'Languages',
                      style: GoogleFonts.publicSans(
                          color: Color(0xFF393939),
                          fontSize: 35,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4,left: 16,bottom: 20),
                    child: Text(
                      'A paragraph is a brief piece of writing thats around seven to ten sentences long. ',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.quicksand(color: Color(0xFF9b9ba7)),
                    ),
                  ),
                ]),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 30, left: 16.0),
              child: Text(
                'I speak',
                style: GoogleFonts.publicSans(
                    color: Color(0xFF393939),
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
            ),

            Card(
              elevation: 5,
              child: ListTile(
                leading: Icon(Icons.icecream),
                title: Text('I like icecream'),
                trailing: Icon(Icons.chevron_right),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
