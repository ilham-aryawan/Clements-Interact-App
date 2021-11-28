import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: officerPage(),
));

class officerPage extends StatelessWidget {

  Future<void> _showMyDialog(BuildContext context, String name, String position, String bio) async {

    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('$position: $name'),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('$bio'),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Cool!'),
              onPressed: () {
                Navigator.of(context).pop();
              },
       //       style: TextButton.styleFrom(primary: Colors.blueGrey),
              color: Colors.blueGrey
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Our Officer Team'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey[400],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 20,
            child: Padding(
              padding: const EdgeInsets.all(13.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: IconButton(
                            icon: Image.asset('assets/BridgetteOfficer3.png'),
                            iconSize: 150.0,
                            onPressed: () { _showMyDialog(
                                context,
                                'Bridgette Liu',
                                'President',
                                'Hey Interactors! I’m Bridgette and I’m a senior this year. '
                                    'I’ve been in Interact for 4 years (has it seriously been that long woah) and '
                                    'I’m in student council and k-pop club. Before quarantine, if you walked into any '
                                    'Sugarland boba place, you’d probably see me there :,,) I’m a huge sucker for anime and '
                                    'cartoons so I’m always down to exchange shows with you! '
                                    'Hope to see y’all join this cool club!'); },
                          ),
                        ),
                        Text('President',
                            style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.center),
                        Expanded(
                          flex: 1,
                          child: IconButton(
                            icon: Image.asset('assets/Ilham.jpg'),
                            iconSize: 150,
                            onPressed: (
                                ) { _showMyDialog(context, 'Ilham Aryawan', 'Vice President of External Affairs', 'Heyyo interact! I’m Ilham and I’m a senior as well as your external vp this year. '
                                'This will be my fourth year of Interact. I am also a part of the badminton club and computer science club. '
                                'I like playing video games in my free time (especially FIFA for anyone wanting to challenge me) and '
                                'I am extremely excited for the year to come. Fun Fact: I’m the most handsome interact officer here.');
                            },
                          ),
                        ),
                        Text('Vice President of External Affairs',
                            style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.center),
                        Expanded(
                          flex: 1,
                          child: IconButton(
                            icon: Image.asset('assets/Kat.jpg'),
                            iconSize: 150,
                            onPressed: () { _showMyDialog(context, 'Kathryn Chen', 'Vice President Coordinator', 'Hey interact!! My names Kat and I’m a senior + the vp coordinator this year! '
                                'Some of my favorite interact events include trick or treat for hunger and DCON. '
                                'In my free time I enjoy watching anime and reading webtoons! I’m looking forward to this school year, as well as getting to INTERACT with y’all!');},
                          ),
                        ),
                        Text('Vice President Coordinator',
                            style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.center),
                        Expanded(
                          flex: 1,
                          child: IconButton(
                            icon: Image.asset('assets/Sarah.jpg'),
                            iconSize: 150,
                            onPressed: () {_showMyDialog(context, 'Sarah Gelfer', 'Vice President of Internal Affairs', 'Hey! I’m Sarah! im a current junior and this years internal VP:) I’ve been in Interact for three whole years and ive loved every minute! I’m also on the debate team and play piano on the side. '
                                'I always find time to watch TV, so if you have a suggestion please give it to me, but my favorites lately have been Bojack Horseman and Avatar! '
                                'I know this year is going to great and I cant wait:)'); },
                          ),
                        ),
                        Text('Vice President of Internal Affairs',
                            style: TextStyle(fontWeight: FontWeight.bold), textAlign: TextAlign.center),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: IconButton(
                            icon: Image.asset('assets/Michelle.jpg'),
                            iconSize: 150,
                            onPressed: () {_showMyDialog(context, 'Michelle Chen', 'Secretary', 'Heyyy Interact! My name is Michelle and I’m a senior this year. '
                                'This will be my 3rd year in Interact woohoo! I am also involved in Student Council, I-Club, and NHS. '
                                'In my free time I like to play with my corgi, dance, and watch The Office, The Last Airbender, or Glee on Netflix. '
                                'Fun facts about me- I don’t like apples, I LOVE avocados, and I’m obsessed with koalas '
                                '(I want a dog, cat, and koala in the future as pets lol) anyways... I’m excited to meet y’all :)))');},
                          ),
                        ),
                        Text('Secretary',
                            style: TextStyle(fontWeight: FontWeight.bold), textAlign: TextAlign.center),
                        Expanded(
                          flex: 1,
                          child: IconButton(
                            icon: Image.asset('assets/jess.jpg'),
                            iconSize: 150,
                            onPressed: () {_showMyDialog(context, 'Jessica Liu', 'Webmaster/Historian', 'What’s up, guys! My name is Jessica and '
                                'I’m a senior here  at Clements. '
                                'Outside of Interact, I’m involved in Student Council, i-Club, and I sing alto in the Clements Choir. '
                                'In my free time I like to film and edit videos, binge watch shows (but never finish them), and '
                                'I also try to improve my culinary skills (as of right now I have mastered cooking ramen and eggs). '
                                'I’m so excited to be a part of the Interact Team and I hope we can do big things this year.  See y’all soon!');},
                          ),
                        ),
                        Text('Webmaster/Historian',
                            style: TextStyle(fontWeight: FontWeight.bold), textAlign: TextAlign.center),
                        Expanded(
                          flex: 1,
                          child: IconButton(
                            icon: Image.asset('assets/Vy.jpg'),
                            iconSize: 150,
                            onPressed: () {_showMyDialog(context, 'Vy Tran', 'Publicity', 'Heyoo Interactors!!! My name is Vy and I’m currently a junior. This is my second year in Interact and I will be your publicity this year! '
                                'Besides Interact, I’m also involved in student council and k-pop club. '
                                'In my free time, I like to dance, edit videos, binge watch k-dramas or tv shows, bullet journal, and listen to music (like alot..send me songs for me to listen to hehe). '
                                'Also, I’m obsessed with stationary and cute stickers so if you got extra stickers, i’ll be glad to take some:). '
                                'I can’t wait to see y’all at our first meeting!');},
                          ),
                        ),
                        Text('Publicity',
                            style: TextStyle(fontWeight: FontWeight.bold), textAlign: TextAlign.center),
                        Expanded(
                          flex: 1,
                          child: IconButton(
                            icon: Image.asset('assets/Christine.jpg'),
                            iconSize: 150,
                            onPressed: () {_showMyDialog(context, 'Christine Yuan', 'District Lieutenant Governor', 'Hi Interactors! I’m Christine and I’m a junior this year. I’ve been in Interact for 3 years and I’m also in Student Council and Mandarin club. '
                                'In my free time, I love watching K-dramas (hmu if you have good reccs!), baking, and learning new guitar songs. '
                                'I can’t wait to start off the new Interact szn with ya’ll, and hope to see you at our first meeting! ');},
                          ),
                        ),
                        Text('District Lieutenant Governor',
                            style: TextStyle(fontWeight: FontWeight.bold), textAlign: TextAlign.center),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
