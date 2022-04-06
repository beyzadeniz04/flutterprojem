import 'package:flutter/material.dart';
import 'dart:async';

class DatePicker extends StatefulWidget {
  @override
  _DatePickerState createState() => _DatePickerState();
}
class _DatePickerState extends State<DatePicker> {
  DateTime currentDate = DateTime.now();
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: currentDate,
        firstDate: DateTime(2022),
        lastDate: DateTime(2050));
    if (pickedDate != null && pickedDate != currentDate)
      setState(() {
        currentDate = pickedDate;
      });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DatePicker"),
        backgroundColor: Colors.orange,
      ),
      body: Center(

        child: Column(
          
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Image.asset(
                'assets/date.png',
                width: 250,
                height: 250,
              ),
              SizedBox(height: 80,),
            Text(currentDate.toString()),
            RaisedButton(
              onPressed: () => _selectDate(context),
              child: Text('Tarih Seçiniz'), color: Colors.orange[300],
            ),
          ],
        ),
      ),
    );
  }
}
