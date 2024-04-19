import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  const StackPage({super.key});

  @override
  Widget build(BuildContext context) {
    double hsize = MediaQuery.of(context).size.height;
    double wsize = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: hsize,
            width: wsize,
            color: Colors.white,
            child: Column(
              children: [
                Container(
                  width: wsize,
                  height: hsize * 0.42,
                  decoration: const BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30))),
                  child: const Center(
                    child: Text(
                      "Hii I am Ayush",
                      style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: hsize * 0.42 - 50,
            left: 20,
            child: SizedBox(
                width: wsize * 0.85,
                height: hsize * 0.25,
                child: twoBox(wsize, hsize, 1500),),
          ),

          Positioned(
            top: hsize * 0.42 - 50 + 230,
            left: 20,
            child: SizedBox(
                width: wsize * 0.85,
                height: hsize * 0.25,
                child: twoBox(wsize, hsize, 2000),),
          ),
        ],
      ),
    );
  }

  Widget twoBox(double wsize, double hsize, double price) {
    return Stack(
      children: [
        Positioned(
          bottom: 0,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    spreadRadius: 1,
                    blurRadius: 1,
                  )
                ]),
            width: wsize * 0.85,
            height: hsize * 0.25 - 15,
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: wsize * 0.46,
                      height: 35,
                      child: const ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.blue,
                          child: Icon(Icons.share,color: Colors.white,),),
                        title: Text("Loaction 1"),
                        subtitle: Text("Time"),
                      ),
                    ),
                    // const SizedBox(height: 40,),
                    SizedBox(
                      width: wsize * 0.46,
                      height: 35,
                      child: const ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.blue,
                          child: Icon(Icons.train,color: Colors.white,),),
                        title: Text("Loaction 2"),
                        subtitle: Text("Time"),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Price : ",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "\$ ${price.toString()}",
                      style: const TextStyle(
                          color: Colors.green,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue),
                        onPressed: () {},
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 7),
                          child: Text(
                            "Pay",
                            style: TextStyle(color: Colors.white),
                          ),
                        ))
                  ],
                ),
              ],
            ),
          ),
        ),
        const Positioned(
          left: 20,
          child: CircleAvatar(
            backgroundColor: Colors.blue,
            child: Icon(
              Icons.train,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
