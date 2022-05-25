import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_pages/screens/login_screen.dart';

class SelectProfileScreen extends StatelessWidget {

  final style = const TextStyle(fontSize: 62, fontWeight: FontWeight.w900, color: Colors.white);
  final style1 = const TextStyle(fontSize: 30, fontWeight: FontWeight.normal, color: Colors.white);
  const SelectProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/aaa.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Text('WELCOME !',
              style: GoogleFonts.dancingScript(
                textStyle: style,
              ),
            ),
            const SizedBox(height: 100,),
            SizedBox(
              width: MediaQuery.of(context).size.width / 1.8,
              height: MediaQuery.of(context).size.height / 15,
              child: ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(kullaniciTuru: 'Diyetisyen',)));},

                child:  Text('Diyetisyen',
                    style: GoogleFonts.libreBaskerville(
                      textStyle: style1,
                    )
                ),
                style:  ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        )
                    )
                ),
              ),
            ),
            const SizedBox(height: 35,),
            SizedBox(
              width: MediaQuery.of(context).size.width / 1.8,
              height: MediaQuery.of(context).size.height / 15,
              child: ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(kullaniciTuru: 'Danışan',)));
              }, child:  Text('Danışan',
                  style: GoogleFonts.libreBaskerville(
                    textStyle: style1,
                  )
              ),
                style:  ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        )
                    )
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
