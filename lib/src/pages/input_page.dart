import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Inputs'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
        children: <Widget>[_createInput(), Divider(), _refresh()],
      ),
    );
  }

  Widget _createInput() {
    return TextField(
      textCapitalization: TextCapitalization.words,
      decoration: InputDecoration(
          counter: Text('caracteres 0'),
          hintText: 'Nombre Completo',
          labelText: 'Nombre',
          helperText: 'Sólo letras',
          suffixIcon: Icon(Icons.accessibility),
          prefixIcon: Icon(Icons.account_balance),
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))),
      onChanged: (valor) {
        _name = valor;
        print(_name);
      },
    );
  }

  Widget _refresh() {
    return ListTile(
      title: Text('Su nombre es: $_name'),
    );
  }
}
