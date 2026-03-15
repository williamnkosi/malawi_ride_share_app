import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_places_autocomplete_text_field/google_places_autocomplete_text_field.dart';
import 'package:logging/logging.dart';
import 'package:malawi_ride_share_app/features/rider/presentation/bloc/rider_operations_bloc/rider_operations_bloc.dart';
import 'package:malawi_ride_share_app/features/rider/presentation/rider_home_page/rider_home_request_form.dart';
import 'package:malawi_ride_share_app/services/locator.dart';

class RiderHomePage extends StatefulWidget {
  const RiderHomePage({super.key, required this.title});

  final String title;

  @override
  State<RiderHomePage> createState() => _RiderHomePageState();
}

class _RiderHomePageState extends State<RiderHomePage> {
  @override
  Widget build(BuildContext _) {
    return BlocProvider(
      lazy: false,
      create: (context) =>
          getIt<RiderOperationsBloc>()
            ..add(const RiderOperationsEvent.initialize()),
      child: Scaffold(
        appBar: AppBar(title: Text(widget.title)),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: BlocBuilder<RiderOperationsBloc, RiderOperationsState>(
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () => RiderHomeRequestForm(),
                searching: () =>
                    const Center(child: CircularProgressIndicator()),
              );
            },
          ),
        ),
      ),
    );
  }
}
