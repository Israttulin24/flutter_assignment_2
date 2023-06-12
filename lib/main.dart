import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main(){
  runApp(
    const MyApp()
  );
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue),
        debugShowCheckedModeBanner: false,
      home:
          HomeActivity()
    );
  }
}

class HomeActivity extends StatelessWidget{
   HomeActivity({super.key});

  var MyItems=[
    {"img":"https://th.bing.com/th/id/OIP.0Pf1aYEg6thpYRtsOf14-QHaE8?pid=ImgDet&rs=1","title":"Cat"},
    {"img":"https://th.bing.com/th/id/OIP.0Pf1aYEg6thpYRtsOf14-QHaE8?pid=ImgDet&rs=1","title":"mewo"},
    {"img":"https://th.bing.com/th/id/OIP.0Pf1aYEg6thpYRtsOf14-QHaE8?pid=ImgDet&rs=1","title":"clover"},
    {"img":"https://th.bing.com/th/id/OIP.0Pf1aYEg6thpYRtsOf14-QHaE8?pid=ImgDet&rs=1","title":"tina"},
    {"img":"https://th.bing.com/th/id/OIP.0Pf1aYEg6thpYRtsOf14-QHaE8?pid=ImgDet&rs=1","title":"sui"},
    {"img":"https://th.bing.com/th/id/OIP.0Pf1aYEg6thpYRtsOf14-QHaE8?pid=ImgDet&rs=1","title":"min"},
    {"img":"https://th.bing.com/th/id/OIP.0Pf1aYEg6thpYRtsOf14-QHaE8?pid=ImgDet&rs=1","title":"sec"},
    {"img":"https://th.bing.com/th/id/OIP.0Pf1aYEg6thpYRtsOf14-QHaE8?pid=ImgDet&rs=1","title":"rui"},
    {"img":"https://th.bing.com/th/id/OIP.0Pf1aYEg6thpYRtsOf14-QHaE8?pid=ImgDet&rs=1","title":"mim"}
  ];//list and grid view with gesture detector

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Photo Gallery'),
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.all(15),
              child: Text('Welcome to My Photo Gallery!',style: TextStyle(fontSize:25,fontWeight:FontWeight.bold), ),
            ),
            Padding(padding: EdgeInsets.all(20),child:TextField(decoration: InputDecoration(prefixIcon: Icon(Icons.search),border:OutlineInputBorder(),labelText: ('Search')))),


            Wrap(
              direction: Axis.horizontal,
              alignment: WrapAlignment.start,
              runSpacing: 8.0,
              spacing: 8.0,

              children: [
                Image.network('https://play-lh.googleusercontent.com/fWOFhAaXbqYILb7AzCelO2d39HFZtH17suMMsdHPP_6RgfI-jDdx14Sg1fl7D1AaBHVX=w2560-h1440-rw',fit: BoxFit.fill,width: 120,height: 120,),
                Image.network('https://play-lh.googleusercontent.com/fWOFhAaXbqYILb7AzCelO2d39HFZtH17suMMsdHPP_6RgfI-jDdx14Sg1fl7D1AaBHVX=w2560-h1440-rw',fit: BoxFit.fill,width: 120,height: 120,),
                Image.network('https://play-lh.googleusercontent.com/fWOFhAaXbqYILb7AzCelO2d39HFZtH17suMMsdHPP_6RgfI-jDdx14Sg1fl7D1AaBHVX=w2560-h1440-rw',fit: BoxFit.fill,width: 120,height: 120,),
                Image.network('https://play-lh.googleusercontent.com/fWOFhAaXbqYILb7AzCelO2d39HFZtH17suMMsdHPP_6RgfI-jDdx14Sg1fl7D1AaBHVX=w2560-h1440-rw',fit: BoxFit.fill,width: 120,height: 120,),
                Image.network('https://play-lh.googleusercontent.com/fWOFhAaXbqYILb7AzCelO2d39HFZtH17suMMsdHPP_6RgfI-jDdx14Sg1fl7D1AaBHVX=w2560-h1440-rw',fit: BoxFit.fill,width: 120,height: 120,),
                Image.network('https://play-lh.googleusercontent.com/fWOFhAaXbqYILb7AzCelO2d39HFZtH17suMMsdHPP_6RgfI-jDdx14Sg1fl7D1AaBHVX=w2560-h1440-rw',fit: BoxFit.fill,width: 120,height: 120,),
              ],
            ),


            ListTile(
              onTap: (){print('d');},
              leading: Icon(Icons.image),
              title: Text('Sample Photo 1'),
              subtitle: Text('Category 1'),
            ),

            ListTile(
              onTap: (){print('d');},
              leading: Icon(Icons.image),
              title: Text('Sample Photo 2'),
              subtitle: Text('Category 2'),
            ),

            ListTile(
              onTap: (){print('d');},
              leading: Icon(Icons.image),
              title: Text('Sample Photo 3'),
              subtitle: Text('Category 3'),
            ),

            Material(
              child: Center(
                child: Ink(
                  decoration:ShapeDecoration(
                    color: Colors.lightBlue,
                    shape: CircleBorder(),
                  ),
                  child: IconButton(
                    icon:Icon(Icons.cloud_upload),
                    color: Colors.white,
                    onPressed: () {ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Photos Uploaded Successfully!')));},
                  ),
                ),
              ),

             )




          ],



        ),





      ),




    );
  }

}
