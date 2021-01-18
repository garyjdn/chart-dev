import 'package:flutter/material.dart';

class CategorySliderOrg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            'Category',
            style: Theme.of(context).textTheme.headline5.copyWith(
              fontFamily: 'Poppins',
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.black87
            )
          ),
        ),
        SizedBox(height: 10,),
        Container(
          height: 80,
          child: ListView(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            children: [
              SizedBox(width: 11),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 4),
                width: 130,
                height: 80,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Stack(
                    children: [
                      Image.network(
                        "https://images.unsplash.com/photo-1597007030739-6d2e7172ee5b?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80",
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.cover
                      ),
                      Container(
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [Color(0xff000000).withOpacity(0.7), Color(0xff000000).withOpacity(0.1)],
                            )
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Sedan",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          )
                        )
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 4),
                width: 130,
                height: 80,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Stack(
                    children: [
                      Image.network(
                        "https://images.unsplash.com/photo-1517942491415-4fc176d3c2f7?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1567&q=80",
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.cover
                      ),
                      Container(
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [Color(0xff000000).withOpacity(0.7), Color(0xff000000).withOpacity(0.1)],
                            )
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 5.0),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "SUV",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          )
                        )
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 4),
                width: 130,
                height: 80,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Stack(
                    children: [
                      Image.network(
                        "https://images.unsplash.com/photo-1592725832429-c3154644aec2?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=750&q=80",
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.cover
                      ),
                      Container(
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [Color(0xff000000).withOpacity(0.7), Color(0xff000000).withOpacity(0.1)],
                            )
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 5.0),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "MPV",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          )
                        )
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 4),
                width: 130,
                height: 80,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Stack(
                    children: [
                      Image.network(
                        "https://images.pexels.com/photos/39501/lamborghini-brno-racing-car-automobiles-39501.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260",
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.cover
                      ),
                      Container(
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [Color(0xff000000).withOpacity(0.7), Color(0xff000000).withOpacity(0.1)],
                            )
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 5.0),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Sports",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          )
                        )
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 4),
                width: 130,
                height: 80,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Stack(
                    children: [
                      Image.network(
                        "https://images.pexels.com/photos/1054211/pexels-photo-1054211.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.cover
                      ),
                      Container(
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [Color(0xff000000).withOpacity(0.7), Color(0xff000000).withOpacity(0.1)],
                            )
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 5.0),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Hatchback",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          )
                        )
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 4),
                width: 130,
                height: 80,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Stack(
                    children: [
                      Image.network(
                        "https://images.unsplash.com/photo-1517942491415-4fc176d3c2f7?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1567&q=80",
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.cover
                      ),
                      Container(
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [Color(0xff000000).withOpacity(0.7), Color(0xff000000).withOpacity(0.1)],
                            )
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 5.0),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Truck",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          )
                        )
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 4),
                width: 130,
                height: 80,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Stack(
                    children: [
                      Image.network(
                        "https://images.unsplash.com/photo-1592725832429-c3154644aec2?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=750&q=80",
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.cover
                      ),
                      Container(
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [Color(0xff000000).withOpacity(0.7), Color(0xff000000).withOpacity(0.1)],
                            )
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 5.0),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Wagon",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          )
                        )
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(width: 11),
            ],
          ),
        )
      ],
    );
  }
}