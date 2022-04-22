
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key, }) : super(key: key);


  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController input = TextEditingController();
  List listOfTodos = [ ];
  int count = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo-List'),

      ),
      body: Column(
        mainAxisAlignment :MainAxisAlignment.center,
        children: [

          SizedBox(height: 10,),
          TextField(
            keyboardType: TextInputType.text,
            controller: input,
          ),
          SizedBox(height: 30,),
          ElevatedButton(onPressed: (){

            setState(() {
              listOfTodos.add(input.text);
              input.text = "";


            });


          }, child: Text('Add')),
          SizedBox(height: 30,),
          Expanded(
            child: ListView.builder(
                shrinkWrap: true,
              scrollDirection: Axis.vertical,
                itemCount: listOfTodos.length,
                itemBuilder: (context, index){
                  return Card(
                    child: ListTile(
                        onTap: (){},
                        title: Text(listOfTodos[index].toString()),

                        trailing: InkWell(onTap: (){setState(() {


                            listOfTodos.removeAt(index);

                        });},
                            child: Icon(Icons.cancel)),
                    ),
                  );
                }),
          )

        ],
      )
    );
  }
}
