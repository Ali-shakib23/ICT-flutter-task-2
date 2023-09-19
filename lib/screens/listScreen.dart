import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task2/screens/listScreen.dart';
import 'package:task2/screens/textScreen.dart';
class list_attr{
  final String list_text;
  final IconData list_icon;

  list_attr({required this.list_text, required this.list_icon});

}

class listScreen extends StatelessWidget {
  const listScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List <list_attr> my_list=[
      list_attr(
        list_text: 'Idea',
        list_icon: Icons.lightbulb,
      ),
      list_attr(
        list_text:'Food',
        list_icon:  Icons.restaurant_outlined,
      ),
      list_attr(
        list_text:'Work',
        list_icon: Icons.work_outline,
      ),

      list_attr(
        list_text:'Sport',
        list_icon:Icons.sports_tennis,
      ),
      list_attr(
        list_text:'Music',
        list_icon: Icons.music_note,
      ),

      ];
    return Scaffold(
      body: ListView.builder(
          itemCount: my_list.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Icon(
                  color:Colors.purple,
                  my_list[index].list_icon,
                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (comtext){
                        return textScreen(textk: my_list[index].list_text);
                  }
                  ));
                },
                title:  Text (
                    my_list[index].list_text ),
                tileColor: Color(0xCEEEEEEE),
                subtitle: Text(
                  'Check Ypur Activity',
                )

              ),
            );
    },

    )
    );
  }
}





