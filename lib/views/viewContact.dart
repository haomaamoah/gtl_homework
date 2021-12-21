import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';


class viewContact extends StatefulWidget {
  final Map info;
  const viewContact(this.info,{Key? key}) : super(key: key);

  @override
  _viewContactState createState() => _viewContactState();
}

class _viewContactState extends State<viewContact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: ()=>Navigator.of(context).pop(),
            icon: Icon(Icons.arrow_back_ios)
        ),
        centerTitle: true,
        title: Text("Contacts",style: Theme.of(context).textTheme.headline1?.copyWith(fontStyle: FontStyle.italic),),
        actions: [
          Icon(Icons.more_vert)
        ],
      ),
      body: Column(
        children: [
          ClipOval(
            child: Image.asset(
              widget.info["image"],
              fit: BoxFit.cover,width: 100,height: 100,
            ),
          ),
          Text(widget.info["name"],style: Theme.of(context).textTheme.bodyText1,),
          Text(widget.info["location"],style: Theme.of(context).textTheme.bodyText2,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                ["Mobile",widget.info["phone"],Icons.phone],
                ["Email",widget.info["email"],Icons.email],
                ["Group",widget.info["group"],null]
              ].map((info) =>
                  ListTile(
                    tileColor: Colors.blue[100],
                    title: Text(info[0],style: Theme.of(context).textTheme.bodyText1,),
                    subtitle: Text(info[1],style: Theme.of(context).textTheme.bodyText2),
                    trailing: (info[2]==null) ? SizedBox() : CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(info[2],color: Colors.black,)
                    ),
                  )
              ).toList(),
            ),
          ),

          Text("Account Linked"),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                ["Telegram","telegram.png"],
                ["WhatsApp","whatsapp.png"],
              ].map((info) =>
                  ListTile(
                    tileColor: Colors.blue[100],
                    title: Text(info[0],style: Theme.of(context).textTheme.bodyText1,),
                    trailing: ClipOval(
                      child: Image.asset(
                        "images/${info[1]}",fit: BoxFit.cover,
                        height: 40,width: 40,
                      ),
                    ),
                  )
              ).toList(),
            ),
          ),


        ],
      ),
    );
  }
}
