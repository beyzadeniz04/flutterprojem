import 'package:flutter/material.dart';
import 'package:flutterprojem/main.dart';
import 'package:flutterprojem/add_todo_dialog_widget.dart';
import 'package:flutterprojem/datePicker.dart';


class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  bool toDoStatus = false;
  bool toDoStatus1 = false;
  bool toDoStatus2 = false;
  bool toDoStatus3 = false;

  
  @override
  Widget build(BuildContext context) {
    final tabs = [
      Container( 
        child:  ListView(
        children: <Widget>[
 
          SizedBox(height: 10,),
 
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Divider(color: Colors.blueGrey, height: 30,),
          ),
 
            Card(
              margin: EdgeInsets.all(10),
              elevation:20,
              color: Colors.purple[200],
              child: ListTile(
                
                 leading: CircleAvatar(child: Icon(Icons.sports) ,radius: 20, backgroundColor:Colors.purple ,),
                title: Text("Spor Yap"),
                subtitle: Text(" "),
                trailing: Checkbox(value: toDoStatus, onChanged: (value){
                  toDoStatus = value!;
                  setState(() {
                    
                  });

                })
                
              ),
            ),
 
 
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Divider(color: Colors.blueGrey, height: 30,),
          ), //aralarına çizgi tanımlamak için
          //Divider widget'ını tanımlıyoruz
 
            Card(
              margin: EdgeInsets.all(10),
              elevation:20,
              color: Colors.lightBlue[200],
              child: ListTile(
                leading: CircleAvatar(child: Icon(Icons.work),radius: 20, backgroundColor:Colors.lightBlue ,),
                title: Text("Okul Projesini Tamamla"),
                subtitle: Text("Login Page,Liste Yapısı"),
                 trailing: Checkbox(value: toDoStatus1, onChanged: (value){
                  toDoStatus1 = value!;
                  setState(() {
                    
                  });

                })
              ),
            ),
 
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Divider(color: Colors.blueGrey, height: 30,),
          ),
 
            Card(
              margin: EdgeInsets.all(10),
              elevation:20,
              color: Colors.red[200],
              child: ListTile(
                leading: CircleAvatar(child: Icon(Icons.food_bank),radius: 20, backgroundColor:Colors.red ,),
                title: Text("Market Alışverişi Yap"),
                subtitle: Text("Süt,Ekmek,Havlu Kağıt,Çikolata,Mısır Gevreği,Meyve,Maske"),
                trailing: Checkbox(value: toDoStatus2, onChanged: (value){
                  toDoStatus2 = value!;
                  setState(() {
                    
                  });

                })
              ),
            ),
 
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Divider(color: Colors.blueGrey, height: 30,),
          ),
           Card(
              margin: EdgeInsets.all(10),
              elevation:20,
              color: Colors.green[200],
              child: ListTile(
                leading: CircleAvatar(child: Icon(Icons.home_work_rounded),radius: 20, backgroundColor:Colors.green ,),
                title: Text("Dolap Düzenleme"),
                subtitle: Text(" "),
                trailing: Checkbox(value: toDoStatus3, onChanged: (value){
                  toDoStatus3 = value!;
                  setState(() {
                    
                  });

                })
              ),
            ),
            Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Divider(color: Colors.blueGrey, height: 30,),
          ),
 
 
        ],
      )
      ),
      Container(
         child:  ListView(
        children: <Widget>[
 
          SizedBox(height: 10,),
 
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Divider(color: Colors.blueGrey, height: 30,),
          ),
 
            Card(
              margin: EdgeInsets.all(10),
              elevation:20,
              color: Colors.purple[200],
              child: ListTile(
                
                 leading: CircleAvatar(child: Icon(Icons.sports) ,radius: 20, backgroundColor:Colors.purple ,),
                title: Text("Spor Yap"),
                subtitle: Text(" "),
                trailing:Icon(Icons.check_box,color: Colors.green,),
                
              ),
            ),
 
 
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Divider(color: Colors.blueGrey, height: 30,),
          ), //aralarına çizgi tanımlamak için
          //Divider widget'ını tanımlıyoruz
 
            Card(
              margin: EdgeInsets.all(10),
              elevation:20,
              color: Colors.lightBlue[200],
              child: ListTile(
                leading: CircleAvatar(child: Icon(Icons.work),radius: 20, backgroundColor:Colors.lightBlue ,),
                title: Text("Okul Projesini Tamamla"),
                subtitle: Text("Login Page,Liste Yapısı"),
                trailing:Icon(Icons.check_box,color: Colors.green,),
              ),
            ),
 
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Divider(color: Colors.blueGrey, height: 30,),
          ),
           ],
      )
 
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: (Colors.orange[300]),
        title: Text(MyApp.title),
        automaticallyImplyLeading: false,
        actions: <Widget>[
    Padding(
      padding: EdgeInsets.only(right: 20.0),
      child: GestureDetector(
        onTap: () {},
        child: IconButton(icon: Icon(Icons.arrow_forward), tooltip: 'Buton tipi', 
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DatePicker()),
          );
             }, ),
        
        
        ),
      )
    
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: (Colors.orange[300]),
        unselectedItemColor: Colors.white.withOpacity(0.7),
        selectedItemColor: Colors.white,
        currentIndex: selectedIndex,
        onTap: (index) => setState(() {
          selectedIndex = index;
        }),
        
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.fact_check_outlined),
            label: 'Listele',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.done, size: 28),
            label: 'Kaydet',
          ),
        ],
      ),
      body: tabs[selectedIndex],
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        backgroundColor: Colors.black,
        onPressed: () => showDialog(
          context: context,
          builder: (context) => AddTodoDialogWidget(),
          barrierDismissible: false,
        ),
        child: Icon(Icons.add),
      ),
    );
  }
}

