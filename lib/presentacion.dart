import 'package:flutter/material.dart';
import 'login.dart';


class Presentacion extends StatefulWidget{
  static String id = 'presentacion';

  @override
  PresentacionState createState() => PresentacionState();

}
class PresentacionState extends State<Presentacion>{
  @override
  Widget build(BuildContext context){
    return SafeArea(child: Scaffold(
      backgroundColor:Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
          title: Text('REPARAQUEN',
              style: TextStyle(

              color: Colors.yellow,
          ),
      ),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 300),
        decoration: BoxDecoration(
            image:DecorationImage(
                image: AssetImage("assets/logo.png"),
                fit: BoxFit.contain,
                alignment: Alignment.topCenter)

        ),


        child: Column (

          mainAxisAlignment: MainAxisAlignment.center,
          children: [


            Text('Esta app consiste en marcar las reparaciones escolares a arreglar, donde un directivo o encargado de mantenimiento pueda subir la reparación que desee  la escuela (teniendo un registro de las reparaciones que le urgen a la escuela en la app), tendrá un plazo de 10 días (máximo) para reparar el daño, en caso contrario pasara a una lista de espera a revisar.',textAlign: TextAlign.center,
              style: TextStyle(

                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20.0,),
            _bottonLogin(),


          ],
        ),

      ),
    )
    );
  }



  Widget  _bottonLogin() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot ) {
          return RaisedButton(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 15.0),
                child: Text('Ir al login',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 10.0,
              color: Colors.yellow,
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext) =>Login())
                );
              }
          );
        }
    );
  }
}