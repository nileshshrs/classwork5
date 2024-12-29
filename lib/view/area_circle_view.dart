import 'package:classwork5/bloc/area_of_circle_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AreaCircleView extends StatelessWidget {
  AreaCircleView({super.key});
  final TextEditingController _radiusController = TextEditingController();

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
                  "Area of circle",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: _radiusController,
                decoration: InputDecoration(
                  hintText: "radius",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 10),
              BlocBuilder<AreaOfCircleBloc, double>(
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
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    final radius = double.tryParse(_radiusController.text);
                    context
                        .read<AreaOfCircleBloc>()
                        .add(CalculateAreaEvent(radius!));
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(),
                  ),
                  child: const Text("Calculate Area"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
