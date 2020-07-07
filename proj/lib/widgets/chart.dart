import 'package:flutter/material.dart';
import 'package:proj/models/trasaction.dart';
import 'package:intl/intl.dart';
class Chart extends StatelessWidget 
{
  final List<Transaction>recentTransactions;
Chart(this.recentTransactions);
List <Map <String,Object>> get groupTransactionValues{
  return List.generate(7, (index) {
    final weekday=DateTime.now().subtract(Duration(days:index),);
   double totalSum=0.0;
   for(var i=0;i<recentTransactions.length;i++){
     if(recentTransactions[i].date.day==weekday.day
     && recentTransactions[i].date.month==weekday.month
     && recentTransactions[i].date.year==weekday.year){
       totalSum+=recentTransactions[i].amount;
     }
   }
   print(totalSum);
   print(DateFormat.E().format(weekday));
    return {'day':DateFormat.E().format(weekday),
    'amoount':totalSum};
  });
}

  @override
  Widget build(BuildContext context) {
    return Card(

      elevation: 6,
      margin: EdgeInsets.all(20),
      child: Row(
        children:groupTransactionValues.map((data){
          return Text('${data['day']}:${data['amount']}');
        }).toList(),

      ),

    );
      }
}