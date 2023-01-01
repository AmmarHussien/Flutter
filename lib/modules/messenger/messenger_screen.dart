import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {
  const MessengerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return  Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading:   IconButton(
              onPressed: (){},
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              )
          ),
          title: Container(
            alignment: Alignment.center,
            child: const Text(
              'Chats',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          actions:  [
            IconButton(
                onPressed: (){},
                icon: const Icon(
                  Icons.input,
                  color: Colors.black,
                )
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 55,
                child: Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: TextFormField(
                    //controller: emailController,
                    keyboardType: TextInputType.emailAddress ,
                    onFieldSubmitted: (String value){
                      print(value);
                    },
                    onChanged: ( String value ){
                      print(value);
                    },
                    decoration:  InputDecoration(
                      hintText: 'search',
                      //labelText: 'search',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                      ),
                      prefixIcon:const Icon(
                          Icons.search
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 10
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        width: 60,
                        alignment: AlignmentDirectional.center,
                        child: Column(
                          children:  [
                            Stack(
                              alignment: AlignmentDirectional.bottomEnd,
                              children: const [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundImage: NetworkImage('https://cdn.britannica.com/35/238335-050-2CB2EB8A/Lionel-Messi-Argentina-Netherlands-World-Cup-Qatar-2022.jpg'),
                                ),
                                CircleAvatar(
                                  radius: 9.5,
                                  backgroundColor: Colors.white,
                                ),
                                CircleAvatar(
                                  radius: 8,
                                  backgroundColor: Colors.green,
                                )
                              ]
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                  left: 10
                              ),
                              child: const Text(
                                'Messi Messi Messi',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                        width: 60,
                        alignment: AlignmentDirectional.center,
                        child: Column(
                          children:  [
                            Stack(
                                alignment: AlignmentDirectional.bottomEnd,
                                children: const [
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundImage: NetworkImage('https://cdn.britannica.com/35/238335-050-2CB2EB8A/Lionel-Messi-Argentina-Netherlands-World-Cup-Qatar-2022.jpg'),
                                  ),
                                  CircleAvatar(
                                    radius: 9.5,
                                    backgroundColor: Colors.white,
                                  ),
                                  CircleAvatar(
                                    radius: 8,
                                    backgroundColor: Colors.green,
                                  )
                                ]
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                  left: 10
                              ),
                              child: const Text(
                                'Messi Messi Messi',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                        width: 60,
                        alignment: AlignmentDirectional.center,
                        child: Column(
                          children:  [
                            Stack(
                                alignment: AlignmentDirectional.bottomEnd,
                                children: const [
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundImage: NetworkImage('https://cdn.britannica.com/35/238335-050-2CB2EB8A/Lionel-Messi-Argentina-Netherlands-World-Cup-Qatar-2022.jpg'),
                                  ),
                                  CircleAvatar(
                                    radius: 9.5,
                                    backgroundColor: Colors.white,
                                  ),
                                  CircleAvatar(
                                    radius: 8,
                                    backgroundColor: Colors.green,
                                  )
                                ]
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                  left: 10
                              ),
                              child: const Text(
                                'Messi Messi Messi',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                        width: 60,
                        alignment: AlignmentDirectional.center,
                        child: Column(
                          children:  [
                            Stack(
                                alignment: AlignmentDirectional.bottomEnd,
                                children: const [
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundImage: NetworkImage('https://cdn.britannica.com/35/238335-050-2CB2EB8A/Lionel-Messi-Argentina-Netherlands-World-Cup-Qatar-2022.jpg'),
                                  ),
                                  CircleAvatar(
                                    radius: 9.5,
                                    backgroundColor: Colors.white,
                                  ),
                                  CircleAvatar(
                                    radius: 8,
                                    backgroundColor: Colors.green,
                                  )
                                ]
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                  left: 10
                              ),
                              child: const Text(
                                'Messi Messi Messi',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                        width: 60,
                        alignment: AlignmentDirectional.center,
                        child: Column(
                          children:  [
                            Stack(
                                alignment: AlignmentDirectional.bottomEnd,
                                children: const [
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundImage: NetworkImage('https://cdn.britannica.com/35/238335-050-2CB2EB8A/Lionel-Messi-Argentina-Netherlands-World-Cup-Qatar-2022.jpg'),
                                  ),
                                  CircleAvatar(
                                    radius: 9.5,
                                    backgroundColor: Colors.white,
                                  ),
                                  CircleAvatar(
                                    radius: 8,
                                    backgroundColor: Colors.green,
                                  )
                                ]
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                  left: 10
                              ),
                              child: const Text(
                                'Messi Messi Messi',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                        width: 60,
                        alignment: AlignmentDirectional.center,
                        child: Column(
                          children:  [
                            Stack(
                                alignment: AlignmentDirectional.bottomEnd,
                                children: const [
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundImage: NetworkImage('https://cdn.britannica.com/35/238335-050-2CB2EB8A/Lionel-Messi-Argentina-Netherlands-World-Cup-Qatar-2022.jpg'),
                                  ),
                                  CircleAvatar(
                                    radius: 9.5,
                                    backgroundColor: Colors.white,
                                  ),
                                  CircleAvatar(
                                    radius: 8,
                                    backgroundColor: Colors.green,
                                  )
                                ]
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                  left: 10
                              ),
                              child: const Text(
                                'Messi Messi Messi',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                        width: 60,
                        alignment: AlignmentDirectional.center,
                        child: Column(
                          children:  [
                            Stack(
                                alignment: AlignmentDirectional.bottomEnd,
                                children: const [
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundImage: NetworkImage('https://cdn.britannica.com/35/238335-050-2CB2EB8A/Lionel-Messi-Argentina-Netherlands-World-Cup-Qatar-2022.jpg'),
                                  ),
                                  CircleAvatar(
                                    radius: 9.5,
                                    backgroundColor: Colors.white,
                                  ),
                                  CircleAvatar(
                                    radius: 8,
                                    backgroundColor: Colors.green,
                                  )
                                ]
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                  left: 10
                              ),
                              child: const Text(
                                'Messi Messi Messi',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                        width: 60,
                        alignment: AlignmentDirectional.center,
                        child: Column(
                          children:  [
                            Stack(
                                alignment: AlignmentDirectional.bottomEnd,
                                children: const [
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundImage: NetworkImage('https://cdn.britannica.com/35/238335-050-2CB2EB8A/Lionel-Messi-Argentina-Netherlands-World-Cup-Qatar-2022.jpg'),
                                  ),
                                  CircleAvatar(
                                    radius: 9.5,
                                    backgroundColor: Colors.white,
                                  ),
                                  CircleAvatar(
                                    radius: 8,
                                    backgroundColor: Colors.green,
                                  )
                                ]
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                  left: 10
                              ),
                              child: const Text(
                                'Messi Messi Messi',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                        width: 60,
                        alignment: AlignmentDirectional.center,
                        child: Column(
                          children:  [
                            Stack(
                                alignment: AlignmentDirectional.bottomEnd,
                                children: const [
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundImage: NetworkImage('https://cdn.britannica.com/35/238335-050-2CB2EB8A/Lionel-Messi-Argentina-Netherlands-World-Cup-Qatar-2022.jpg'),
                                  ),
                                  CircleAvatar(
                                    radius: 9.5,
                                    backgroundColor: Colors.white,
                                  ),
                                  CircleAvatar(
                                    radius: 8,
                                    backgroundColor: Colors.green,
                                  )
                                ]
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                  left: 10
                              ),
                              child: const Text(
                                'Messi Messi Messi',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                        width: 60,
                        alignment: AlignmentDirectional.center,
                        child: Column(
                          children:  [
                            Stack(
                                alignment: AlignmentDirectional.bottomEnd,
                                children: const [
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundImage: NetworkImage('https://cdn.britannica.com/35/238335-050-2CB2EB8A/Lionel-Messi-Argentina-Netherlands-World-Cup-Qatar-2022.jpg'),
                                  ),
                                  CircleAvatar(
                                    radius: 9.5,
                                    backgroundColor: Colors.white,
                                  ),
                                  CircleAvatar(
                                    radius: 8,
                                    backgroundColor: Colors.green,
                                  )
                                ]
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                  left: 10
                              ),
                              child: const Text(
                                'Messi Messi Messi',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                        width: 60,
                        alignment: AlignmentDirectional.center,
                        child: Column(
                          children:  [
                            Stack(
                                alignment: AlignmentDirectional.bottomEnd,
                                children: const [
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundImage: NetworkImage('https://cdn.britannica.com/35/238335-050-2CB2EB8A/Lionel-Messi-Argentina-Netherlands-World-Cup-Qatar-2022.jpg'),
                                  ),
                                  CircleAvatar(
                                    radius: 9.5,
                                    backgroundColor: Colors.white,
                                  ),
                                  CircleAvatar(
                                    radius: 8,
                                    backgroundColor: Colors.green,
                                  )
                                ]
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                  left: 10
                              ),
                              child: const Text(
                                'Messi Messi Messi',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                        width: 60,
                        alignment: AlignmentDirectional.center,
                        child: Column(
                          children:  [
                            Stack(
                                alignment: AlignmentDirectional.bottomEnd,
                                children: const [
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundImage: NetworkImage('https://cdn.britannica.com/35/238335-050-2CB2EB8A/Lionel-Messi-Argentina-Netherlands-World-Cup-Qatar-2022.jpg'),
                                  ),
                                  CircleAvatar(
                                    radius: 9.5,
                                    backgroundColor: Colors.white,
                                  ),
                                  CircleAvatar(
                                    radius: 8,
                                    backgroundColor: Colors.green,
                                  )
                                ]
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                  left: 10
                              ),
                              child: const Text(
                                'Messi Messi Messi',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                        width: 60,
                        alignment: AlignmentDirectional.center,
                        child: Column(
                          children:  [
                            Stack(
                                alignment: AlignmentDirectional.bottomEnd,
                                children: const [
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundImage: NetworkImage('https://cdn.britannica.com/35/238335-050-2CB2EB8A/Lionel-Messi-Argentina-Netherlands-World-Cup-Qatar-2022.jpg'),
                                  ),
                                  CircleAvatar(
                                    radius: 9.5,
                                    backgroundColor: Colors.white,
                                  ),
                                  CircleAvatar(
                                    radius: 8,
                                    backgroundColor: Colors.green,
                                  )
                                ]
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                  left: 10
                              ),
                              child: const Text(
                                'Messi Messi Messi',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                        width: 60,
                        alignment: AlignmentDirectional.center,
                        child: Column(
                          children:  [
                            Stack(
                                alignment: AlignmentDirectional.bottomEnd,
                                children: const [
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundImage: NetworkImage('https://cdn.britannica.com/35/238335-050-2CB2EB8A/Lionel-Messi-Argentina-Netherlands-World-Cup-Qatar-2022.jpg'),
                                  ),
                                  CircleAvatar(
                                    radius: 9.5,
                                    backgroundColor: Colors.white,
                                  ),
                                  CircleAvatar(
                                    radius: 8,
                                    backgroundColor: Colors.green,
                                  )
                                ]
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                  left: 10
                              ),
                              child: const Text(
                                'Messi Messi Messi',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(

                margin: const EdgeInsets.only(
                  left: 10,
                  right: 10
                ),
                alignment: AlignmentDirectional.center,
                child: Row(
                  children:  [
                    Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: const [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage('https://cdn.britannica.com/35/238335-050-2CB2EB8A/Lionel-Messi-Argentina-Netherlands-World-Cup-Qatar-2022.jpg'),
                          ),
                          CircleAvatar(
                            radius: 9.5,
                            backgroundColor: Colors.white,
                          ),
                          CircleAvatar(
                            radius: 8,
                            backgroundColor: Colors.green,
                          )
                        ]
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Messi Messi',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: const [
                              Expanded(
                                child: Text(
                                  'Hello Miimz Hello Miimz Hello Miimz',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                               SizedBox(
                                width: 20,
                              ),
                              Text(
                                '2:12 pm',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(

                margin: const EdgeInsets.only(
                    left: 10,
                    right: 10
                ),
                alignment: AlignmentDirectional.center,
                child: Row(
                  children:  [
                    Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: const [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage('https://cdn.britannica.com/35/238335-050-2CB2EB8A/Lionel-Messi-Argentina-Netherlands-World-Cup-Qatar-2022.jpg'),
                          ),
                          CircleAvatar(
                            radius: 9.5,
                            backgroundColor: Colors.white,
                          ),
                          CircleAvatar(
                            radius: 8,
                            backgroundColor: Colors.green,
                          )
                        ]
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Messi Messi',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: const [
                              Expanded(
                                child: Text(
                                  'Hello Miimz Hello Miimz Hello Miimz',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                '2:12 pm',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(

                margin: const EdgeInsets.only(
                    left: 10,
                    right: 10
                ),
                alignment: AlignmentDirectional.center,
                child: Row(
                  children:  [
                    Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: const [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage('https://cdn.britannica.com/35/238335-050-2CB2EB8A/Lionel-Messi-Argentina-Netherlands-World-Cup-Qatar-2022.jpg'),
                          ),
                          CircleAvatar(
                            radius: 9.5,
                            backgroundColor: Colors.white,
                          ),
                          CircleAvatar(
                            radius: 8,
                            backgroundColor: Colors.green,
                          )
                        ]
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Messi Messi',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: const [
                              Expanded(
                                child: Text(
                                  'Hello Miimz Hello Miimz Hello Miimz',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                '2:12 pm',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(

                margin: const EdgeInsets.only(
                    left: 10,
                    right: 10
                ),
                alignment: AlignmentDirectional.center,
                child: Row(
                  children:  [
                    Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: const [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage('https://cdn.britannica.com/35/238335-050-2CB2EB8A/Lionel-Messi-Argentina-Netherlands-World-Cup-Qatar-2022.jpg'),
                          ),
                          CircleAvatar(
                            radius: 9.5,
                            backgroundColor: Colors.white,
                          ),
                          CircleAvatar(
                            radius: 8,
                            backgroundColor: Colors.green,
                          )
                        ]
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Messi Messi',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: const [
                              Expanded(
                                child: Text(
                                  'Hello Miimz Hello Miimz Hello Miimz',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                '2:12 pm',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(

                margin: const EdgeInsets.only(
                    left: 10,
                    right: 10
                ),
                alignment: AlignmentDirectional.center,
                child: Row(
                  children:  [
                    Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: const [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage('https://cdn.britannica.com/35/238335-050-2CB2EB8A/Lionel-Messi-Argentina-Netherlands-World-Cup-Qatar-2022.jpg'),
                          ),
                          CircleAvatar(
                            radius: 9.5,
                            backgroundColor: Colors.white,
                          ),
                          CircleAvatar(
                            radius: 8,
                            backgroundColor: Colors.green,
                          )
                        ]
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Messi Messi',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: const [
                              Expanded(
                                child: Text(
                                  'Hello Miimz Hello Miimz Hello Miimz',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                '2:12 pm',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(

                margin: const EdgeInsets.only(
                    left: 10,
                    right: 10
                ),
                alignment: AlignmentDirectional.center,
                child: Row(
                  children:  [
                    Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: const [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage('https://cdn.britannica.com/35/238335-050-2CB2EB8A/Lionel-Messi-Argentina-Netherlands-World-Cup-Qatar-2022.jpg'),
                          ),
                          CircleAvatar(
                            radius: 9.5,
                            backgroundColor: Colors.white,
                          ),
                          CircleAvatar(
                            radius: 8,
                            backgroundColor: Colors.green,
                          )
                        ]
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Messi Messi',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: const [
                              Expanded(
                                child: Text(
                                  'Hello Miimz Hello Miimz Hello Miimz',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                '2:12 pm',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(

                margin: const EdgeInsets.only(
                    left: 10,
                    right: 10
                ),
                alignment: AlignmentDirectional.center,
                child: Row(
                  children:  [
                    Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: const [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage('https://cdn.britannica.com/35/238335-050-2CB2EB8A/Lionel-Messi-Argentina-Netherlands-World-Cup-Qatar-2022.jpg'),
                          ),
                          CircleAvatar(
                            radius: 9.5,
                            backgroundColor: Colors.white,
                          ),
                          CircleAvatar(
                            radius: 8,
                            backgroundColor: Colors.green,
                          )
                        ]
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Messi Messi',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: const [
                              Expanded(
                                child: Text(
                                  'Hello Miimz Hello Miimz Hello Miimz',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                '2:12 pm',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(

                margin: const EdgeInsets.only(
                    left: 10,
                    right: 10
                ),
                alignment: AlignmentDirectional.center,
                child: Row(
                  children:  [
                    Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: const [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage('https://cdn.britannica.com/35/238335-050-2CB2EB8A/Lionel-Messi-Argentina-Netherlands-World-Cup-Qatar-2022.jpg'),
                          ),
                          CircleAvatar(
                            radius: 9.5,
                            backgroundColor: Colors.white,
                          ),
                          CircleAvatar(
                            radius: 8,
                            backgroundColor: Colors.green,
                          )
                        ]
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Messi Messi',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: const [
                              Expanded(
                                child: Text(
                                  'Hello Miimz Hello Miimz Hello Miimz',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                '2:12 pm',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(

                margin: const EdgeInsets.only(
                    left: 10,
                    right: 10
                ),
                alignment: AlignmentDirectional.center,
                child: Row(
                  children:  [
                    Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: const [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage('https://cdn.britannica.com/35/238335-050-2CB2EB8A/Lionel-Messi-Argentina-Netherlands-World-Cup-Qatar-2022.jpg'),
                          ),
                          CircleAvatar(
                            radius: 9.5,
                            backgroundColor: Colors.white,
                          ),
                          CircleAvatar(
                            radius: 8,
                            backgroundColor: Colors.green,
                          )
                        ]
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Messi Messi',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: const [
                              Expanded(
                                child: Text(
                                  'Hello Miimz Hello Miimz Hello Miimz',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                '2:12 pm',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(

                margin: const EdgeInsets.only(
                    left: 10,
                    right: 10
                ),
                alignment: AlignmentDirectional.center,
                child: Row(
                  children:  [
                    Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: const [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage('https://cdn.britannica.com/35/238335-050-2CB2EB8A/Lionel-Messi-Argentina-Netherlands-World-Cup-Qatar-2022.jpg'),
                          ),
                          CircleAvatar(
                            radius: 9.5,
                            backgroundColor: Colors.white,
                          ),
                          CircleAvatar(
                            radius: 8,
                            backgroundColor: Colors.green,
                          )
                        ]
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Messi Messi',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: const [
                              Expanded(
                                child: Text(
                                  'Hello Miimz Hello Miimz Hello Miimz',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                '2:12 pm',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(

                margin: const EdgeInsets.only(
                    left: 10,
                    right: 10
                ),
                alignment: AlignmentDirectional.center,
                child: Row(
                  children:  [
                    Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: const [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage('https://cdn.britannica.com/35/238335-050-2CB2EB8A/Lionel-Messi-Argentina-Netherlands-World-Cup-Qatar-2022.jpg'),
                          ),
                          CircleAvatar(
                            radius: 9.5,
                            backgroundColor: Colors.white,
                          ),
                          CircleAvatar(
                            radius: 8,
                            backgroundColor: Colors.green,
                          )
                        ]
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Messi Messi',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: const [
                              Expanded(
                                child: Text(
                                  'Hello Miimz Hello Miimz Hello Miimz',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                '2:12 pm',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(

                margin: const EdgeInsets.only(
                    left: 10,
                    right: 10
                ),
                alignment: AlignmentDirectional.center,
                child: Row(
                  children:  [
                    Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: const [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage('https://cdn.britannica.com/35/238335-050-2CB2EB8A/Lionel-Messi-Argentina-Netherlands-World-Cup-Qatar-2022.jpg'),
                          ),
                          CircleAvatar(
                            radius: 9.5,
                            backgroundColor: Colors.white,
                          ),
                          CircleAvatar(
                            radius: 8,
                            backgroundColor: Colors.green,
                          )
                        ]
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Messi Messi',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: const [
                              Expanded(
                                child: Text(
                                  'Hello Miimz Hello Miimz Hello Miimz',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                '2:12 pm',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(

                margin: const EdgeInsets.only(
                    left: 10,
                    right: 10
                ),
                alignment: AlignmentDirectional.center,
                child: Row(
                  children:  [
                    Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: const [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage('https://cdn.britannica.com/35/238335-050-2CB2EB8A/Lionel-Messi-Argentina-Netherlands-World-Cup-Qatar-2022.jpg'),
                          ),
                          CircleAvatar(
                            radius: 9.5,
                            backgroundColor: Colors.white,
                          ),
                          CircleAvatar(
                            radius: 8,
                            backgroundColor: Colors.green,
                          )
                        ]
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Messi Messi',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: const [
                              Expanded(
                                child: Text(
                                  'Hello Miimz Hello Miimz Hello Miimz',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                '2:12 pm',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(

                margin: const EdgeInsets.only(
                    left: 10,
                    right: 10
                ),
                alignment: AlignmentDirectional.center,
                child: Row(
                  children:  [
                    Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: const [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage('https://cdn.britannica.com/35/238335-050-2CB2EB8A/Lionel-Messi-Argentina-Netherlands-World-Cup-Qatar-2022.jpg'),
                          ),
                          CircleAvatar(
                            radius: 9.5,
                            backgroundColor: Colors.white,
                          ),
                          CircleAvatar(
                            radius: 8,
                            backgroundColor: Colors.green,
                          )
                        ]
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Messi Messi',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: const [
                              Expanded(
                                child: Text(
                                  'Hello Miimz Hello Miimz Hello Miimz',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                '2:12 pm',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(

                margin: const EdgeInsets.only(
                    left: 10,
                    right: 10
                ),
                alignment: AlignmentDirectional.center,
                child: Row(
                  children:  [
                    Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: const [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage('https://cdn.britannica.com/35/238335-050-2CB2EB8A/Lionel-Messi-Argentina-Netherlands-World-Cup-Qatar-2022.jpg'),
                          ),
                          CircleAvatar(
                            radius: 9.5,
                            backgroundColor: Colors.white,
                          ),
                          CircleAvatar(
                            radius: 8,
                            backgroundColor: Colors.green,
                          )
                        ]
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Messi Messi',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: const [
                              Expanded(
                                child: Text(
                                  'Hello Miimz Hello Miimz Hello Miimz',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                '2:12 pm',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(

                margin: const EdgeInsets.only(
                    left: 10,
                    right: 10
                ),
                alignment: AlignmentDirectional.center,
                child: Row(
                  children:  [
                    Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: const [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage('https://cdn.britannica.com/35/238335-050-2CB2EB8A/Lionel-Messi-Argentina-Netherlands-World-Cup-Qatar-2022.jpg'),
                          ),
                          CircleAvatar(
                            radius: 9.5,
                            backgroundColor: Colors.white,
                          ),
                          CircleAvatar(
                            radius: 8,
                            backgroundColor: Colors.green,
                          )
                        ]
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Messi Messi',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: const [
                              Expanded(
                                child: Text(
                                  'Hello Miimz Hello Miimz Hello Miimz',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                '2:12 pm',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(

                margin: const EdgeInsets.only(
                    left: 10,
                    right: 10
                ),
                alignment: AlignmentDirectional.center,
                child: Row(
                  children:  [
                    Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: const [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage('https://cdn.britannica.com/35/238335-050-2CB2EB8A/Lionel-Messi-Argentina-Netherlands-World-Cup-Qatar-2022.jpg'),
                          ),
                          CircleAvatar(
                            radius: 9.5,
                            backgroundColor: Colors.white,
                          ),
                          CircleAvatar(
                            radius: 8,
                            backgroundColor: Colors.green,
                          )
                        ]
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Messi Messi',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: const [
                              Expanded(
                                child: Text(
                                  'Hello Miimz Hello Miimz Hello Miimz',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                '2:12 pm',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(

                margin: const EdgeInsets.only(
                    left: 10,
                    right: 10
                ),
                alignment: AlignmentDirectional.center,
                child: Row(
                  children:  [
                    Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: const [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage('https://cdn.britannica.com/35/238335-050-2CB2EB8A/Lionel-Messi-Argentina-Netherlands-World-Cup-Qatar-2022.jpg'),
                          ),
                          CircleAvatar(
                            radius: 9.5,
                            backgroundColor: Colors.white,
                          ),
                          CircleAvatar(
                            radius: 8,
                            backgroundColor: Colors.green,
                          )
                        ]
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Messi Messi',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: const [
                              Expanded(
                                child: Text(
                                  'Hello Miimz Hello Miimz Hello Miimz',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                '2:12 pm',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(

                margin: const EdgeInsets.only(
                    left: 10,
                    right: 10
                ),
                alignment: AlignmentDirectional.center,
                child: Row(
                  children:  [
                    Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: const [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage('https://cdn.britannica.com/35/238335-050-2CB2EB8A/Lionel-Messi-Argentina-Netherlands-World-Cup-Qatar-2022.jpg'),
                          ),
                          CircleAvatar(
                            radius: 9.5,
                            backgroundColor: Colors.white,
                          ),
                          CircleAvatar(
                            radius: 8,
                            backgroundColor: Colors.green,
                          )
                        ]
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Messi Messi',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: const [
                              Expanded(
                                child: Text(
                                  'Hello Miimz Hello Miimz Hello Miimz',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                '2:12 pm',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }
  }

