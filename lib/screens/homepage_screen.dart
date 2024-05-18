import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return  Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [Icon(Icons.home), Icon(Icons.av_timer_outlined, ), Icon(Icons.favorite),Icon(Icons.person)],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Hi, David 👋',style: TextStyle(fontSize: 28,fontWeight: FontWeight.w500),), 
                      Text('Explore the world',style: TextStyle(fontSize: 18,color: Colors.grey.shade600),),
                    ],
                  ),
                  CircleAvatar(radius: 25,backgroundImage: NetworkImage('https://images.ctfassets.net/h6goo9gw1hh6/2sNZtFAWOdP1lmQ33VwRN3/24e953b920a9cd0ff2e1d587742a2472/1-intro-photo-final.jpg?w=1200&h=992&fl=progressive&q=70&fm=jpg'),)
                ]
                ,
              ), 
              SizedBox(height: 15,), 
              Container(
                padding: EdgeInsets.only(left: 8),
                decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20),border: Border.all(color: Colors.grey.shade400,)),
                child: Row(
                  children: [
                    SizedBox(
                      width: (size.width - 16) * 0.8,
                      child: TextField(
                        decoration: InputDecoration(border: InputBorder.none,hintText: 'Search Places'),
                      )), 
                      Container(
                        width: 1,
                        height: 30,
                        color: Colors.grey,
                      ), 
                      SizedBox(width: 20,),
                      Icon(Icons.filter_list_outlined)
                  ],
                ),
              ), 
              SizedBox(height: 15,), 
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Popular Places',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),)
                ,
                Text('View all',style: TextStyle(color: Colors.grey.shade500,fontWeight: FontWeight.w600),)
                ],
              ), 
              SizedBox(height: 15,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(color: Colors.grey.shade800,borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 18),
                        child: Text('Most Viewed',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),),
                      ),
                    ), 
                    SizedBox(width: 15,),
                    Container(
                      decoration: BoxDecoration(color: Colors.grey.shade300,borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 18),
                        child: Text('Popular',style: TextStyle(color: Colors.grey.shade700,fontWeight: FontWeight.w600),),
                      ),
                    ),
                    SizedBox(width: 15,),
                    Container(
                      decoration: BoxDecoration(color: Colors.grey.shade300,borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 18),
                        child: Text('Near By',style: TextStyle(color: Colors.grey.shade700,fontWeight: FontWeight.w600),),
                      ),
                    ), 
                    SizedBox(width: 15,),
                    Container(
                      decoration: BoxDecoration(color: Colors.grey.shade300,borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 18),
                        child: Text('Latest',style: TextStyle(color: Colors.grey.shade700,fontWeight: FontWeight.w600),),
                      ),
                    )
                  ],
                ),
              ), 
              SizedBox(height: 20,), 
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      width: size.width * 0.7,
                      height: (size.width * 0.7) * 1.5,
                      decoration: BoxDecoration(
                        color: Colors.grey, 
                        borderRadius: BorderRadius.circular(25), 
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage('https://w0.peakpx.com/wallpaper/1024/953/HD-wallpaper-mount-fuji-mountain-nature-sunset-scenic.jpg'))
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 12,right: 12,
                            child: CircleAvatar(
                              backgroundColor: Colors.black.withOpacity(0.5),
                              child: Icon(Icons.favorite_border_rounded,color: Colors.grey.shade200,),
                            ),
                          ), 
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 12),
                              child: Container(
                                padding: EdgeInsets.all(8),
                                width: size.width * 0.6,
                                height: 60,
                                decoration: BoxDecoration(color: Colors.grey.shade900.withOpacity(0.5),borderRadius: BorderRadius.circular(15)),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text('Mount Fuji',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 17),)
                                    ,Text(', Tokyo',style: TextStyle(color: Colors.grey.shade200),)
                                    ],
                                  ), 
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.location_on_rounded,color: Colors.grey.shade300,size: 20,),
                                          SizedBox(width: 5,), 
                                      Text('Tokyo , Japan',style: TextStyle(color: Colors.grey.shade300),)
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Icon(Icons.star_border_purple500_outlined,color: Colors.grey.shade300,size: 20,), 
                                          Text('4.8',style: TextStyle(color: Colors.grey.shade300),)
                                        ],
                                      )
                                      
                                    ],
                                  )
                                ],
                              ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 30,), 
                    Container(
                  width: size.width * 0.7,
                  height: (size.width * 0.7) * 1.5,
                  decoration: BoxDecoration(
                    color: Colors.grey, 
                    borderRadius: BorderRadius.circular(25), 
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage('https://i.pinimg.com/736x/77/c2/ee/77c2ee6d0b97a0c1d5291411562f768e.jpg'))
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 12,right: 12,
                        child: CircleAvatar(
                          backgroundColor: Colors.black.withOpacity(0.5),
                          child: Icon(Icons.favorite_border_rounded,color: Colors.grey.shade200,),
                        ),
                      ), 
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 12),
                          child: Container(
                            padding: EdgeInsets.all(8),
                            width: size.width * 0.6,
                            height: 60,
                            decoration: BoxDecoration(color: Colors.grey.shade900.withOpacity(0.5),borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text('Andes Mountain',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 17),)
                                ,Text(', Tokyo',style: TextStyle(color: Colors.grey.shade200),)
                                ],
                              ), 
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.location_on_rounded,color: Colors.grey.shade300,size: 20,),
                                      SizedBox(width: 5,), 
                                  Text('Tokyo , Japan',style: TextStyle(color: Colors.grey.shade300),)
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.star_border_purple500_outlined,color: Colors.grey.shade300,size: 20,), 
                                      Text('3.9',style: TextStyle(color: Colors.grey.shade300),)
                                    ],
                                  )
                                  
                                ],
                              )
                            ],
                          ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
                  ],
                ),
              ), 
              
            ],
          ),
        ),
      ),
    );
  }
}