import 'package:flutter/material.dart';
import 'package:project/data/data.dart';
import 'package:project/login/page/details.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var body = Container(
        child: GridView.builder(
            shrinkWrap: false,
            itemCount: DataCar.Car.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            itemBuilder: (BuildContext context,int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),

                child: InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Details(info: DataCar.Car[index],)
                      ),
                    );
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Container(
                      width: MediaQuery.of(context).size.width /2,
                      height: 50,
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8.0),
                                topRight: Radius.circular(8.0),
                              ),
                              child: Hero(
                                  tag: DataCar.Car[index].id_car,
                                  child: FadeInImage(
                                    image:
                                    AssetImage(DataCar.Car[index].image),
                                    fit: BoxFit.cover,
                                    placeholder:
                                    AssetImage('assets/images/load.gif'),
                                  )
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              DataCar.Car[index].title,
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }
        )
    );



    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('CAR'),
        actions: <Widget>[
        ],
      ),
      body: body,
    );
  }
}