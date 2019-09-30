import 'package:flutter/material.dart';
import 'package:bmnav/bmnav.dart' as bmnav;
import 'package:sprint1/src/widgets/plato_card.dart';
import 'package:sprint1/src/widgets/restaurante_card.dart';


class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbar(),
      
      body: _body(),
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }

  Widget _appbar() {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.white,
      title: Text(
        'Almorzando',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
      actions: <Widget>[
        Container(
          margin: EdgeInsets.only(right: 10.0, top: 5.0),
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_none,
              color: Colors.pink,
            ),
            iconSize: 30.0,
          ),
        ),
      ],
    );
  }

  Widget _body() {
    return Padding(
      padding: EdgeInsets.only(top: 20.0, left: 35.0,),
      child: ListView(
        children: <Widget>[
          Text(
            '¿Qué hay para',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 30.0),
          ),
          Text(
            'almorzar hoy?',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 30.0),
          ),
          SizedBox(
            height: 15.0,
          ),
          Row(
            children: <Widget>[
              _search(),
              SizedBox(
                width: 5.0,
              ),
              _filter(),
            ],
          ),
          SizedBox(height: 30.0,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Platos recomendados', style: TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.bold),),
              SizedBox(height: 10.0,),
              _homePlatos()
            ],
          ),
          SizedBox(height: 20.0,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Restaurantes', style: TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.bold),),
                    InkWell(
                      onTap: (){
                        print('Funciona');
                      },
                      child: Text('VER TODOS', style: TextStyle(color: Colors.pink, fontWeight: FontWeight.bold,fontSize: 16.0),),
                    ),
                    //SizedBox(width: 2.0,)
                  ],
                ),
              ),
              SizedBox(height: 15.0,),
              RestauranteCard(),
              RestauranteCard(),
              RestauranteCard(),
              RestauranteCard(),
              RestauranteCard(),
              RestauranteCard(),
              RestauranteCard(),
              RestauranteCard(),
              RestauranteCard(),
              RestauranteCard(),

              
            ],
          ),
          
        ],
      ),
    );
  }

  Widget _search() {
    return GestureDetector(
      onTap: () {
        print('funciona');
      },
      child: Container(
        width: 260.0,
        height: 60.0,
        decoration: BoxDecoration(color: Colors.white,
            //shape: BoxShape.rectangle,
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 2.0, // has the effect of softening the shadow
                //spreadRadius: 2.0, // has the effect of extending the shadow
                //offset: Offset(0.0, 0.0),
              )
            ]),
        child: Row(
          children: <Widget>[
            SizedBox(
              width: 8.0,
            ),
            Icon(
              Icons.search,
              size: 35.0,
              color: Colors.pink,
            ),
            SizedBox(
              width: 8.0,
            ),
            Text(
              'Buscar restaurante',
              style: TextStyle(color: Colors.black, fontSize: 18.0),
            )
          ],
        ),
      ),
    );
  }

  Widget _filter() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 60.0,
        height: 60.0,
        //color: Colors.white,
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 2.0)]),
        child: Icon(
          Icons.filter_list,
          color: Colors.pink,
        ),
      ),
    );
  }

  Widget _homePlatos(){
    return Container(
      decoration: BoxDecoration(
        //color: Colors.blueAccent
      ),
      height: 200.0,
      width: double.infinity,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          PlatoCard(),
          PlatoCard(),
          PlatoCard(),
          PlatoCard(),
          PlatoCard(),
          PlatoCard(),
          PlatoCard(),
          PlatoCard(),
          PlatoCard(),
          PlatoCard(),
        ],
      ),
    );
  }

  Widget _bottomNavigationBar() {
    
    return bmnav.BottomNav(

      iconStyle: bmnav.IconStyle(
        onSelectColor: Colors.pink,
        onSelectSize: 32.0,
        size: 28.0
      ),
      elevation: 8.0,
      items: [
        bmnav.BottomNavItem(Icons.home),
        bmnav.BottomNavItem(Icons.search),
        bmnav.BottomNavItem(Icons.favorite),
        bmnav.BottomNavItem(Icons.person)

      ],
    );
  }
}

