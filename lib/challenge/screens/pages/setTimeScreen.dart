import 'package:flutter/material.dart';
import 'package:to_doapp/challenge/screens/pages/shareLinkScreen.dart';

import '../../widget/button.dart';

class SetTimeScreen extends StatelessWidget {
  const SetTimeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.1,
            right: 16,
            left: 16,
            bottom: MediaQuery.of(context).size.height * 0.1,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  const Text(
                    "Set Your Time",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                  ),
                  Image.asset("assets/images/Time.png"),
                  const SizedBox(
                    height: 16,
                  ),
                  Button(
                      onPressed: () {},
                      title: "Min target Time",
                      widgets: PopupMenuButton<String>(
                        
                          icon: const Icon(Icons.arrow_drop_down_sharp),
                          onSelected: (value) {},
                          itemBuilder: (BuildContext context) => [
                                const PopupMenuItem<String>(
                                  value: '1m',
                                  child: Text('1m'),
                                ),
                                const PopupMenuItem<String>(
                                  value: '5m',
                                  child: Text('5m'),
                                ),
                                const PopupMenuItem<String>(
                                  value: '7m',
                                  child: Text('7m'),
                                ),
                                const PopupMenuItem<String>(
                                  value: '10m',
                                  child: Text('10m'),
                                ),
                              ]),
                      textColor: Colors.black,
                      backgroundColor: const Color.fromRGBO(228, 229, 233, 1)),
                  const SizedBox(
                    height: 16,
                  ),
                  Button(
                      widgets: PopupMenuButton<String>(
                          icon: const Icon(Icons.arrow_drop_down_outlined),
                          onSelected: (value) {},
                          itemBuilder: (BuildContext context) => [
                                const PopupMenuItem<String>(
                                  value: '12m',
                                  child: Text('12m'),
                                ),
                                const PopupMenuItem<String>(
                                  value: '15m',
                                  child: Text('15m'),
                                ),
                                const PopupMenuItem<String>(
                                  value: '20m',
                                  child: Text('20m'),
                                ),
                                const PopupMenuItem<String>(
                                  value: '25m',
                                  child: Text('25m'),
                                ),
                              ]),
                      onPressed: () {},
                      title: "Max target time  ",
                      textColor: Colors.black,
                      backgroundColor: const Color.fromRGBO(228, 229, 233, 1)),
                  const SizedBox(
                    height: 16,
                  ),
                ],
              ),
              Button(
                widgets: const SizedBox.shrink(),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ShareLinkScreen()));
                },
                title: "Next",
                textColor: Colors.white,
                backgroundColor: const Color.fromRGBO(104, 37, 246, 1),
              )
            ],
          ),
        ),
      ),
    );
  }
}
