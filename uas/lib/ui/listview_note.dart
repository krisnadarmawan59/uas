import 'package:flutter/material.dart';
import 'package:uas/model/note.dart';
import 'package:uas/ui/Beranda.dart';

import 'package:uas/util/database_helper.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'note_screen.dart';
import 'profil.dart';
 
class ListViewNote extends StatefulWidget {
  @override
  _ListViewNoteState createState() => new _ListViewNoteState();
}
 


class _ListViewNoteState extends State<ListViewNote> {
  List<Note> items = new List();
  DatabaseHelper db = new DatabaseHelper();

 
  @override
  void initState() {
    super.initState();
 
    db.getAllNotes().then((notes) {
      setState(() {
        notes.forEach((note) {
          items.add(Note.fromMap(note));
        });
      });
    });
  }
 
  @override
  Widget build(BuildContext context) {
    return new  MaterialApp(
      title: 'My Book',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Daftar Buku', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900),),
        
              backgroundColor: Colors.deepOrange,
              actions: <Widget>[
            IconButton(
            icon: const Icon(Icons.home,
            color: Colors.black87, size: 30,),
            onPressed: () {
              Navigator.push(context, 
              MaterialPageRoute(builder: (context)=> Beranda()),
                            );
                          }
                        ),
                        IconButton(
            icon: const Icon(Icons.scanner,
            color: Colors.black87, size: 30,),
            onPressed: () {
              Navigator.push(context, 
              MaterialPageRoute(builder: (context)=> WebView()),
                            );
                          }
                        ),
          IconButton(
            icon: const Icon(Icons.person,
            color: Colors.black87, size: 30,),
            onPressed: () {
              Navigator.push(context, 
              MaterialPageRoute(builder: (context)=> Profil()),
                            );
                          }
                        ),
               
                        
                      ],
                      ),
                      body: Center(
                        child: ListView.builder(
                            itemCount: items.length,
                            padding: const EdgeInsets.all(15.0),
                            itemBuilder: (context, position) {
                              return Column(
                                children: <Widget>[
                                  Divider(height: 5.0),
                                  ListTile(
                                    title: Text(
                                      '${items[position].title}',
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w900,
                                        color: Colors.deepOrangeAccent,
                                      ),
                                    ),
                                    subtitle: Text(
                                      '${items[position].description}',
                                      style: new TextStyle(
                                        fontSize: 16.0,
                                        fontStyle: FontStyle.italic,
                                      ),
                                    ),
                                    leading: Column(
                                      children: <Widget>[
                                        IconButton(
                                          icon: const Icon(Icons.delete, color: Colors.deepOrange),
                                           onPressed: () => _deleteNote(context, items[position], position)),
                                      ],
                                    ),
                                    onTap: () => _navigateToNote(context, items[position]),
                                  ),
                                ],
                              );
                            }),
                      ),
                      floatingActionButton: FloatingActionButton(
                        child: Icon(Icons.add, color: Colors.deepOrange,),
                        onPressed: () => _createNewNote(context),
                      ),
                    ),
                    
                  );
                }
               
                void _deleteNote(BuildContext context, Note note, int position) async {
                  db.deleteNote(note.id).then((notes) {
                    setState(() {
                      items.removeAt(position);
                    });
                  });
                }
               
                void _navigateToNote(BuildContext context, Note note) async {
                  String result = await Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NoteScreen(note)),
                  );
               
                  if (result == 'update') {
                    db.getAllNotes().then((notes) {
                      setState(() {
                        items.clear();
                        notes.forEach((note) {
                          items.add(Note.fromMap(note));
                        });
                      });
                    });
                  }
                }
               
                void _createNewNote(BuildContext context) async {
                  String result = await Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NoteScreen(Note('', ''))),
                  );
               
                  if (result == 'save') {
                    db.getAllNotes().then((notes) {
                      setState(() {
                        items.clear();
                        notes.forEach((note) {
                          items.add(Note.fromMap(note));
                        });
                      });
                    });
                  }
                }
                
              }


              
              
