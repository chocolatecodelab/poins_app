import 'package:poins/barging_request/barging_request.dart';

import 'grid_model.dart';

List<GridModel> gridItems = [
  GridModel(
      imagePath: 'assets/icons/barging_request.png',
      title: 'Barging Request',
      destination: const BargingRequest()),
  GridModel(
      imagePath: 'assets/icons/barging_schedule.png',
      title: 'Barging Schedule',
      destination: const BargingRequest()),
  GridModel(
      imagePath: 'assets/icons/barging_recapitulation.png',
      title: 'Barging Recapitulation',
      destination: const BargingRequest()),
  GridModel(
      imagePath: 'assets/icons/delivery_cargo.png',
      title: 'Delivery Cargo',
      destination: const BargingRequest()),
  GridModel(
      imagePath: 'assets/icons/balance_cargo.png',
      title: 'Balance Cargo',
      destination: const BargingRequest()),
  GridModel(
      imagePath: 'assets/icons/alocation_cargo.png',
      title: 'Alocation Cargo',
      destination: const BargingRequest()),
  GridModel(
      imagePath: 'assets/icons/senslog_data.png',
      title: 'Senslog Data',
      destination: const BargingRequest()),
  GridModel(
      imagePath: 'assets/icons/weather_forecast.png',
      destination: const BargingRequest(),
      title: 'Weather Forecast'),
  GridModel(
      imagePath: 'assets/icons/realtime_cctv.png',
      title: 'Realtime CCTV',
      destination: const BargingRequest()),
  // Tambahkan item lain sesuai kebutuhan
];
