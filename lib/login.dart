import 'package:flutter/material.dart';


class Login extends StatefulWidget{
  static String id = 'paginaInicioS';
 
  @override
  _LoginState createState() => _LoginState();
  
}
class _LoginState extends State<Login>{
  @override
  Widget build(BuildContext context){
    return SafeArea(child: Scaffold(
      body: Center(
        child: Column (
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ 
            Flexible(child:
           Image.asset('assets/logo.png' ,
              height: 200.0,
            ),
            ),
            SizedBox(height: 15.0,),
            _usuarioTextField(),
            SizedBox(height: 15.0,),
            _contrasenaTextField(),
            SizedBox(height: 20.0,),
            _bottonLogin(),
          ],
        ),
      ),
    )
    );
  }
  Widget _usuarioTextField() {
    return StreamBuilder(builder: (BuildContext context, AsyncSnapshot snapshot ) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 35.0) ,
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
          icon: Icon(Icons.email),
            hintText: 'ejemplo@correo.com',
            labelText: 'Correo Electronico ',
          ),
          onChanged: (value){

          },
        ),
      );
    });
  }
  
  Widget _contrasenaTextField(){
    return StreamBuilder(builder: (BuildContext context, AsyncSnapshot snapshot ) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 35.0) ,
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          obscureText: true,
          decoration: InputDecoration(
            icon: Icon(Icons.lock ),
            hintText: 'Contrasena',
            labelText: 'Contrasena ',
          ),
          onChanged: (value){

          },
        ),

      );
    });
  }
  
Widget  _bottonLogin() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot ) {
          return RaisedButton(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 15.0),
                child: Text('Iniciar Sesion',
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
              onPressed: () {}
          );
        }
         );
        }
}

  
