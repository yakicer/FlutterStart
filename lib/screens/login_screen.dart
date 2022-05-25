import 'package:flutter/material.dart';
import 'package:flutter_pages/screens/home_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_pages/screens/select_profile_screen.dart';
import 'package:flutter_pages/screens/sign_up_screen.dart';
import 'package:flutter_pages/screens/profile_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key,required this.kullaniciTuru}) : super(key: key);
  final style = const TextStyle(fontSize: 30, fontWeight: FontWeight.normal, color: Colors.green);
  final String kullaniciTuru;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 120.0),


        child: Column(
          children: [
            Container(
              height: 200.0,
              width: 200.0,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image:  AssetImage('assets/images/iconlogin.jpeg'),
                      fit: BoxFit.fill
                  ),
                  shape: BoxShape.circle
              ),
            ),

            Text('$kullaniciTuru Girişi',
              style: GoogleFonts.libreBaskerville(
              textStyle: style,
            ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0,vertical: 20.0),

              child: TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  label: const Text('Email'),
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
                  label: const Text('Sifre'),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                  ),
                ),
              ),
            ),

            SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              height: MediaQuery.of(context).size.height / 20,
              child: ElevatedButton(onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => HomePageWidget()));
              }, child: const Text('Giriş Yap'),
                style:  ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        )
                    )
                ),),
            ),
            const SizedBox(height: 20,),
            SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              height: MediaQuery.of(context).size.height / 20,
              child: ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen(kullaniciTuru: kullaniciTuru)));
              }, child: const Text('Kayıt ol'),style:  ButtonStyle(
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
