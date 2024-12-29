import 'package:classwork5/bloc/simple_interest_bloc.dart';
import 'package:classwork5/bloc/simple_interest_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SiView extends StatelessWidget {
  SiView({super.key});

  final TextEditingController _principalController = TextEditingController();
  final TextEditingController _rateController = TextEditingController();
  final TextEditingController _timeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
                child: Text(
                  "Simple interest",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: _principalController,
                decoration: InputDecoration(
                  hintText: "Principal",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: _timeController,
                decoration: InputDecoration(
                  hintText: "Time",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: _rateController,
                decoration: InputDecoration(
                  hintText: "Rate",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 10),
              BlocBuilder<SimpleInterestBloc, double>(
                builder: (context, state) {
                  return SizedBox(
                    height: 30,
                    child: Text(
                      "Result: $state",
                      style: const TextStyle(fontSize: 20),
                    ),
                  );
                },
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    final principal =
                        double.tryParse(_principalController.text) ?? 0;
                    final time = double.tryParse(_timeController.text) ?? 0;
                    final rate = double.tryParse(_rateController.text) ?? 0;

                    context.read<SimpleInterestBloc>().add(
                        CalculateSimpleInterestEvent(
                            principal: principal, rate: rate, time: time));
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(),
                  ),
                  child: const Text("Calculate Simple Interest"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
