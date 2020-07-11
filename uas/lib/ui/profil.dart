import 'package:flutter/material.dart';



 class Profil extends StatelessWidget{
  Widget build(BuildContext context){
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(
          Icons.person_pin,
          color: Colors.black,
          size: 30,
        ),
        title: Text(
          'My Profil',
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
            Image.asset('images/gambar1.png', width: 300, height: 200,),
            Text('Krisna Darmawan',
              style: TextStyle(color: Colors.black87, fontSize: 30, fontWeight: FontWeight.w900,),
            ),
            Text('krisnadarmawan07@gmail.com : ',
              style: TextStyle(color: Colors.black87, fontSize: 12, fontWeight: FontWeight.w500,),
            ),
            Text('--------------------------------- ',
              style: TextStyle(color: Colors.black87, fontSize:22, fontWeight: FontWeight.w700,),
            ),
             Text('Singaraja,14 Februari 2000',
              style: TextStyle(color: Colors.black87, fontSize:22, fontWeight: FontWeight.w700,),
            ),
            Text('Pendidikan Teknik Informatika',
              style: TextStyle(color: Colors.black87, fontSize:22, fontWeight: FontWeight.w700,),
            ),
            Text('Universitas Pendidikan Ganesha',
              style: TextStyle(color: Colors.black87, fontSize:22, fontWeight: FontWeight.w700,),
            ),
            Text('Singaraja',
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
          child: Text('Kembali ',
            style: TextStyle(fontSize: 21, color: Colors.black87, fontWeight: FontWeight.w900,),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );


  }
}