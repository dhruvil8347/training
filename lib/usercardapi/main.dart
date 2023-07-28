import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:trining/usercardapi/user.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Apicard",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const UsercardApi(),
    );
  }
}

class UsercardApi extends StatefulWidget {
  const UsercardApi({Key? key}) : super(key: key);

  @override
  State<UsercardApi> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<UsercardApi> {
  List<UserModel> userList = [];
  //List<Address> userAddress = [];
  bool isLoding = false;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      getdata();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: isLoding
            ? const Center(
                child: CircularProgressIndicator(
                color: Colors.black,
              ))
            : SafeArea(
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: userList.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          InkWell(
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return Center(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [

                                          Text(
                                            "City: ${userList[index].address.city}",
                                            style: const TextStyle(
                                                fontSize: 13),
                                          ),

                                          Container(
                                            width: 250,
                                            decoration: const BoxDecoration(
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.black,
                                                    blurRadius: 0.5,
                                                    offset: Offset(0.0, 0.1),
                                                  )
                                                ]),
                                            child: Card(
                                              elevation: 1,
                                              color: Colors.white,
                                              shadowColor: Colors.black,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Column(
                                                  children: [
                                                    const SizedBox(
                                                      height: 10,
                                                    ),
                                                    Text(
                                                      "No:${userList[index].id}",
                                                    ),
                                                    const SizedBox(
                                                      height: 10,
                                                    ),
                                                    Container(
                                                      height: 130,
                                                      width: 130,
                                                      //child: Image.asset("assets/images/dhruvil.jpg."),
                                                      decoration: BoxDecoration(
                                                          image: const DecorationImage(
                                                              image: AssetImage(
                                                                  "assets/images/avtar.png"),
                                                              fit: BoxFit.fill),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(50),
                                                          color: Colors
                                                              .transparent),
                                                    ),
                                                    Text(
                                                      "Name: ${userList[index].name}",
                                                      style: const TextStyle(
                                                          fontSize: 18),
                                                    ),
                                                    Text(
                                                      "username:${userList[index].username}",
                                                      style: const TextStyle(
                                                          fontSize: 18),
                                                    ),
                                                    const Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 80, top: 5),
                                                      child: Text("Address:",
                                                          style: TextStyle(
                                                              fontSize: 15)),
                                                    ),
                                                    Text(
                                                      "City: ${userList[index].address.city}",
                                                      style: const TextStyle(
                                                          fontSize: 13),
                                                    ),
                                                    Text(
                                                      "Street: ${userList[index].address.street}",
                                                      style: const TextStyle(
                                                          fontSize: 13),
                                                    ),
                                                    Text(
                                                      "Suite: ${userList[index].address.suite}",
                                                      style: const TextStyle(
                                                          fontSize: 13),
                                                    ),
                                                    Text(
                                                      "Zipcode: ${userList[index].address.zipcode}",
                                                      style: const TextStyle(
                                                          fontSize: 13),
                                                    ),
                                                    const SizedBox(
                                                      height: 10,
                                                    ),
                                                    Text(
                                                      "Phone:${userList[index].number}",
                                                      style: const TextStyle(
                                                          fontSize: 13),
                                                    ),
                                                    Text(
                                                      "website: ${userList[index].website}",
                                                      style: const TextStyle(
                                                          fontSize: 13),
                                                    ),
                                                    Text(
                                                      "Email: ${userList[index].email}",
                                                      style: const TextStyle(
                                                          fontSize: 13),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  }
                                  );
                            },
                            child: Container(
                              width: 250,
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black,
                                      blurRadius: 0.5,
                                      offset: Offset(0.0, 0.1),
                                    )
                                  ]),
                              child: Card(
                                elevation: 1,
                                color: Colors.white,
                                shadowColor: Colors.black,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "No:${userList[index].id}",
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        height: 130,
                                        width: 130,
                                        //child: Image.asset("assets/images/dhruvil.jpg."),
                                        decoration: BoxDecoration(
                                            image: const DecorationImage(
                                                image: AssetImage(
                                                    "assets/images/avtar.png"),
                                                fit: BoxFit.fill),
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            color: Colors.transparent),
                                      ),
                                      Text(
                                        "Name: ${userList[index].name}",
                                        style: const TextStyle(fontSize: 18),
                                      ),
                                      Text(
                                        "username:${userList[index].username}",
                                        style: const TextStyle(fontSize: 18),
                                      ),
                                      const Padding(
                                        padding:
                                            EdgeInsets.only(right: 80, top: 5),
                                        child: Text("Address:",
                                            style: TextStyle(fontSize: 15)),
                                      ),
                                      Text(
                                        "City: ${userList[index].address.city}",
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                      Text(
                                        "Street: ${userList[index].address.street}",
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                      Text(
                                        "Suite: ${userList[index].address.suite}",
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                      Text(
                                        "Zipcode: ${userList[index].address.zipcode}",
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Phone:${userList[index].number}",
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                      Text(
                                        "website: ${userList[index].website}",
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                      Text(
                                        "Email: ${userList[index].email}",
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    }),
              ));
  }

  void getdata() async {
    try {
      isLoding = true;
      var response =
          await Dio().get("https://jsonplaceholder.typicode.com/users");
      /*var response =
      await Dio().get("http://testecommerce.equitysofttechnologies.com/company/add");*/
      userList =
          List<UserModel>.from(response.data.map((e) => UserModel.fromJson(e)));

      print(response.data);
      setState(() {
        isLoding = false;
      });
    } catch (e) {
      print(e);
    }
  }
}
