import 'package:flutter/material.dart';

void main(){
    runApp(new MaterialApp(home: new sliderView()));
  //runApp(new stackView());
}

class sliderView extends StatefulWidget {
  @override
  _sliderViewState createState() => _sliderViewState();
}

class _sliderViewState extends State<sliderView> {

  double dvalue = 1.0;

  void sliderMethod(value){
    setState(() {
      dvalue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[
           new Slider(
               value: dvalue,
               min: 1.0,
               max: 10.0,
               onChanged: (double num){
                 sliderMethod(num);
               }
           ),
           new Text('$dvalue')
         ],
        ),
      ),
    );
  }
}



class radioButtonView extends StatefulWidget {
  @override
  _radioButtonViewState createState() => _radioButtonViewState();
}

class _radioButtonViewState extends State<radioButtonView> {

  int rvalue = 0;

  void radioMethod(value){
    setState(() {
      rvalue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Radio(value: 1, groupValue: rvalue, onChanged: (int rb){
              radioMethod(rb);
            }),
            new Radio(value: 2, groupValue: rvalue, onChanged: (int rb){
              radioMethod(rb);
            }),
            new Radio(value: 3, groupValue: rvalue, onChanged: (int rb){
              radioMethod(rb);
            })
          ],
        ),
      ),
    );
  }
}


class checkBoxView extends StatefulWidget {
  @override
  _checkBoxViewState createState() => _checkBoxViewState();
}

class _checkBoxViewState extends State<checkBoxView> {

  bool cbool = false;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Checkbox(value: cbool, onChanged: (bool cb){
          setState(() {
            cbool = cb;
          });
        }),
      ),
    );
  }
}




class raiseButton extends StatefulWidget {
  @override
  _raiseButtonState createState() => _raiseButtonState();
}

class _raiseButtonState extends State<raiseButton> {

  String ptest = 'Empty';

  void raisebuttonmenthod(value){
     setState(() {
       ptest = value;
     });
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('RaiseButton'),),
      body: new Column(
        children: <Widget>[
          new RaisedButton(
              onPressed:(){
                raisebuttonmenthod('You Pressed Raised Button');
              },
              child: new Text('Raised Button')
          ),
          new FlatButton(
              onPressed: (){
                raisebuttonmenthod('You Pressed Flat Button');
              },
              child: new Text('Flat Button')),
          new Center(
            child: new Text(ptest),
          )
        ],
      ),
    );
  }
}



class textfieldBasic extends StatefulWidget {
  @override
  _textfieldBasicState createState() => _textfieldBasicState();
}

class _textfieldBasicState extends State<textfieldBasic> {

  String ptext = 'Hello';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
    appBar: new AppBar(title: new Text('TextField'),),
      body: new Column(
        children: <Widget>[
          new TextField(
             onSubmitted: (String txt){
               setState(() {
                 ptext = txt;
               });
             },
             decoration: new InputDecoration(
               hintText: 'Placeholder',
               labelText: 'Name'
             ),
          ),
          new Text(ptext)
        ],
      ),
    );
  }
}



class tabBarView extends StatefulWidget {
  @override
  _tabBarViewState createState() => _tabBarViewState();
}

class _tabBarViewState extends State<tabBarView> with SingleTickerProviderStateMixin{

  TabController _tcontrol;

  @override
  void initState() {
    _tcontrol = new TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
    appBar: new AppBar(
      title: new Text('TabBar'),
      bottom: new TabBar(
          controller: _tcontrol ,
          tabs: <Widget> [
            new Tab(icon: new Icon(Icons.home),),
            new Tab(icon: new Icon(Icons.supervisor_account),),
            new Tab(icon: new Icon(Icons.close),)
          ],
      ),
    ),
      body: new TabBarView(
        controller: _tcontrol,
        children: <Widget>[
          new Center(child: new Text('Welcome to Home'),),
          new Center(child: new Text('Welcome to Supervisor'),),
          new Center(child: new Text('Welcome to Close'),),
        ],
      ),

      bottomNavigationBar: new Material(
        color: Colors.blue,
        child: new TabBar(
          controller: _tcontrol ,
          tabs: <Widget> [
            new Tab(icon: new Icon(Icons.home),),
            new Tab(icon: new Icon(Icons.supervisor_account),),
            new Tab(icon: new Icon(Icons.close),)
          ],
        ),
      ),
    );
  }
}





class appBarAction extends StatefulWidget {
  @override
  _appBarActionState createState() => _appBarActionState();
}

class _appBarActionState extends State<appBarAction> {

  String temptext = 'Empty';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
    appBar: new AppBar(
      title: new Text('AppBar Widget'),
      leading: new Icon(Icons.menu),
      actions: <Widget>[
        new IconButton(icon: new Icon(Icons.arrow_forward), onPressed: (){
          setState(() {
            temptext = 'This is Arrow';
          });
        }),
        new IconButton(icon: new Icon(Icons.close), onPressed: (){
          setState(() {
            temptext = 'This is Close';
          });
        }),
      ],
    ),
      body: new Center(
        child: new Text(temptext),
      ),
    );
  }
}




class appBarMod extends StatefulWidget {
  @override
  _appBarModState createState() => _appBarModState();
}

class _appBarModState extends State<appBarMod> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.red,
        title: new Text('App Bar'),
        centerTitle: false,
        elevation: 10.0,
        titleSpacing: 50.0,
        toolbarOpacity: 0.5,
      ),
    );
  }
}


class gridView extends StatefulWidget {
  @override
  _gridViewState createState() => _gridViewState();
}

class _gridViewState extends State<gridView> {

  List<int> _items = new List();

  @override
  void initState() {
    // TODO: implement initState
     for(int i=0;i<50;i++){
       _items.add(i);
     }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new GridView.builder(
          itemCount: _items.length ,
          gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
          itemBuilder: (BuildContext context, int index) {
            return new Card(
              color: Colors.blue,
              child: new Padding(padding: const EdgeInsets.all(20.0)),
            );
          }
      ),
    );
  }
}



class stackView extends StatefulWidget {
  @override
  _stackViewState createState() => _stackViewState();
}

class _stackViewState extends State<stackView> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Stack(
        alignment: Alignment.center,
        children: <Widget>[
          new Card(color: Colors.pink,child: new Padding(padding: const EdgeInsets.all(200.0)),),
          new Card(color: Colors.green,child: new Padding(padding: const EdgeInsets.all(100.0)),),
          new Card(color: Colors.red,child: new Padding(padding: const EdgeInsets.all(50.0)),),
          new Card(color: Colors.blue,child: new Padding(padding: const EdgeInsets.all(30.0)),),
          new Card(color: Colors.orange,child: new Padding(padding: const EdgeInsets.all(10.0)),),
        ],
      ),
    );
  }
}


class listingView extends StatefulWidget {
  @override
  _listingViewState createState() => _listingViewState();
}

class _listingViewState extends State<listingView> {

  List<int> items = new List();

  @override
  void initState() {

     for(int i=0;i<50;i++){
        items.add(i);
     }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'List',
      home: new Scaffold(
        appBar: new AppBar(title: new Text('List')),
        body: new ListView.builder(
             itemCount: items.length,
            itemBuilder: (BuildContext context, int index) {
               int num = index+1;
               return new ListTile(
                 title: new Text('ITEM : $num'),
                 trailing: new Icon(Icons.arrow_forward),
               );
            },
        ),
      ),
    );
  }
}


class applicationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'MyApplication',
      home: new Scaffold(
        appBar: new AppBar(title: new Text('Rows and Column'), backgroundColor: Colors.pink),
        body: new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Text('This is Row1'),
            new Text('This is Row2'),
            new Column(
              children: <Widget>[
                new Text('This is column1'),
                new Text('This is column2'),
                new Text('This is column3')
              ],
            ),
            new Text('This is Row4')
          ],
        ),
      ),
    );
  }
}



class newapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        body: new Container(
          child: new Text('New App'),
          height: 300.0 ,
          width: 300.0,
          alignment: Alignment.center,
          padding: const EdgeInsets.all(20.0),
          decoration: new BoxDecoration(
            color: Colors.yellow
          ),
          transform: new Matrix4.rotationZ(0.5),
          foregroundDecoration: new BoxDecoration(
            color: Colors.deepOrange
          ),
        ),
      ),
    );
  }
}



class application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'stateless',
      home: new Scaffold(
        body: new Container(
          color: Colors.red,
          child: new Container(
            margin: const EdgeInsets.all(50.0),
            decoration: new BoxDecoration(
              color: Colors.yellow,
              borderRadius: new BorderRadius.all(Radius.circular(30.0))
            ),
          ),
        ),
      ),
    );
  }
}

class secondApplication extends StatefulWidget {
  @override
  _secondApplicationState createState() => _secondApplicationState();
}

class _secondApplicationState extends State<secondApplication> {

  String titleText = '';

  @override
  void initState() {
    // TODO: implement initState
    titleText = 'Click on this button';
    super.initState();
  }

  void pressing(){
    setState(() {
      titleText = 'Pressed';
    });
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Statefull',
      home: new Scaffold(
        body: new Center(
          child: new RaisedButton(onPressed:() {pressing();},child: new Text(titleText)),
        ),
      ),
    );
  }
}


