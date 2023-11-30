import 'package:flutter/material.dart';
import 'package:multiprises_intelligentes/utils.dart';

class NewConfigurationScreen extends StatefulWidget {
  @override
  State<NewConfigurationScreen> createState() => _NewConfigurationScreenState();
}

class _NewConfigurationScreenState extends State<NewConfigurationScreen> {
  bool currentSelectedRadioButton = true;

  final settingsMinVoltageController = TextEditingController();
  final settingsMaxVoltageController = TextEditingController();
  final settingsMaxIntensityController = TextEditingController();
  final settingsMaxPowerController = TextEditingController();
  final settingsMaxEnergyController = TextEditingController();
  final settingsDateController = TextEditingController();

  final settingsFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text(
          'New Configuration',
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.maxFinite,
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: primaryColor,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Form(
                  key: settingsFormKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Voltage'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                'Min',
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Container(
                                height: 40,
                                width: 150,
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 10.0,
                                ),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: primaryColor,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: TextFormField(
                                  controller: settingsMinVoltageController,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(
                                      vertical: 10,
                                    ),
                                    hintText: '...',
                                    enabledBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                'Max',
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Container(
                                height: 40,
                                width: 150,
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 10.0,
                                ),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: primaryColor,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: TextFormField(
                                  controller: settingsMaxVoltageController,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(
                                      vertical: 10,
                                    ),
                                    hintText: '...',
                                    enabledBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text('Max Intensity'),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        height: 40,
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(
                          horizontal: 10.0,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: primaryColor,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: TextFormField(
                          controller: settingsMaxIntensityController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 10,
                            ),
                            hintText: '...',
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text('Max Power'),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        height: 40,
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(
                          horizontal: 10.0,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: primaryColor,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: TextFormField(
                          controller: settingsMaxPowerController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 10,
                            ),
                            hintText: '...',
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text('Max Energy'),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        height: 40,
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(
                          horizontal: 10.0,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: primaryColor,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: TextFormField(
                          controller: settingsMaxEnergyController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 10,
                            ),
                            hintText: '...',
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('Starting Date'),
                              SizedBox(
                                height: 10.0,
                              ),
                              Container(
                                height: 40,
                                width: 200,
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 10.0,
                                ),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: primaryColor,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: TextFormField(
                                  controller: settingsDateController,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(
                                      vertical: 10,
                                    ),
                                    hintText: '...',
                                    enabledBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    suffixIcon: IconButton(
                                      onPressed: () async {
                                        final pickedDate = await showDatePicker(
                                          context: context,
                                          initialDate: DateTime.now(),
                                          firstDate: DateTime.now(),
                                          lastDate: DateTime(2500),
                                        );
                                        setState(() {
                                          settingsDateController.text =
                                              pickedDate!.toIso8601String();
                                        });
                                      },
                                      icon: Icon(
                                        Icons.calendar_month,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('FCFA'),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Radio(
                                      value: true,
                                      groupValue: currentSelectedRadioButton,
                                      onChanged: (new_value) {
                                        setState(() {
                                          currentSelectedRadioButton =
                                              new_value!;
                                        });
                                      })
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('KWh'),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Radio(
                                      value: false,
                                      groupValue: currentSelectedRadioButton,
                                      onChanged: (value) {
                                        setState(() {
                                          currentSelectedRadioButton = value!;
                                        });
                                      })
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                height: 40,
                width: 150,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Text(
                  'Apply',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
