import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  List<dynamic> images = [
    'https://cdn.pixabay.com/photo/2014/04/07/05/25/gummibarchen-318362_960_720.jpg',
    'https://cdn.pixabay.com/photo/2016/03/23/15/00/ice-cream-1274894_960_720.jpg',
    'https://cdn.pixabay.com/photo/2017/11/08/22/18/spaghetti-2931846_960_720.jpg',
    'https://cdn.pixabay.com/photo/2017/03/13/13/39/pancakes-2139844_960_720.jpg',
    'https://cdn.pixabay.com/photo/2014/04/07/05/25/gummibarchen-318362_960_720.jpg',
    'https://cdn.pixabay.com/photo/2016/03/23/15/00/ice-cream-1274894_960_720.jpg',
    'https://cdn.pixabay.com/photo/2017/11/08/22/18/spaghetti-2931846_960_720.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Page'),
      ),
      body: ListView(children: _assembler(images)),
    );
  }

  Widget _cardt1() {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.assistant_photo, color: Colors.cyanAccent),
            title: Text('Kenneth Artaban López López'),
            subtitle: Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry'),
          ),
          Row(
            children: <Widget>[
              FlatButton(
                child: Text('Aceptar'),
                onPressed: () {},
              ),
              FlatButton(
                child: Text('Cancelar'),
                onPressed: () {},
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _cardt2(img) {
    final card = Container(
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage('$img'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 500),
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Descripción de la imagen'),
          ),
        ],
      ),
    );
    return Container(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: card,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.red,
              blurRadius: 10,
              spreadRadius: 5,
              offset: Offset(2.0, 6.0))
        ],
        color: Colors.white,
      ),
    );
  }

  Widget _cardt3(img) {
    final card = Container(
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage(img),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 500),
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Descripción de la imagen'),
          ),
        ],
      ),
    );
    return Container(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: card,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.blue,
              blurRadius: 10,
              spreadRadius: 5,
              offset: Offset(2.0, 6.0))
        ],
        color: Colors.lightBlue,
      ),
    );
  }

  Widget _cardt4(img) {
    final card = Container(
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage(img),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 500),
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Descripción de la imagen'),
          ),
        ],
      ),
    );
    return Container(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: card,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.yellow,
              blurRadius: 10,
              spreadRadius: 5,
              offset: Offset(2.0, 6.0))
        ],
        color: Colors.yellow[100],
      ),
    );
  }

  List<Widget> _assembler(List<dynamic> pics) {
    final List<Widget> cards = [];
    final widgetSpacedTemp = SizedBox(height: 30);
    var widgetCardTemp;
    int contadorCicled = 1;

    var widgetFirstCardTemp = _cardt1();
    cards..add(widgetFirstCardTemp);
    pics.forEach((singleImage) {
      switch (contadorCicled) {
        case 1:
          widgetCardTemp = _cardt2(singleImage);
          contadorCicled = 2;
          break;
        case 2:
          widgetCardTemp = _cardt3(singleImage);
          contadorCicled = 3;
          break;
        case 3:
          widgetCardTemp = _cardt4(singleImage);
          contadorCicled = 1;
          break;
      }
      cards..add(widgetSpacedTemp)..add(widgetCardTemp);
    });
    return cards;
  }
}
