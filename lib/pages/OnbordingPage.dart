import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nutri_track/pages/LoginPage.dart';
import 'package:nutri_track/pages/SignUpPage.dart';

class Onbording extends StatefulWidget {
  const Onbording({ Key? key }) : super(key: key);

  @override
  _OnbordingState createState() => _OnbordingState();
}

class UnbordingContent {
  String image;
  String title;
  String discription;

  UnbordingContent({required this.image,required this.title,required this.discription});
}

List<UnbordingContent> contents = [
  UnbordingContent(
    title: 'Eat Healthy',
    image: 'images/icons8-analysis-64.png',
    discription: 'Maintaining good health should be the primary focus of everyone.'
  ),
  UnbordingContent(
    title: 'Healthy Recipes',
    image: 'images/icons8-nutrition-64.png',
    discription: 'Browse thousands of healthy recipes from all over the world.'
  ),
  UnbordingContent(
    title: 'Track Your Health',
    image: 'images/icons8-diet-64.png',
    discription: 'With amazing inbuilt tools you can track your progress.'
  ),
];

class _OnbordingState extends State<Onbording> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState(){
    _controller = PageController(initialPage: 0);
    super.initState();
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[50],
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount:contents.length,
              onPageChanged: (int index){
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (_,i){
                return Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Column(
                    children: [
                      Padding(
                          padding: EdgeInsets.fromLTRB(20, 50, 20, 50),
                          child: Text('NutriTrack',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold
                          ),
                       ),),
                      Image.asset(contents[i].image,
                      height: 300,
                      fit: BoxFit.fitWidth,
                      ),
                      Text(contents[i].title,
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),),
                      SizedBox(height: 20,),
                      Text(contents[i].discription,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 17,
                        // fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),),
                      
                  ],),
                );
              },
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(contents.length, (index) => buildDot(index, context),),
            ),
          ),
          Container(
            height: 60,
            margin: EdgeInsets.fromLTRB(40, 40, 40, 0),
            width: double.infinity,
            child: FlatButton(
              child: Text(currentIndex == contents.length -1? "Get Started":"Next",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),),
              onPressed: (){
                if(currentIndex == contents.length -1){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=> signup(),),);
                }
                _controller.nextPage(
                  duration: Duration(milliseconds: 100),
                  curve: Curves.bounceIn,);
              },
              color: Color(0xFF91C788),
              textColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24)
                ),
              ),
            ),
            Padding(
          padding: EdgeInsets.fromLTRB(32, 0, 32,30),
          child: TextButton(
                child: Text(
                  "Already Have An Acount? Log In",
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                  ),
                ),
                onPressed: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context) => const login()),);
                },
              ),
        ),
              // SizedBox(height:40),

        ],
      )
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
              height: 10,
              width: currentIndex == index ? 25 : 10,
              margin: EdgeInsets.only(right: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: currentIndex == index ? Color(0xFFFF8473): Color(0xFFFFC0B8),
              ),
            );
  }
}