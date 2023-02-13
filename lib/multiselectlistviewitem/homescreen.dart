import 'package:flutter/material.dart';
import 'contactmodel.dart';
import 'mydata.dart';

class Homescreen_MultiSelectListviewItem extends StatefulWidget {
  @override
  State<Homescreen_MultiSelectListviewItem> createState() => _Homescreen_MultiSelectListviewItemState();
}

class _Homescreen_MultiSelectListviewItemState extends State<Homescreen_MultiSelectListviewItem> {

  List<Contact> list=List.generate(26, (index) => Contact(
    name: String.fromCharCode(index+65)
  )).toList();
  List<Contact> selectedlist=[];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MultiSelect demo'),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: ListView.builder(
                    itemCount: list.length,
                    itemBuilder: (context, index) {
                      return showContact(list[index],index);
                    }),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0,vertical: 10.0),
              child: SizedBox(
                width: double.infinity,
                child: TextButton(
                  child: Text('Selected : '+selectedlist.length.toString(),style: TextStyle(color: Colors.red,
                  fontSize: 18.0),),
                  onPressed: () {

                    list.removeWhere((element) => selectedlist.contains(element));
                    selectedlist.clear();
                    setselection(false);
                    setState(() {
                    });

                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget showContact(Contact contact,int index) {
    return Container(
      decoration: BoxDecoration(color: contact.isSelected?Colors.black12:Colors.white),
      child: ListTile(

        onTap: (){
          setState(() {
            list[index].isSelected=!list[index].isSelected;
             if(contact.isSelected==true)
              selectedlist.add(contact);
            });


        },


        leading: CircleAvatar(
          backgroundColor: Colors.red,
          child: Icon(Icons.person_outline_outlined,color: Colors.white,size: 24.0,),
        ),

        title: Text(contact.name,style: TextStyle(fontSize: 18.0,color: contact.isSelected?Colors.white:Colors.blue),),
        subtitle: Text(contact.mobilenumber,),
        trailing: contact.isSelected?Icon(Icons.check_box_rounded):Icon(Icons.check_box_outline_blank),



      ),
    );
  }

  void setselection(bool bool) {
    for(int x=0;x<list.length;x++)
      {
        list[x].isSelected=bool;
      }



  }
}
