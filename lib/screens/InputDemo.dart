import 'package:flutter/material.dart';

class InputDemo extends StatefulWidget {
  const InputDemo({Key? key}) : super(key: key);

  @override
  State<InputDemo> createState() => _InputDemoState();
}

class _InputDemoState extends State<InputDemo> {
  String result="";
  TextEditingController _input1= new TextEditingController();
  TextEditingController _input2= new TextEditingController(text: "1");

  final _formKey= GlobalKey<FormState>();
  showError(){
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Spmething went wrong"),
          backgroundColor: Colors.red,
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Text("output"),
              Text(result,style: TextStyle(fontSize: 30),),
              TextFormField(
                controller: _input1,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey.withOpacity(0.2),

                ),
                keyboardType: TextInputType.number,
                validator: (String? val){
                  if(val== null || val==""){
                    return "pleazse enter a num";
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _input2,
                decoration: InputDecoration(
                  filled: true,
                  label: Text("input 2"),
                  fillColor: Colors.green.withOpacity(0.2),
                ),
              ),
              Row(
                children: [
                  ElevatedButton(onPressed: (){
                    setState(() {
                      result= (num.parse(_input1.text) + num.parse(_input2.text)).toString();
                    });

                  }, child:Text("+")),
                  ElevatedButton(onPressed: (){
                    bool validated= _formKey.currentState!.validate();
                    if(validated){
                      //do some here

                    }
                  }, child:Text("-")),
                  ElevatedButton(onPressed: (){
                    try {
                      setState(() {
                        result =
                            (num.parse(_input1.text) + num.parse(_input2.text))
                                .toString();
                      });
                    }
                    catch(e){
                      showError();
                    }
                  }, child:Text("*")),
                  ElevatedButton(onPressed: (){}, child:Text("/")),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
