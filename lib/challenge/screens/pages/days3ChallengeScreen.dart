import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BuddyChallenge extends StatefulWidget {
  const BuddyChallenge({super.key});

  @override
  State<BuddyChallenge> createState() => _BuddyChallengeState();
}

class _BuddyChallengeState extends State<BuddyChallenge> {

bool isCompleted=false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading:
          IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
          title: Text(
            '3 Day Meditation Challenge',
            style: GoogleFonts.roboto(
              color: const Color(0xFF1C1B1F),
              fontSize: 22,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Day 1',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                        height: 0.10,
                        letterSpacing: 0.10,
                      ),
                    ),
                    Text(
                      'Day 2',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                        height: 0.10,
                        letterSpacing: 0.10,
                      ),
                    ),
                    Text(
                      'Day 3',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                        height: 0.10,
                        letterSpacing: 0.10,
                      ),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundImage:
                          const NetworkImage( "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGDNPqYvfVXr50g4wSf4HLD4p557PbSFNdJaKHA0Sqmva990kgeqCWX32L8hlD2NNWyeU&usqp=CAU",),
                          radius: MediaQuery.of(context).size.width * 0.06,
                        ),

                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'You\n',
                                  style: GoogleFonts.inter(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                TextSpan(
                                  text: '2h 30m',
                                  style: GoogleFonts.inter(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            textAlign: TextAlign.center,
                          ),
                        const SizedBox(
                          height: 20,
                        ),
                        CircleAvatar(
                          backgroundImage:
                          const NetworkImage(    "https://play-lh.googleusercontent.com/3ha-TO-wWZA8IofnlU6tWsYJiBCYbqs8hvhB6BQnct1PgsYpAZhCPMKoYggHOX9z-1qM"),
                          radius: MediaQuery.of(context).size.width * 0.06,
                        ),

                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Shivam\n',
                                  style: GoogleFonts.inter(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                TextSpan(
                                  text: '2h 30m',
                                  style: GoogleFonts.inter(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            textAlign: TextAlign.center,
                          ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.75,
                    child: GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing:
                          MediaQuery.of(context).size.width * 0.02,
                          mainAxisSpacing:
                          MediaQuery.of(context).size.width * 0.02,
                        ),
                        itemCount: 6,
                        itemBuilder: (context, index) {
                          return  Card(
                            color:   (isCompleted==false &&index>0)? Colors.white: const Color.fromRGBO(35, 194, 118, 0.9),
                              elevation: 2,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  (isCompleted==false &&index>0)?
                                  const CircleAvatar(
                                    backgroundColor:Color.fromRGBO(0, 0, 0, 0.15),
                                    child: Icon(Icons.add),
                                  ):
                              const  Image(

                                   image: AssetImage("assets/images/fire.png"))
                                ],
                              ));
                        }),
                  ),
                ],
              ),

              slider(context),

              Padding(
                padding: const EdgeInsets.all(24),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Action plan .Day 1\n Meditation',
                          textAlign: TextAlign.left,
                          style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            const CircleAvatar(
                              backgroundImage:
                              NetworkImage( "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGDNPqYvfVXr50g4wSf4HLD4p557PbSFNdJaKHA0Sqmva990kgeqCWX32L8hlD2NNWyeU&usqp=CAU",),
                            ),
                            const SizedBox(
                              width: 11,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Jyoti',
                                  style: GoogleFonts.roboto(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  '1m to 5m',
                                  style: GoogleFonts.roboto(
                                    color: const Color(0xFF707070),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                )
                              ],
                            ),
                            const Spacer(),
                            Row(
                              children: [
                                // Image(
                                //     image: AssetImage("assets/images/gold.png")),
                            GestureDetector(
                              onTap: (){},
                              child: const CircleAvatar(
                                backgroundColor: Color.fromRGBO(0, 0, 0, 0.15),
                                child: Icon(Icons.add),),
                            )
                              ],
                            )
                          ],
                        ),
                     const    Padding(
                          padding:  EdgeInsets.all(16),
                          child:  TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Write your action plan",
                                fillColor: Colors.white,
                                filled: true
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 28,
                        ),
                        Row(
                          children: [
                            const CircleAvatar(
                              backgroundImage:
                              NetworkImage(    "https://play-lh.googleusercontent.com/3ha-TO-wWZA8IofnlU6tWsYJiBCYbqs8hvhB6BQnct1PgsYpAZhCPMKoYggHOX9z-1qM"),
                            ),
                            const SizedBox(
                              width: 11,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Jyoti ',
                                  style: GoogleFonts.roboto(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  '2m to 8m',
                                  style: GoogleFonts.roboto(
                                    color: const Color(0xFF707070),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),


                             GestureDetector(
                              onTap: () {
                                showDialog(

                                  context: context,
                                  builder: (ctx) => AlertDialog(
                                    // backgroundColor: Colors.black,
                                    title: const Text("Claim your points"),
                                    content:    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [

                                       ClipRRect(
                                         borderRadius: BorderRadius.circular(10),
                                         child: GestureDetector(
                                           onTap: (){
                                             setState(() {
                                               isCompleted=true;
                                             });
                                           },
                                           child: Container(
                                             color: const Color.fromRGBO(35, 194, 118, 0.9),
                                             child: const ListTile(
                                               leading: Image(image: AssetImage("assets/images/fire.png")),
                                               title: Text("claimed for min target 10m",
                                               style: TextStyle(
                                                 fontWeight: FontWeight.bold,
                                               ),),
                                               trailing: Icon(Icons.circle_outlined),
                                             ),
                                           ),
                                         ),
                                       ),
                                   const  SizedBox(
                                       height: 16,
                                     ),
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(10),
                                          child: GestureDetector(
                                            onTap: (){
                                              setState(() {
                                                isCompleted=true;
                                              });
                                            },
                                            child: Container(
                                              color: const Color.fromRGBO(35, 194, 118, 0.9),
                                              child: const ListTile(
                                                leading: Image(image: AssetImage("assets/images/fire.png")),
                                                title: Text("claimed for min target 30m",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                  ),),
                                                trailing: Icon(Icons.circle_outlined),
                                              ),
                                            ),
                                          ),
                                        ),

                                      ],
                                    ),
                                    actions: <Widget>[

                                      Padding(
                                        padding:  EdgeInsets.only(
                                          right: MediaQuery.of(context).size.width*0.2
                                        ),
                                        child: const  TextField(
                                          style: TextStyle(
                                              color: Colors.black
                                          ),
                                          decoration: InputDecoration(


                                              label: Text("Enter Time",
                                                style: TextStyle(
                                                    color: Colors.black
                                                ),)
                                          ),
                                        ),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(ctx).pop();
                                        },
                                        child: const Text("Ok"),
                                      ),
                                    ],
                                  ),
                                );
                              },
                              child: const CircleAvatar(
                                backgroundColor: Color.fromRGBO(0, 0, 0, 0.15),
                                child: Icon(Icons.add),
                              ),
                            )
                          ],
                        ),


                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget slider(BuildContext context){
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              color: const Color.fromRGBO(240, 127, 32, 0.3),
              height: 20,
              width: MediaQuery.of(context).size.width,


            ),
          ),
          Positioned(
            left: 70,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Container(
                color: const Color.fromRGBO(240, 127, 32, 0.3),
                height: 30,
                width: 30,
                child: Image.network("https://play-lh.googleusercontent.com/3ha-TO-wWZA8IofnlU6tWsYJiBCYbqs8hvhB6BQnct1PgsYpAZhCPMKoYggHOX9z-1qM"),
              ),
            ),
          ),

          Positioned(
            left: 30,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Container(
                color: const Color.fromRGBO(240, 127, 32, 0.3),
                height: 30,
                width: 30,
                child: Image.network("https://play-lh.googleusercontent.com/3ha-TO-wWZA8IofnlU6tWsYJiBCYbqs8hvhB6BQnct1PgsYpAZhCPMKoYggHOX9z-1qM"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}