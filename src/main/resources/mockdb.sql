-- ========== mockdb.sql ==========

-- Enable UUID generation
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- Mock flights table
CREATE TABLE mock_flights (
  id                        UUID        PRIMARY KEY DEFAULT uuid_generate_v4(),
  flight_number             VARCHAR(50) NOT NULL UNIQUE,
  airline                   VARCHAR(100),
  departure_airport         VARCHAR(10),
  arrival_airport           VARCHAR(10),
  scheduled_departure_time  TIMESTAMP,
  scheduled_arrival_time    TIMESTAMP,
  real_time_status          VARCHAR(20),
  aircraft_type             VARCHAR(50)
);

INSERT INTO mock_flights
  (flight_number, airline, departure_airport, arrival_airport,
   scheduled_departure_time, scheduled_arrival_time,
   real_time_status, aircraft_type)
VALUES
  -- 5 flights departing next Monday (2025-05-05)
  ('AA101', 'American Airlines', 'ORD', 'MIA',
   '2025-05-05 06:00', '2025-05-05 10:00', 'On time', 'Boeing 737'),
  ('UA202', 'United Airlines', 'SFO', 'SEA',
   '2025-05-05 07:30', '2025-05-05 09:45', 'On time', 'Airbus A320'),
  ('LH303', 'Lufthansa', 'FRA', 'JFK',
   '2025-05-05 09:00', '2025-05-05 12:30', 'On time', 'Boeing 747'),
  ('AF404', 'Air France', 'CDG', 'LAX',
   '2025-05-05 11:15', '2025-05-05 14:45', 'On time', 'Airbus A380'),
  ('EK505', 'Emirates', 'DXB', 'SYD',
   '2025-05-05 22:00', '2025-05-06 10:00', 'On time', 'Boeing 777'),

  -- 15 flights later in June 2025
  ('QF606', 'Qantas', 'SYD', 'MEL',
   '2025-06-03 08:00', '2025-06-03 09:30', 'On time', 'Airbus A330'),
  ('SQ707', 'Singapore Airlines', 'SIN', 'NRT',
   '2025-06-05 07:00', '2025-06-05 15:00', 'On time', 'Boeing 787'),
  ('NH808', 'All Nippon Airways', 'NRT', 'HND',
   '2025-06-07 12:00', '2025-06-07 13:00', 'On time', 'Boeing 767'),
  ('CX909', 'Cathay Pacific', 'HKG', 'LHR',
   '2025-06-10 02:00', '2025-06-10 08:00', 'On time', 'Airbus A350'),
  ('JL010', 'Japan Airlines', 'HND', 'SFO',
   '2025-06-12 22:00', '2025-06-13 14:00', 'On time', 'Boeing 787'),
  ('AC111', 'Air Canada', 'YYZ', 'YVR',
   '2025-06-14 08:00', '2025-06-14 11:00', 'On time', 'Boeing 777'),
  ('AA212', 'American Airlines', 'MIA', 'LAX',
   '2025-06-16 07:00', '2025-06-16 10:30', 'On time', 'Airbus A321'),
  ('DL313', 'Delta Air Lines', 'DTW', 'ATL',
   '2025-06-18 09:00', '2025-06-18 11:30', 'On time', 'Boeing 717'),
  ('KL414', 'KLM', 'AMS', 'JNB',
   '2025-06-20 20:00', '2025-06-21 06:00', 'On time', 'Boeing 777'),
  ('AF515', 'Air France', 'CDG', 'NRT',
   '2025-06-22 13:00', '2025-06-23 08:00', 'On time', 'Boeing 787'),
  ('BA616', 'British Airways', 'LHR', 'DXB',
   '2025-06-24 21:00', '2025-06-25 07:00', 'On time', 'Airbus A380'),
  ('TK020', 'Turkish Airlines', 'IST', 'DXB',
   '2025-06-25 05:00', '2025-06-25 09:00', 'On time', 'Boeing 777'),
  ('EY717', 'Etihad', 'AUH', 'JFK',
   '2025-06-26 02:00', '2025-06-26 08:00', 'On time', 'Boeing 777'),
  ('VS818', 'Virgin Atlantic', 'LHR', 'ORD',
   '2025-06-28 15:00', '2025-06-28 18:30', 'On time', 'Airbus A330'),
  ('IB919', 'Iberia', 'MAD', 'BCN',
   '2025-06-30 08:00', '2025-06-30 09:20', 'On time', 'Airbus A320');