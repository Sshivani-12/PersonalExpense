import 'package:flutter/material.dart';
import 'package:proj/models/trasaction.dart';
import 'package:proj/widgets/transaction_list.dart';
import 'package:intl/intl.dart';
void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
//final List 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:MyHomePage()   );
    
  }
}

class MyHomePage extends StatelessWidget {
  
String titleInput;
String amountInput;

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
        title: Text('hello'),
      ),
      body: Column
      
       (
       //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
         children: <Widget>[
        Card(
          
          color: Colors.blue,
          child:Container
          (width:double.infinity,

            child: Text('Chart')
            ),
          elevation: 5,
        ),
        
       Card(
         elevation: 5,
         child: Container(
           padding: EdgeInsets.all(20),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.end,
             children: <Widget>[
            
              TextField(decoration:
               InputDecoration(labelText: 'Title'),
               onChanged:(val){
                 titleInput=val;
               },
               ),
             
              TextField(decoration:
               InputDecoration(labelText: 'amount'),
               onChanged:(val){
                 amountInput=val;
               },
               ),
              FlatButton(
              child:Text('Transactions done') ,
              textColor:Colors.purple,
              onPressed:(){
              print('amountInput');   
              }
              ),
              



           ],),
         ),
       ),

       TransactionList()
      ],),
      );
 

  }
}