import 'package:flutter/material.dart';

main() {
  runApp(app());
}

class app extends StatelessWidget {
  const app({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: myApp(),
    );
  }
}

class myApp extends StatefulWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  _myAppState createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("facebook"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 120,
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 30, right: 20, left: 20, bottom: 10),
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "search",
                        prefixIcon: Icon(Icons.search),
                        border: InputBorder.none,
                      ),
                    ),
                  )),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(Icons.camera_alt),
                ],
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: <Widget>[
                  Text(
                    "Stories",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                  ),
                  Text("See Archive"),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 180,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                makeStory(
                  storImage: "image/1-1413534.jpg",
                  userImage: "image/sal.jpg",
                  userName: "ahmed ali",
                ),
                makeStory(
                  storImage: "image/f.jpg",
                  userImage: "image/g.jpg",
                  userName: "anwer mohmed",
                ),
                makeStory(
                  storImage: "image/h.jpg",
                  userImage: "image/sal.jpg",
                  userName: "samar zy ",
                ),
                makeStory(
                  storImage: "image/eg.jpg",
                  userImage: "image/f.jpg",
                  userName: "amer ali",
                ),
                makeStory(
                  storImage: "image/o.jpg",
                  userImage: "image/t.jpg",
                  userName: "atif ramy",
                ),
              ],
            ),
          ),
          Expanded(
            child:
            ListView(
              children:[
                makepost(
                  image: "image/o.jpg",
                  usre: "ahmed",
                  time: "1 hr ago",
                  feedtexts: "Liverpool’s challengers are reinforcing their squads, whilst so far the Anfield outfit have only signed Ibrahima Konaté. The competition for the title, already fierce, will only get harder. The relative lack of movement from FSG in the market has left some fans exasperated, adding to the sense that it will be difficult for them to keep up next season, let alone regain the title.",
                  postImage: "image/o.jpg"),
                makepost(
                    image: "image/h.jpg",
                    usre: "ali",
                    time: "1 hr ago",
                    feedtexts: "تربع التونسى علي معلول الظهير الأيسر للنادى الأهلي على عرش أكثر اللاعبين صناعة للأهداف فى الدوري المصرى هذا الموسم برصيد 10 تمريرات سحرية ويليه عمرو الحلوانى لاعب أسوان برصيد 8 تمريرات ، وفى 25 يوليو 2016 بدأت رحلة على معلول مع النادى الأهلى، بعدما وقع على عقود انضمامه للقلعة الحمراء قادماً من الصفاقسى التونسى ليسطر قصة نجاح داخل أسوار ملعب التتش مازالت تضيف الكثير فى فصولها الجميلة.",
                    postImage: "image/t.jpg"),


              ]
            ),

          ),
        ],
      ),
    );
  }

  Widget makeStory({storImage, userImage, userName}) {
    return AspectRatio(
      aspectRatio: 1.6 / 2,
      child: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(storImage),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            gradient: LinearGradient(colors: [
              Colors.black.withOpacity(.2),
              Colors.black.withOpacity(.1),
            ]),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 2),
                      image: DecorationImage(
                          image: AssetImage(userImage), fit: BoxFit.cover)),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10, right: 5),
                child: Text(
                  userName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget makepost({image, usre, time, feedtexts, postImage}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 18.0, right: 5),
                child: CircleAvatar(
                  radius: 40.0,
                  backgroundImage: AssetImage(
                    image,
                  ),
                ),
              ),
              Column(
                children: [
                  Text(
                    usre,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Text(time),
                ],
              ),
            ],
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz))
        ],
      ),
      SizedBox(
        height: 15,
      ),
     Container(
       alignment: Alignment.topLeft,
       padding: EdgeInsets.all(18.0),
       child: Text(feedtexts),
     ),
      Padding(
        padding: const EdgeInsets.all(18.0),
        child: Container(
          width: double.infinity,
          height: 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                  image: AssetImage(postImage), fit: BoxFit.cover)),
        ),
      ),
    ],
  );
}
