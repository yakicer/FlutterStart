import 'package:flutter/material.dart';
import 'package:flutter_pages/screens/profile_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final style = const TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.purple);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBar(
          bottom: PreferredSize(
              child: Container(
                color: Colors.green,
                height: 4.0,
              ),
              preferredSize: Size.fromHeight(4.0)),
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          leading: Align(
            alignment: AlignmentDirectional(0, 0),
            child: IconButton(
              icon: Icon(
                Icons.dehaze,
                color: Colors.green,
                size: 40,
              ),
              onPressed: () {
                print('IconButton pressed ...');
              },
            ),
          ),
          flexibleSpace: Align(
            alignment: Alignment(0, 1/2),
            child: Text(
              'Uygulama Adı',
              style: GoogleFonts.libreBaskerville(
                textStyle: style,
              ),
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.person,
                color: Colors.green,
                size: 40,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen()));
              },
            ),
          ],
          elevation: 2,
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Align(
                  alignment: AlignmentDirectional(0, 1),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                        child: Material(
                          color: Colors.transparent,
                          elevation: 0,
                          child: Container(
                            width: 500,
                            height: 100,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              border: Border(
                                top:BorderSide(
                                color: Colors.green,
                                width: 5,
                                ),
                              ),
                            ),
                            alignment: AlignmentDirectional(-0.0, 0),
                            child: Stack(
                              alignment: AlignmentDirectional(-0.0, -0.0),
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-1, 0),
                                  child:Container(
                                    width: 100,
                                    height: 100,

                                  child: IconButton(
                                    icon: Icon(
                                      Icons.settings,
                                      color: Colors.green,
                                      size: 50,
                                    ),
                                    onPressed: () {
                                      print('IconButton pressed ...');
                                    },
                                  ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-0.3, 0),
                                  child:Container(
                                    width: 110,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      border: Border(
                                        right:BorderSide(
                                          color: Colors.green,
                                          width: 5,
                                        ),
                                        left:BorderSide(
                                          color: Colors.green,
                                          width: 5,
                                        ),
                                      ),
                                    ),

                                    child: IconButton(
                                      icon: Icon(
                                        Icons.notifications,
                                        color: Colors.green,
                                        size: 50,
                                      ),
                                      onPressed: () {
                                        print('IconButton pressed ...');
                                      },
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.4, 0),
                                  child:Container(
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      border: Border(
                                        right:BorderSide(
                                          color: Colors.green,
                                          width: 5,
                                        ),
                                      ),
                                    ),

                                    child: IconButton(
                                      icon: Icon(
                                        Icons.person_add,
                                        color: Colors.green,
                                        size: 50,
                                      ),
                                      onPressed: () {
                                        print('IconButton pressed ...');
                                      },
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(1, 0),
                                  child:Container(
                                    width: 100,
                                    height: 100,

                                    child: IconButton(
                                      icon: Icon(
                                        Icons.chat,
                                        color: Colors.green,
                                        size: 50,
                                      ),
                                      onPressed: () {
                                        print('IconButton pressed ...');
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
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
