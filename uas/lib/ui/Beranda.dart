import 'package:flutter/material.dart';


import 'listview_note.dart';



 class Beranda extends StatelessWidget{
  Widget build(BuildContext context){
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(
          Icons.home,
          color: Colors.black,
          size: 30,
        ),
        title: Text(
          'Beranda',
          style: TextStyle(
            fontSize: 25,
            color: Colors.black,
            fontWeight: FontWeight.w900,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,

      ),

       body: Center(
          child: Column(children: <Widget>[
            Image.asset('images/gambar2.png', width: 300, height: 200,),
            Text('Selamat Datang di',
              style: TextStyle(color: Colors.black87, fontSize: 30, fontWeight: FontWeight.w900,),
            ),
            Text('BukuKu ',
              style: TextStyle(color: Colors.black87, fontSize: 32, fontWeight: FontWeight.w500,),
            ),
            Text('--------------------------------- ',
              style: TextStyle(color: Colors.black87, fontSize:22, fontWeight: FontWeight.w700,),
            ),
             Text('Lihat bukumu dan rasakan ',
              style: TextStyle(color: Colors.black87, fontSize:22, fontWeight: FontWeight.w700,),
            ),
            
            Text('serunya kisah ceritanya.',
              style: TextStyle(color: Colors.black87, fontSize:22, fontWeight: FontWeight.w700,),
            ),
            Text('',
              style: TextStyle(color: Colors.black87, fontSize:22, fontWeight: FontWeight.w700,),
            ),
             Text('--------------------------------- ',
              style: TextStyle(color: Colors.black87, fontSize:22, fontWeight: FontWeight.w700,),
            ),
        
            

          
          ]
          ),
       ),
       
      

       bottomSheet: Container(
        width: double.infinity,
        height: 60,
        child: RaisedButton(
          color: Colors.deepOrange,
          child: Text('Lihat daftar buku',
            style: TextStyle(fontSize: 21, color: Colors.black87, fontWeight: FontWeight.w900,),
          ),
          onPressed: () {
           Navigator.push(
                       context, 
                       MaterialPageRoute(builder: (context)=> ListViewNote ()),
                     );
          },
        ),
      ),
    );


  }
}