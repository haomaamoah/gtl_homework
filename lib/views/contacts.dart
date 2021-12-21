import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:gtl_homework/models/info.dart';
import 'package:gtl_homework/views/viewContact.dart';



class ContactsList extends StatefulWidget {
  const ContactsList({Key? key}) : super(key: key);

  @override
  _ContactsListState createState() => _ContactsListState();
}

class _ContactsListState extends State<ContactsList> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("My Contacts",style: Theme.of(context).textTheme.headline1,),
              ClipOval(
                child: Image.asset("images/kofi.jpg",fit: BoxFit.cover,width: 40,height: 40,),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0,10, 0, 10),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.pink[50],
                  borderRadius: BorderRadius.all(Radius.circular(25))
              ),
              child: Row(
                children: [
                  Icon(Icons.search),
                  SizedBox(
                    width: MediaQuery.of(context).size.width*0.85,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText:"Search by name or number",
                      ),
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Text("Recents",style: Theme.of(context).textTheme.headline2,),
          Column(
            children: recentInfo.map((info) =>
                ListTile(
                  onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (_)=>viewContact(info))),
                  leading: ClipOval(
                      child: Image.asset(
                          info["image"],
                          fit: BoxFit.cover,height: 35,width: 35,)
                  ),
                  title: Text(info["name"],style: Theme.of(context).textTheme.bodyText2,),
                  subtitle: Text(info["phone"],style: Theme.of(context).textTheme.bodyText1,),
                  trailing: Icon(Icons.more_horiz),
                )
            ).toList(),
          ),
          Text("Contacts"),
          Column(
            children: contactInfo.map((info) {
              return ListTile(
                onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (_)=>viewContact(info))),
                leading: ClipOval(
                    child: Image.asset(
                      info["image"],
                      fit: BoxFit.cover,height: 35,width: 35,)
                ),
                title: Text(info["name"],style: Theme.of(context).textTheme.bodyText2,),
                subtitle: Text(info["phone"],style: Theme.of(context).textTheme.bodyText1,),
                trailing: Icon(Icons.more_horiz),
              );
            }).toList(),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: CircleAvatar(
            minRadius: 30,
            backgroundColor: Colors.indigo,
            child: Icon(Icons.add,color: Colors.white,),
          ),
        ),
      ),
    );
  }
}
