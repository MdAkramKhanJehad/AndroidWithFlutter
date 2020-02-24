import 'package:flutter/material.dart';
import 'package:notes/Screens/NoteDetails.dart';

class NoteList extends StatefulWidget {
  @override
  _NoteState createState() => _NoteState();
}

class _NoteState extends State<NoteList> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('Notes'),
      ),

      body: noteListView(),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          navigatorToDetails("Add Note");

        },
        tooltip: "Add Note",
        child: Icon(Icons.add),
      ),
    );
  }


  ListView noteListView(){
    TextStyle titleStyle = Theme.of(context).textTheme.subhead;

    return ListView.builder(
        itemCount: count,
        itemBuilder: (BuildContext context, int position){
          return Card(
            color: Colors.greenAccent,
            elevation: 2.0,

            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.yellow,
                child: Icon(Icons.keyboard_arrow_right),
              ),

              title: Text('Nothing',style: titleStyle,),
              subtitle: Text('Date'),
              trailing: Icon(Icons.delete, color: Colors.black,),
              onTap: (){
                navigatorToDetails("Edit Note");
              },
            ),
          );
        },

    );

  }

  void navigatorToDetails(String title){
    Navigator.push(context, MaterialPageRoute(builder: (context){
      return NoteDetails(title);
    }));
  }

}


