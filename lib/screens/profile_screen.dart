import 'package:flutter/material.dart';
import 'package:flutter_pages/screens/home_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_pages/screens/login_screen.dart';
import 'package:flutter_pages/screens/select_profile_screen.dart';

class ProfileScreen extends StatelessWidget {

  final style = const TextStyle(fontSize: 62, fontWeight: FontWeight.bold, color: Colors.white);
  final style1 = const TextStyle(fontSize: 30, fontWeight: FontWeight.normal, color: Colors.white);
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
            color: Colors.white
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            GestureDetector(
                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => HomePageWidget()));
                },
                child: Container(
                    width: 160,
                    height: 160,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/images/default.jpg'
                          ),
                          fit: BoxFit.fill,
                        )
                    )

                )
            ),

            const SizedBox(height: 50,),
            SizedBox(
              width: MediaQuery.of(context).size.width / 1.65,
              height: MediaQuery.of(context).size.height / 15,
              child: ElevatedButton(onPressed: (){
              },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Bilgilerim',
                        style: GoogleFonts.libreBaskerville(
                          textStyle: style1,
                        )),
                    Icon( // <-- Icon
                      Icons.arrow_right,
                      color:Colors.purple,
                      size: 60.0,
                    ),
                  ],
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

            const SizedBox(height: 25,),
            SizedBox(
              width: MediaQuery.of(context).size.width / 1.65,
              height: MediaQuery.of(context).size.height / 15,
              child: ElevatedButton(onPressed: (){
              },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Şifre',
                        style: GoogleFonts.libreBaskerville(
                          textStyle: style1,
                        )),
                    SizedBox(
                      width: 80,
                    ),
                    Icon( // <-- Icon
                      Icons.arrow_right,
                      color: Colors.purple,
                      size: 60.0,
                    ),
                  ],
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

            const SizedBox(height: 25,),
            SizedBox(
              width: MediaQuery.of(context).size.width / 1.65,
              height: MediaQuery.of(context).size.height / 15,
              child: ElevatedButton(onPressed: (){
              },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Kasa',
                        style: GoogleFonts.libreBaskerville(
                          textStyle: style1,
                        )),
                    SizedBox(
                      width: 80,
                    ),
                    Icon( // <-- Icon
                      Icons.arrow_right,
                      color: Colors.purple,
                      size: 60.0,
                    ),
                  ],
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