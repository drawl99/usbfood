import 'package:flutter/material.dart';

class PlatoCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _card=  Container(
      width: 220.0,
      margin: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10.0), bottomRight: Radius.circular(10.0), topRight: Radius.circular(20.0), topLeft: Radius.circular(20.0)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 2.0
          )
        ]
      ),
      child: Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Container(
              width: 220.0,
              height: 130.0,
              decoration: BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Image(
                image: AssetImage('assets/pizza1.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 10.0,),
          Container(
            margin: EdgeInsets.only(left: 10.0, right: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Nombre plato', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18.0),),
                    Text('Subtitulo'),

                  ],
                ),
                Text('7800'),
                
              ],
            ),
          )
        ],
      )
      

    );

    return GestureDetector(
      onTap: (){
        print('Funciona');
      },
      child: _card,
    );

   

  }
}
