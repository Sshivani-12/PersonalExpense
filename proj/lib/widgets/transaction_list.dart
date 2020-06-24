import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:proj/models/trasaction.dart';


class TransactionList extends StatefulWidget {
  @override
  _TransactionListState createState() => _TransactionListState();
}

class _TransactionListState extends State<TransactionList> {
  final List<Transaction>_userTransaction=[
    Transaction(id:'t1',
    title: 'New Shoes'
    ,amount: 1220,
    date: DateTime.now()
    
    ),
  Transaction(id:'t2',
    title: 'Shoes'
    ,amount: 2000,
    date: DateTime.now()
    
    ),


  ]; 
  @override
  Widget build(BuildContext context) {
    return Column(children: _userTransaction.map((tx){
           return Card
          (
            child: Row(children: <Widget>[
              Container(
                margin: EdgeInsets.all(20),
               /* decoration: BoxDecoration
                (border:Border.all
                (color: Colors.green,
                width: 2
                ),
                ),*/
                padding: EdgeInsets.all(20),
                color: Colors.blue,
                child: Text(
              //  '\$  '+tx.amount.toString(),
                 '\$  ${tx.amount}',//$ sign use karun amount add karne 
                
                style: TextStyle(color: Colors.purple,
                fontWeight: FontWeight.bold
                ),
                ),
              ),

              Container(
                child: Column(
              crossAxisAlignment:CrossAxisAlignment.start,
                 
                  children: <Widget>[

                Text(tx.title.toString()),
                Text(
                 DateFormat.yMMMEd().format(tx.date),
                  style: TextStyle(
                  color: Colors.grey,
                ),),


                ],),
              ),
            ],),
        );
        }).toList(),

        );
  




  }
}