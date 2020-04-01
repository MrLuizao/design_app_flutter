import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  
  final titleStyle    = TextStyle( fontSize: 20.0,  color: Colors.white );
  final subTitleStyle = TextStyle( fontSize: 18.0, color: Colors.grey );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _crearImagen(context),
            _crearTitulo(),
            _crearAcciones(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
          ],
        ),
      )
    );
  }

  Widget _crearImagen(BuildContext context) {
    return Container(
      width: double.infinity,
      child: GestureDetector(
        onTap: ()=> Navigator.pushNamed(context, 'botones'),
        child: Image(
          image: NetworkImage('https://pm1.narvii.com/6284/98c674ea7e5b894dbaf257c49db266f910479c30_00.jpg'),
          height: 350.0,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _crearTitulo() {
    
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: <Widget>[

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Vegeta (ベジータ) ', style: titleStyle ),
                  SizedBox( height: 7.0 ),
                  Text('Príncipe Saiyajin', style: subTitleStyle ),
                ],
              ),
            ),

            Icon( Icons.star, color: Colors.yellowAccent, size: 30.0 ),
            Text('41', style: TextStyle( fontSize: 20.0, color: Colors.grey ) )

          ],
        ),
      ),
    );
  }

  Widget _crearAcciones() {

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[

        _accion( Icons.call, 'CALL' ),
        _accion( Icons.near_me, 'ROUTE' ),
        _accion( Icons.share, 'Share'),

      ],
    );

  }

  Widget _accion(IconData icon, String texto ) {

    return Column(
      children: <Widget>[
        Icon( icon, color: Colors.red, size: 40.0 ),
        SizedBox( height: 5.0 ),
        Text( texto, style: TextStyle( fontSize: 15.0, color: Colors.yellowAccent ), )
      ],
    );

  }

  Widget _crearTexto() {

    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric( horizontal: 40.0 ),
        child: Text(
          'Vegeta es un personaje ficticio perteneciente a la raza llamada saiyajin, del manga y anime Dragon Ball. Su nombre proviene de su padre, el Rey Vegeta, así como de su planeta de origen, el cual recibió su nombre tras su conquista por parte de los saiyajin. El nombre Vegeta es una deformación del inglés Vegetable (ベジタブル Begitaburu?, Vegetal).Vegeta fue el antagonista principal de Dragon Ball Z hasta el comienzo de la saga de Freezer, posteriormente se convirtió en el deuteragonista de la serie',
          style: titleStyle,
          textAlign: TextAlign.justify,
        ),
      ),
    );

  }

}

// class BasicPage extends StatelessWidget {

//   final titleStyle    = TextStyle( fontSize: 20.0, fontWeight: FontWeight.bold );
//   final subTitleStyle = TextStyle( fontSize: 18.0 );

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.yellow,
//       body: Column(
//         children: <Widget>[
//           Image(
//             image: NetworkImage('https://pm1.narvii.com/6284/98c674ea7e5b894dbaf257c49db266f910479c30_00.jpg')
//           ),

//           Container(
//             padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
//             child: Row(
//               children: <Widget>[
//                 Expanded(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: <Widget>[
//                       Text('Vegeta (ベジータ) ', style: titleStyle ),
//                       SizedBox( height: 7.0 ),
//                       Text('Príncipe Saiyajin', style: subTitleStyle ),
//                     ],
//                   ),
//                 ),

//                 Icon( Icons.score, color: Colors.red, size: 30.0 ),
//                 Text('9/10', style: TextStyle( fontSize: 20.0 ) )

//               ],
//             ),
//           ),
//         ],
//       )
//     );
//   }
// }