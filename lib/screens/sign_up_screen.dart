import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key,required this.kullaniciTuru}) : super(key: key);
  String kullaniciTuru;
  final style = const TextStyle(fontSize: 30, fontWeight: FontWeight.normal, color: Colors.green);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 75.0),
        child: Column(
          children: [
            Text('$kullaniciTuru Kayıt Sayfası',style: GoogleFonts.libreBaskerville(
              textStyle: style,
            ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0,vertical: 20.0),
              child: TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  label: Text('Isim'),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0,vertical: 20.0),
              child: TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  label: Text('Soyisim'),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0,vertical: 20.0),
              child: TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  label: Text('E-mail'),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                  ),
                ),
              ),
            ),

            kullaniciTuru == 'Diyetisyen' ?
            Padding(
              padding: const EdgeInsets.only(left: 50.0),
              child: Row(
                children: [
                  Text('Okul belgesi yukle'),
                  SizedBox(width: 40,),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 3,
                    height: MediaQuery.of(context).size.height / 25,
                    child: ElevatedButton(onPressed: (){}, child: Text('Belge Yukle'),style:  ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            )
                        )
                    ),),
                  ),
                ],
              ),
            )
                : Container(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0,vertical: 20.0),
              child: TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  label: Text('Sifre'),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0,vertical: 20.0),
              child: TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  label: Text('Sifre Tekrar'),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                  ),
                ),
              ),
            ),

            SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              height: MediaQuery.of(context).size.height / 20,
              child: ElevatedButton(onPressed: (){}, child: Text('Kayıt Ol'),style:  ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      )
                  )
              ),),
            ),
          ],
        ),
      ),
    );
  }
}
