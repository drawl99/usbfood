import 'package:flutter/material.dart';

class RestauranteCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, 'restaurantePage');
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 10.0),
        width: 330.0,
        height: 100.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 2.0,

            )
          ]
        ),
        child: Row(
          children: <Widget>[
            Container(
              height: 100.0,
              width: 100.0,
              child: Image(
                image: AssetImage('assets/restaurante1.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 10.0,),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text('Nombre restaurante', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 15.0),),
                  SizedBox(height: 8.0,),
                  Row(
                    children: <Widget>[
                      Icon(Icons.access_time, color: Colors.grey,), // icono de reloj
                      SizedBox(width: 5.0,),
                      Text('12:30 - 13:00'), //Horario de atencion
                    ],
                  )
                ],
              ),
            )
          ],
        ),
        
      ),
    );
  }
}