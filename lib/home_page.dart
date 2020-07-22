import 'package:flutter/material.dart';
import 'package:flutter_layout_test/size_config.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor.withOpacity(0.7),
        elevation: 1,
        leading: Padding(
          padding: EdgeInsets.only(left: 15),
          child: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Stack(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.notifications_none),
                  onPressed: () {},
                ),
                Positioned(
                  top: 8,
                  left: 27,
                  child: CircleAvatar(
                    backgroundColor: Colors.red,
                    maxRadius: 2.5,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: SafeArea(
        // Main Column
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              // Purple Area
              Padding(
                padding: EdgeInsets.all(30),
                child: Column(
                  children: <Widget>[
                    // Main Row
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        // 2 Columns (1 for 3 Rows and 1 for the image)
                        Flexible(
                          flex: 5,
                          child: Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text(
                                    'Saldo disponível',
                                    style: TextStyle(
                                      fontSize:
                                          SizeConfig.safeBlockHorizontal * 4,
                                    ),
                                  )
                                ],
                              ),
                              Container(
                                // margin: EdgeInsets.symmetric(vertical: 8),
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      'R\$ 1.000,00',
                                      style: TextStyle(
                                          fontSize:
                                              SizeConfig.safeBlockHorizontal *
                                                  6.3,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: SizeConfig.safeBlockHorizontal * 2,
                                    ),
                                    Chip(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      labelPadding: EdgeInsets.zero,
                                      backgroundColor:
                                          Colors.deepPurple.withOpacity(0.9),
                                      labelStyle: TextStyle(
                                        color: Colors.amber,
                                        fontSize:
                                            SizeConfig.safeBlockHorizontal *
                                                2.5,
                                      ),
                                      label: Text('+ 15%'),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  Text(
                                    '+ ver todos saldos',
                                    style: TextStyle(
                                      fontSize:
                                          SizeConfig.safeBlockHorizontal * 2.9,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(width: 2, color: Colors.white),
                            ),
                            height: SizeConfig.safeBlockHorizontal * 15,
                            width: SizeConfig.safeBlockHorizontal * 15,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'lib/assets/images/user.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: SizeConfig.safeBlockVertical * 6.2,
                    ),
                    // LINHA DE ÍCONES
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        CustomCategory(Icons.ondemand_video, 'Virtuais'),
                        CustomCategory(Icons.store, 'Fisicas'),
                        CustomCategory(Icons.redeem, 'Ofertas'),
                        CustomCategory(Icons.person_add, 'Indicar\n Amigo'),
                      ],
                    ),
                  ],
                ),
              ),
              // WHITE AREA
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(45),
                    topRight: Radius.circular(45),
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    CustomSectionTitle('Os melhores da sua cidade'),
                    CustomListTile(),
                    CustomListTile(),
                    CustomSectionTitle('As melhores lojas virtuais'),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: SizeConfig.safeBlockHorizontal * 35,
                      child: ListView(
                        padding: EdgeInsets.only(bottom: 20, left: 2),
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          CustomStoreCard('lib/assets/images/americanas.png'),
                          CustomStoreCard('lib/assets/images/submarino.png'),
                          CustomStoreCard('lib/assets/images/kabum.png'),
                          CustomStoreCard('lib/assets/images/magalu.png'),
                        ],
                      ),
                    ),
                    CustomSectionTitle('As melhores ofertas'),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: SizeConfig.safeBlockHorizontal * 35,
                      child: ListView(
                        padding: EdgeInsets.only(bottom: 20, left: 2),
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          CustomStoreCard('lib/assets/images/americanas.png'),
                          CustomStoreCard('lib/assets/images/submarino.png'),
                          CustomStoreCard('lib/assets/images/kabum.png'),
                          CustomStoreCard('lib/assets/images/magalu.png'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        selectedFontSize: 0,
        currentIndex: 2,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.widgets, color: Colors.deepPurple),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.monetization_on),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.deepPurple,
              ),
              child: Icon(
                Icons.add,
                size: 24,
              ),
            ),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event_note),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text(''),
          ),
        ],
      ),
    );
  }
}

class CustomCategory extends StatelessWidget {
  final icon;
  final label;

  CustomCategory(this.icon, this.label);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: <Widget>[
          Container(
            height: SizeConfig.safeBlockHorizontal * 14.7,
            width: SizeConfig.safeBlockHorizontal * 14.7,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Icon(
              icon,
              color: Colors.deepPurple,
              size: SizeConfig.safeBlockVertical * 3.7,
            ),
          ),
          SizedBox(
            height: SizeConfig.safeBlockVertical * 1.2,
          ),
          Text(
            label,
            style: TextStyle(fontSize: SizeConfig.safeBlockHorizontal * 3),
          ),
        ],
      ),
    );
  }
}

class CustomSectionTitle extends StatelessWidget {
  final title;

  CustomSectionTitle(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: SizeConfig.safeBlockHorizontal * 4,
            ),
          ),
          // Could use a FlatButton, but it breaks the layout
          // FlatButton(
          //   onPressed: () {},
          //   materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          //   child: Text(
          //     'VER TUDO',
          //     style: TextStyle(fontSize: 10, color: Colors.deepPurple),
          //   ),
          // ),
          // The InkWell provides the same behavior as a FlatButton
          InkWell(
            onTap: () {},
            splashColor: Colors.grey,
            child: Text(
              'VER TUDO',
              style: TextStyle(
                fontSize: SizeConfig.safeBlockHorizontal * 2.4,
                color: Colors.deepPurple,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shadowColor: Colors.black45,
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 20),
        leading: Image.asset('lib/assets/images/pizza-hut.png'),
        title: Text(
          'Pizza Hut - Pizzaria',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: SizeConfig.safeBlockHorizontal * 3.6,
          ),
        ),
        isThreeLine: true,
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Pizzaria - 1,2 km',
              style: TextStyle(fontSize: SizeConfig.safeBlockHorizontal * 3.2),
            ),
            Container(
              color: Colors.deepPurple.shade900,
              padding: EdgeInsets.symmetric(horizontal: 7),
              margin: EdgeInsets.only(top: 6),
              child: Text(
                '10%',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: SizeConfig.safeBlockHorizontal * 3.5),
              ),
            )
          ],
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                SizedBox(width: 4),
                Text(
                  '4.9',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: SizeConfig.safeBlockHorizontal * 3.2,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CustomStoreCard extends StatelessWidget {
  final imagePath;

  CustomStoreCard(this.imagePath);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.safeBlockHorizontal * 25,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 8,
              spreadRadius: 0.5,
              offset: Offset(0, 10),
            ),
          ]),
      margin: EdgeInsets.symmetric(horizontal: 4),
      child: Padding(
        padding: EdgeInsets.all(5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              height: SizeConfig.safeBlockVertical * 8,
              child: Image.asset(imagePath),
            ),
            Text(
              '5% de volta',
              style: TextStyle(
                fontSize: SizeConfig.safeBlockHorizontal * 2.8,
                color: Colors.purple,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
