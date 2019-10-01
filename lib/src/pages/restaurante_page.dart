import 'package:flutter/material.dart';

class RestaurantePage extends StatefulWidget {
  @override
  _RestaurantePageState createState() => _RestaurantePageState();
}

class _RestaurantePageState extends State<RestaurantePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbar(),
      body: _body(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.shopping_basket),
        backgroundColor: Colors.pink,

        onPressed: (){
          
        },
      ),
    );
  }

  Widget _appbar() {

    
    return AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(
        onPressed: (){
          Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_back, color: Colors.pink,),
        iconSize: 30.0,
      ),
      elevation: 0.0,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Gusto Ristorante',style: TextStyle(color: Colors.black),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.access_time, color: Colors.grey,),
              Text('13:00 - 13:30',style: TextStyle(color: Colors.grey))
            ],
          )
        ],
      ),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            onPressed: (){},
            icon: Icon(Icons.notifications_none, color: Colors.pink,),
            iconSize: 30.0,
          )
        )
      ],
    );
  }

  Widget _body() {
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      children: <Widget>[
        Column( //independizar este column con el cardpaltocategoria para pasar parametros
          children: <Widget>[
            Row(
              children: <Widget>[
                Icon(Icons.fastfood, color: Colors.pink, size: 30.0,),
                SizedBox(width: 10.0,),
                Text('Sopas', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20.0),)
              ],
            ),
            _cardPlatoCategoria(),
          ],
        )
      ],

    );
  }

  Widget _cardPlatoCategoria() {
    return GestureDetector(
      onTap: (){
        _mostrarAlertPlato();
      },
      child: Container(
        height: 80.0,
        margin: EdgeInsets.only(top: 20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              blurRadius: 2.0,
              color: Colors.grey.withOpacity(.5),
              //spreadRadius: 0.5
              
              
            )
          ]

        ),

        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text('Nombre de plato')
                ],
              ),
              SizedBox(width: 50.0,),
              Text('7500'),
              SizedBox(width: 10.0,),
              Icon(Icons.add)
            ],
          ),
        )
      ),
    );
  }

  void _mostrarAlertPlato() {

    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context){
        return AlertDialog(
          shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          title: Container(
            
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image(
                image: AssetImage('assets/pizza1.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('Nombre de plato', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
            ],
          ),
        );
      }
    );
  }



    
  
  

  
}