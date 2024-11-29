import 'package:flutter/material.dart';
import 'package:unit_testing/salary_calculation.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var hourController = TextEditingController();
  int? salary;

  SalaryCalculation sc = SalaryCalculation();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Unit Texting"),
      ),
      body: Column(
        children: [
          SizedBox(height: 10,),
          Text("Per hour payment 500 dollar"),
          TextField(
            key: Key("hour_input"),
            controller: hourController,
            decoration: InputDecoration(
              labelText: "Enter Working hour",
              border: OutlineInputBorder(),

            ),
          ),
          SizedBox(height: 10,),
          ElevatedButton(
            key: Key("calculate_button"),
              onPressed: (){


              setState(() {
                int hour =int.parse(hourController.text);
                salary = sc.calculatesalary(hour);
              });
              },
              child: Text("Calculate Sallary"),),

          SizedBox(height: 10,),

          if( salary != null)...[
            Text("Your Salary (\$)"),
            Text(salary.toString(), style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: Colors.pink,
            ),),
          ],
        ],
      ),

    );
  }
}
