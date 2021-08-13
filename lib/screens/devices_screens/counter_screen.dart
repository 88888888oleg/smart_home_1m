import 'package:flutter/material.dart';
import 'package:m_home/models/mainDrawer.dart';
import 'package:m_home/providers/data.dart';
import 'package:m_home/widgets/bottom_devices.dart';
import 'package:provider/provider.dart';

class CounterScreen extends StatefulWidget {
   CounterScreen({Key? key}) : super(key: key);
  static const String routeName = '/CounterScreen';

  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(

        appBar: AppBar(title: Material(type: MaterialType.transparency,textStyle:TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            child: Text('Счетчик'))),
        drawer: MainDrawer(),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            // child: Card(
            //   elevation: 20,

              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Выход',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                shadows: [Shadow(color: Colors.blue.shade100,blurRadius: 5, offset: Offset(5, -5)),
                                  //Shadow(color: Colors.black, blurRadius: 38, offset: Offset(5, -10))
                                ],
                                //color: Theme.of(context).primaryColor,
                                fontSize: 25,
                                fontWeight: FontWeight.w400),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                //decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
                                width: 140,
                              height: 80,
                              child: InkWell(
                                  //radius: 500,
                                  onTap: () =>
                                      Provider.of<Data>(context, listen: false)
                                          .toggleColor(),
                                  // style: Provider.of<Data>(context, listen: true)
                                  //             .counterCheckValue ==
                                  //         1
                                  //     ? ButtonStyle(
                                  //         backgroundColor: MaterialStateProperty.all(
                                  //             Colors.deepPurpleAccent),
                                  //         //elevation: MaterialStateProperty.all(120),
                                  //   elevation: MaterialStateProperty.all(1000.0),
                                  //
                                  // )
                                  //     : ButtonStyle(
                                  //         backgroundColor:
                                  //             MaterialStateProperty.all(Colors.grey),
                                  //         elevation: MaterialStateProperty.all(500.0),
                                  //       ),
                                  child: Provider.of<Data>(context, listen: true)
                                              .counterCheckValue ==
                                          1
                                      ? Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(35.0),
                                    ),
                                    color: Colors.deepPurple,
                                    elevation: 10,
                                        child: Center(
                                          child: Text('Вкл',style: TextStyle(
                                          //color: Theme.of(context).primaryColor,
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),),
                                        ),
                                      )
                                      : Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    color: Colors.blueGrey,
                                    elevation: 100,
                                        child: Center(
                                          child: Text('Выкл',style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 25,
                                          fontWeight: FontWeight.normal),),
                                        ),
                                      ),),
                            ),
                          ),
                        ],
                      ),
                      Card(
                        elevation: 20,
                        child: Column(children: [
                          Column(
                            children: [
                              Card(
                                elevation: 20,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                  Container(
                                    child: Text('${(Provider.of<Data>(context, listen: false).getGenValue() /1 ).roundToDouble()} - В',style: TextStyle(
                                        //color: Colors.black,
                                        fontSize: 25,
                                        fontWeight: FontWeight.w400),),
                                  ),
                                  Container(
                                    child: Text('${(Provider.of<Data>(context, listen: false).getGenValue() / 20).roundToDouble()} - A',style: TextStyle(
                                        //color: Colors.black,
                                        fontSize: 25,
                                        fontWeight: FontWeight.w400),),
                                  )

                                ],),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 40),
                                child: Container(
                                  width: 250,
                                  child: Card(elevation: 20,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(28.0),
                                      child: Center(
                                        child: Text('${(Provider.of<Data>(context, listen: false).getGenValue()  )*(Provider.of<Data>(context, listen: false).getGenValue() /20 ).roundToDouble()} Вт',style: TextStyle(
                                            //color: Colors.black,
                                            fontSize: 30,
                                            fontWeight: FontWeight.w400),),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: CircleAvatar(child: Icon(
                                      Icons.query_stats,),),
                                ),
                                Text('136.52 кВт',style: TextStyle(
                                    //color: Colors.black,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w400),)
                              ],
                              ),
                            ],
                          )

                        ],),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 40),
                        child: Container(
                          width: 300,
                          child: Card(elevation: 20,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(28.0),
                              child: Center(
                                child: Text('12.3 кВт*час',style: TextStyle(
                                    //color: Colors.black,
                                    fontSize: 30,
                                    fontWeight: FontWeight.w400),),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  BottomDevices(),

                ],
              ),

            //),
          ),
        ),
      ),
    );
  }
}

//
// class AddTaskScreen extends StatefulWidget {
//   static const String routeName = '/AddTaskScreen';
//
//   @override
//   _AddTaskScreenState createState() => _AddTaskScreenState();
// }
//
// class _AddTaskScreenState extends State<AddTaskScreen> {
//   final nameTextController = TextEditingController();
//   final amountController = TextEditingController();
//   String dropdownValue = Resources.drugsTypesList[0];
//   double amount = 0;
//
//   @override
//   Widget build(BuildContext context) {
//
//     return GestureDetector(
//       onTap: () => FocusScope.of(context).unfocus(),
//       child: Scaffold(
//         appBar: AppBar(title: Text(addTaskScreenTitle)),
//         drawer: MainDrawer(),
//         body: SafeArea(
//           child: Padding(
//             padding: EdgeInsets.symmetric(horizontal: 50),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.stretch,
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(top: 30),
//                       child: Text(
//                         addTaskScreenNewText,
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                             color: Colors.lightBlue,
//                             fontSize: 25,
//                             fontWeight: FontWeight.w400),
//                       ),
//                     ),
//                     TextField(
//                       autofocus: true,
//                       textAlign: TextAlign.center,
//                       controller: nameTextController,
//                     ),
//                     DropdownButton<String>(
//                       value: dropdownValue,
//                       icon: const Icon(Icons.arrow_downward),
//                       iconSize: 24,
//                       elevation: 16,
//                       style: const TextStyle(color: Colors.deepPurple),
//                       underline: Container(
//                         height: 2,
//                         color: Colors.grey,
//                       ),
//                       onChanged: (String? newValue) {
//                         setState(() {
//                           dropdownValue = newValue!;
//                         });
//                       },
//                       items: Resources.drugsTypesList
//                           .map<DropdownMenuItem<String>>((String value) {
//                         return DropdownMenuItem<String>(
//                           value: value,
//                           child: Text(value),
//                         );
//                       }).toList(),
//                     ),
//                     TextField(
//                       keyboardType: TextInputType.number,
//                       controller: amountController,
//                       decoration: InputDecoration(
//                         labelText: addTaskScreenTextFieldLabel,
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(top: 30),
//                       child: MaterialButton(
//                         child: Text(
//                           addTaskScreenAdd,
//                           style: TextStyle(color: Colors.white, fontSize: 20),
//                         ),
//                         onPressed: () {
//                           if (nameTextController.text.isEmpty) {
//                             return;
//                           }
//                           if (amountController.text.isEmpty) {
//                             amount = 0;
//                           } else {
//                             amount = double.tryParse(amountController.text)!;
//                             if (amount > 9999999) {
//                               amount = 9999999;
//                             } else if
//                             (amount < 0) {
//                               amount = 0;
//                             }
//                           }
//                           Provider.of<Data>(context, listen: false).addDrugsP(
//                               nameTextController.text, dropdownValue, amount);
//                           nameTextController.clear();
//                           amountController.clear();
//                           Navigator.pop(context);
//                         },
//                         minWidth: 200,
//                         height: 50,
//                         color: Theme.of(context).primaryColor,
//                       ),
//                     ),
//                   ],
//                 ),
//                 Container(
//                   width: double.infinity,
//                   child: Card(
//                     color: Colors.grey,
//                     margin: EdgeInsets.all(10),
//                     child: TextButton(
//                       onPressed: () {
//                         Navigator.of(context).pushReplacementNamed('/');
//                       },
//                       child: Text(addTaskScreenDis, style: TextStyle(color: Colors.white)),
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//}
