-- ================================================================
--               SMART EVENT MANAGEMENT SYSTEM                      
-- ================================================================

create database smart_eventDB;
use smart_eventDB;


-- ================================================================ 
--                       Create Table                                            
-- ================================================================ 
-- venues
create table venues (
    venue_id int auto_increment primary key,
    venue_name varchar(50) not null,
    location varchar(100),
    capacity int
);


-- organizers
create table organizers (
    organizer_id int auto_increment primary key,
    organizer_name varchar(50) not null,
    contact_email varchar(100),
    phone_number varchar(12)
);


-- attendees
create table attendees (
    attendees_id int auto_increment primary key,
    name varchar(50) not null,
    email varchar(100),
    phone_number varchar(12)
);


-- events
create table events (
    event_id int auto_increment primary key,
    event_name varchar(50) not null,
    event_date datetime,
    venue_id int,
    organizer_id int,
    ticket_price int,
    total_seats int,
    available_seats int,

    foreign key (venue_id) references  venues(venue_id),
    foreign key (organizer_id) references organizers(organizer_id)
);


-- tickets
create table tickets (
    ticket_id int auto_increment primary key,
    event_id int,
    attendees_id int,
    booking_date datetime,
    status enum("Confirmed", "Cancelled", "Pending") default "Pending",

    foreign key (event_id) references events(event_id),
    foreign key (attendees_id) references attendees(attendees_id)
);


-- payments
create table payments (
    payment_id int auto_increment primary key,
    ticket_id int,
    amount_paid int,
    payment_status enum("Success", "Failed", "Pending") default "Pending",
    payment_date datetime,

    foreign key (ticket_id) references tickets(ticket_id)
);



-- ================================================================ 
--                   insert sample data                                          
-- ================================================================ 
-- insert venues
insert into venues (venue_name, location, capacity)
values('Sardar Patel Hall', 'Ahmedabad', 500),
('Convention Centre', 'Surat', 800),
('City Auditorium', 'Vadodara', 600),
('Riverfront Ground', 'Ahmedabad', 1000),
('Expo Centre', 'Rajkot', 700),
('University Hall', 'Surat', 400);

select * from venues;
-- +----------+-------------------+-----------+----------+
-- | venue_id | venue_name        | location  | capacity |
-- +----------+-------------------+-----------+----------+
-- |        1 | Sardar Patel Hall | Ahmedabad |      500 |
-- |        2 | Convention Centre | Surat     |      800 |
-- |        3 | City Auditorium   | Vadodara  |      600 |
-- |        4 | Riverfront Ground | Ahmedabad |     1000 |
-- |        5 | Expo Centre       | Rajkot    |      700 |
-- |        6 | University Hall   | Surat     |      400 |
-- +----------+-------------------+-----------+----------+



-- insert organizers
insert into organizers (organizer_name, contact_email, phone_number)
values('Tech Events India', 'tech@gmail.com', '9876543210'),
('Future Minds', 'future@gmail.com', '9876543211'),
('Business Connect', 'business@gmail.com', '9876543212'),
('Creative Gujarat', 'creative@gmail.com', '9876543213'),
('Youth Festival', 'youth@gmail.com', '9876543214'),
('AI Innovators', NULL, '9876543215');

select * from organizers;
-- +--------------+-------------------+--------------------+--------------+
-- | organizer_id | organizer_name    | contact_email      | phone_number |
-- +--------------+-------------------+--------------------+--------------+
-- |            1 | Tech Events India | tech@gmail.com     | 9876543210   |
-- |            2 | Future Minds      | future@gmail.com   | 9876543211   |
-- |            3 | Business Connect  | business@gmail.com | 9876543212   |
-- |            4 | Creative Gujarat  | creative@gmail.com | 9876543213   |
-- |            5 | Youth Festival    | youth@gmail.com    | 9876543214   |
-- |            6 | AI Innovators     | NULL               | 9876543215   |
-- +--------------+-------------------+--------------------+--------------+



-- insert attendees
insert into attendees (name, email, phone_number)
values('Rahul Sharma', 'rahul@gmail.com', '9000000001'),
('Priya Patel', 'priya@gmail.com', '9000000002'),
('Amit Shah', 'amit@gmail.com', '9000000003'),
('Neha Desai', 'neha@gmail.com', '9000000004'),
('Rohan Mehta', 'rohan@gmail.com', '9000000005'),
('Karan Joshi', 'karan@gmail.com', '9000000006'),
('Sneha Shah', 'sneha@gmail.com', '9000000007'),
('Vivek Patel', 'vivek@gmail.com', '9000000008'),
('Anjali Mehta', 'anjali@gmail.com', '9000000009'),
('Jay Shah', 'jay@gmail.com', '9000000010'),
('Meera Joshi', 'meera@gmail.com', '9000000011'),
('Dev Patel', 'dev@gmail.com', '9000000012');

select * from attendees;
-- +--------------+--------------+------------------+--------------+
-- | attendees_id | name         | email            | phone_number |
-- +--------------+--------------+------------------+--------------+
-- |            1 | Rahul Sharma | rahul@gmail.com  | 9000000001   |
-- |            2 | Priya Patel  | priya@gmail.com  | 9000000002   |
-- |            3 | Amit Shah    | amit@gmail.com   | 9000000003   |
-- |            4 | Neha Desai   | neha@gmail.com   | 9000000004   |
-- |            5 | Rohan Mehta  | rohan@gmail.com  | 9000000005   |
-- |            6 | Karan Joshi  | karan@gmail.com  | 9000000006   |
-- |            7 | Sneha Shah   | sneha@gmail.com  | 9000000007   |
-- |            8 | Vivek Patel  | vivek@gmail.com  | 9000000008   |
-- |            9 | Anjali Mehta | anjali@gmail.com | 9000000009   |
-- |           10 | Jay Shah     | jay@gmail.com    | 9000000010   |
-- |           11 | Meera Joshi  | meera@gmail.com  | 9000000011   |
-- |           12 | Dev Patel    | dev@gmail.com    | 9000000012   |
-- +--------------+--------------+------------------+--------------+



-- insert events
insert into events (event_name, event_date, venue_id, organizer_id,ticket_price, total_seats, available_seats)
values('AI Summit 2026', '2026-12-05 10:00:00', 1, 1, 1500, 500, 80),
('Business Expo 2026', '2026-11-20 11:00:00', 2, 3, 2000, 800, 300),
('Music Festival', '2026-12-15 18:00:00', 4, 5, 1200, 1000, 150),
('Startup Meetup', '2026-10-25 14:00:00', 3, 2, 800, 600, 350),
('Tech Conference', '2026-09-30 09:00:00', 5, 1, 2500, 700, 100),
('Cultural Night', '2026-12-22 19:00:00', 6, 4, 700, 400, 250),
('Data Science Workshop', '2026-11-10 10:00:00', 1, 6, 1800, 500, 90),
('Youth Festival', '2026-10-15 16:00:00', 4, 5, 500, 1000, 600);

select * from events;
-- +----------+-----------------------+---------------------+----------+--------------+--------------+-------------+-----------------+
-- | event_id | event_name            | event_date          | venue_id | organizer_id | ticket_price | total_seats | available_seats |
-- +----------+-----------------------+---------------------+----------+--------------+--------------+-------------+-----------------+
-- |        1 | AI Summit 2026        | 2026-12-05 10:00:00 |        1 |            1 |         1500 |         500 |              80 |
-- |        2 | Business Expo 2026    | 2026-11-20 11:00:00 |        2 |            3 |         2000 |         800 |             300 |
-- |        3 | Music Festival        | 2026-12-15 18:00:00 |        4 |            5 |         1200 |        1000 |             150 |
-- |        4 | Startup Meetup        | 2026-10-25 14:00:00 |        3 |            2 |          800 |         600 |             350 |
-- |        5 | Tech Conference       | 2026-09-30 09:00:00 |        5 |            1 |         2500 |         700 |             100 |
-- |        6 | Cultural Night        | 2026-12-22 19:00:00 |        6 |            4 |          700 |         400 |             250 |
-- |        7 | Data Science Workshop | 2026-11-10 10:00:00 |        1 |            6 |         1800 |         500 |              90 |
-- |        8 | Youth Festival        | 2026-10-15 16:00:00 |        4 |            5 |          500 |        1000 |             600 |
-- +----------+-----------------------+---------------------+----------+--------------+--------------+-------------+-----------------+



-- insert tickets
insert into tickets (event_id, attendees_id, booking_date, status)
values(1, 1, '2026-09-01 10:30:00', 'Confirmed'),
(1, 2, '2026-09-02 11:00:00', 'Confirmed'),
(1, 3, '2026-09-03 12:00:00', 'Confirmed'),
(2, 4, '2026-09-04 13:00:00', 'Confirmed'),
(2, 5, '2026-09-05 14:00:00', 'Confirmed'),
(3, 1, '2026-09-06 15:00:00', 'Confirmed'),
(3, 6, '2026-09-07 16:00:00', 'Pending'),
(3, 7, '2026-09-08 17:00:00', 'Confirmed'),
(4, 8, '2026-09-09 10:00:00', 'Confirmed'),
(4, 9, '2026-09-10 11:00:00', 'Pending'),
(5, 10, '2026-09-01 09:00:00', 'Confirmed'),
(5, 11, '2026-09-02 10:00:00', 'Confirmed'),
(6, 12, '2026-09-03 12:00:00', 'Confirmed'),
(7, 2, '2026-09-04 13:00:00', 'Confirmed'),
(7, 3, '2026-09-05 14:00:00', 'Confirmed'),
(8, 4, '2026-09-06 15:00:00', 'Confirmed');

select * from tickets;
-- +-----------+----------+--------------+---------------------+-----------+
-- | ticket_id | event_id | attendees_id | booking_date        | status    |
-- +-----------+----------+--------------+---------------------+-----------+
-- |         1 |        1 |            1 | 2026-09-01 10:30:00 | Confirmed |
-- |         2 |        1 |            2 | 2026-09-02 11:00:00 | Confirmed |
-- |         3 |        1 |            3 | 2026-09-03 12:00:00 | Confirmed |
-- |         4 |        2 |            4 | 2026-09-04 13:00:00 | Confirmed |
-- |         5 |        2 |            5 | 2026-09-05 14:00:00 | Confirmed |
-- |         6 |        3 |            1 | 2026-09-06 15:00:00 | Confirmed |
-- |         7 |        3 |            6 | 2026-09-07 16:00:00 | Pending   |
-- |         8 |        3 |            7 | 2026-09-08 17:00:00 | Confirmed |
-- |         9 |        4 |            8 | 2026-09-09 10:00:00 | Confirmed |
-- |        10 |        4 |            9 | 2026-09-10 11:00:00 | Pending   |
-- |        11 |        5 |           10 | 2026-09-01 09:00:00 | Confirmed |
-- |        12 |        5 |           11 | 2026-09-02 10:00:00 | Confirmed |
-- |        13 |        6 |           12 | 2026-09-03 12:00:00 | Confirmed |
-- |        14 |        7 |            2 | 2026-09-04 13:00:00 | Confirmed |
-- |        15 |        7 |            3 | 2026-09-05 14:00:00 | Confirmed |
-- |        16 |        8 |            4 | 2026-09-06 15:00:00 | Confirmed |
-- +-----------+----------+--------------+---------------------+-----------+



-- insert payments
insert into payments (ticket_id, amount_paid, payment_status, payment_date)
values(1, 1500, 'Success', '2026-09-01 10:35:00'),
(2, 1500, 'Success', '2026-09-02 11:05:00'),
(3, 1500, 'Success', '2026-09-03 12:05:00'),
(4, 2000, 'Success', '2026-09-04 13:05:00'),
(5, 2000, 'Pending', '2026-09-05 14:05:00'),
(6, 1200, 'Success', '2026-09-06 15:05:00'),
(7, 1200, 'Pending', '2026-09-07 16:05:00'),
(8, 1200, 'Success', '2026-09-08 17:05:00'),
(9, 800, 'Success', '2026-09-09 10:05:00'),
(10, 800, 'Failed', '2026-09-10 11:05:00'),
(11, 2500, 'Success', '2026-09-01 09:05:00'),
(12, 2500, 'Success', '2026-09-02 10:05:00'),
(13, 700, 'Success', '2026-09-03 12:05:00'),
(14, 1800, 'Success', '2026-09-04 13:05:00'),
(15, 1800, 'Success', '2026-09-05 14:05:00'),
(16, 500, 'Pending', '2026-09-06 15:05:00');

select * from payments;
-- +------------+-----------+-------------+----------------+---------------------+
-- | payment_id | ticket_id | amount_paid | payment_status | payment_date        |
-- +------------+-----------+-------------+----------------+---------------------+
-- |          1 |         1 |        1500 | Success        | 2026-09-01 10:35:00 |
-- |          2 |         2 |        1500 | Success        | 2026-09-02 11:05:00 |
-- |          3 |         3 |        1500 | Success        | 2026-09-03 12:05:00 |
-- |          4 |         4 |        2000 | Success        | 2026-09-04 13:05:00 |
-- |          5 |         5 |        2000 | Pending        | 2026-09-05 14:05:00 |
-- |          6 |         6 |        1200 | Success        | 2026-09-06 15:05:00 |
-- |          7 |         7 |        1200 | Pending        | 2026-09-07 16:05:00 |
-- |          8 |         8 |        1200 | Success        | 2026-09-08 17:05:00 |
-- |          9 |         9 |         800 | Success        | 2026-09-09 10:05:00 |
-- |         10 |        10 |         800 | Failed         | 2026-09-10 11:05:00 |
-- |         11 |        11 |        2500 | Success        | 2026-09-01 09:05:00 |
-- |         12 |        12 |        2500 | Success        | 2026-09-02 10:05:00 |
-- |         13 |        13 |         700 | Success        | 2026-09-03 12:05:00 |
-- |         14 |        14 |        1800 | Success        | 2026-09-04 13:05:00 |
-- |         15 |        15 |        1800 | Success        | 2026-09-05 14:05:00 |
-- |         16 |        16 |         500 | Pending        | 2026-09-06 15:05:00 |
-- +------------+-----------+-------------+----------------+---------------------+







-- ================================================================
--                  01. crud operations                                             
-- ================================================================

-- q1.1 add, update and delete venue
insert into venues (venue_name, location, capacity)
values('New Auditorium', 'Surat', 900);
-- Query OK, 1 row affected (0.330 sec)

select * from venues where venue_id = 7;
-- +----------+-------------------+-----------+----------+
-- | venue_id | venue_name        | location  | capacity |
-- +----------+-------------------+-----------+----------+
-- |        7 | New Auditorium    | Surat     |      900 |
-- +----------+-------------------+-----------+----------+

update venues set capacity = 1000 where venue_id = 7;
-- Query OK, 1 row affected (0.054 sec)
-- Rows matched: 1  Changed: 1  Warnings: 0

delete from venues where venue_id = 7;
-- Query OK, 1 row affected (0.325 sec)


--------------------------------------------------------------------------------------------------------
insert into events (event_name, event_date, venue_id, organizer_id, ticket_price, total_seats, available_seats)
values ('AI Career Workshop', '2026-12-28 10:00:00', 2, 1, 1000, 500, 500);
-- Query OK, 1 row affected (0.340 sec)

select * from events where event_name = 'AI Career Workshop';
-- +----------+--------------------+---------------------+----------+--------------+--------------+-------------+-----------------+
-- | event_id | event_name         | event_date          | venue_id | organizer_id | ticket_price | total_seats | available_seats |
-- +----------+--------------------+---------------------+----------+--------------+--------------+-------------+-----------------+
-- |        9 | AI Career Workshop | 2026-12-28 10:00:00 |        2 |            1 |         1000 |         500 |             500 |
-- +----------+--------------------+---------------------+----------+--------------+--------------+-------------+-----------------+

update events set ticket_price = 1200 where event_id = 9;
-- Query OK, 1 row affected (0.041 sec)
-- Rows matched: 1  Changed: 1  Warnings: 0

delete from events where event_id = 9;
-- Query OK, 1 row affected (0.311 sec)



--------------------------------------------------------------------------------------------------------
insert into organizers (organizer_name, contact_email, phone_number)
values ('new organizer', 'new@gmail.com', '9876543219');
-- Query OK, 1 row affected (0.178 sec)

select * from organizers where organizer_id = 7;
-- +--------------+-------------------+--------------------+--------------+
-- | organizer_id | organizer_name    | contact_email      | phone_number |
-- +--------------+-------------------+--------------------+--------------+
-- |            7 | new organizer     | new@gmail.com      | 9876543219   |
-- +--------------+-------------------+--------------------+--------------+

update organizers set phone_number = '9999999999' where organizer_id = 7;
-- Query OK, 1 row affected (0.036 sec)
-- Rows matched: 1  Changed: 1  Warnings: 0

delete from organizers where organizer_id = 7;
-- Query OK, 1 row affected (0.316 sec)



--------------------------------------------------------------------------------------------------------
insert into attendees (name, email, phone_number)
values ('new attendee', 'newattendee@gmail.com', '9876543220');
-- Query OK, 1 row affected (0.333 sec)

select * from attendees where attendees_id = 13;
-- +--------------+--------------+-----------------------+--------------+
-- | attendees_id | name         | email                 | phone_number |
-- +--------------+--------------+-----------------------+--------------+
-- |           13 | new attendee | newattendee@gmail.com | 9876543220   |
-- +--------------+--------------+-----------------------+--------------+

update attendees set phone_number = '9999999998' where attendees_id = 13;
-- Query OK, 1 row affected (0.055 sec)
-- Rows matched: 1  Changed: 1  Warnings: 0

delete from attendees where attendees_id = 13;
-- Query OK, 1 row affected (0.328 sec)



--------------------------------------------------------------------------------------------------------
insert into tickets (event_id, attendees_id, booking_date, status)
values (1, 4, '2026-09-11 10:00:00', 'confirmed');
-- Query OK, 1 row affected (0.099 sec)

select * from tickets where ticket_id = 17;
-- +-----------+----------+--------------+---------------------+-----------+
-- | ticket_id | event_id | attendees_id | booking_date        | status    |
-- +-----------+----------+--------------+---------------------+-----------+
-- |        17 |        1 |            4 | 2026-09-11 10:00:00 | Confirmed |
-- +-----------+----------+--------------+---------------------+-----------+

update tickets set status = 'cancelled' where ticket_id = 17;
-- Query OK, 1 row affected (0.036 sec)
-- Rows matched: 1  Changed: 1  Warnings: 0

delete from tickets where ticket_id = 17;
-- Query OK, 1 row affected (0.323 sec)





-- ================================================================
--              02. sql clauses: where, having, limit                          
-- ================================================================

-- q2.1 get upcoming event in a specific city
select e.event_id, e.event_name, e.event_date, v.location from events e
join venues v on e.venue_id = v.venue_id
where v.location = 'ahmedabad';
-- +----------+-----------------------+---------------------+-----------+
-- | event_id | event_name            | event_date          | location  |
-- +----------+-----------------------+---------------------+-----------+
-- |        1 | AI Summit 2026        | 2026-12-05 10:00:00 | Ahmedabad |
-- |        7 | Data Science Workshop | 2026-11-10 10:00:00 | Ahmedabad |
-- |        3 | Music Festival        | 2026-12-15 18:00:00 | Ahmedabad |
-- |        8 | Youth Festival        | 2026-10-15 16:00:00 | Ahmedabad |
-- +----------+-----------------------+---------------------+-----------+



-- q2.2 top 5 highest revenue-generating events
select e.event_id, e.event_name, sum(p.amount_paid) as total_revenue from events e
join tickets t on e.event_id = t.event_id
join payments p on t.ticket_id = p.ticket_id where p.payment_status = 'success'
group by e.event_id
order by total_revenue desc limit 5;
-- +----------+-----------------------+---------------+
-- | event_id | event_name            | total_revenue |
-- +----------+-----------------------+---------------+
-- |        5 | Tech Conference       |          5000 |
-- |        1 | AI Summit 2026        |          4500 |
-- |        7 | Data Science Workshop |          3600 |
-- |        3 | Music Festival        |          2400 |
-- |        2 | Business Expo 2026    |          2000 |
-- +----------+-----------------------+---------------+



-- q2.3 attendees who booked tickets in the last 7 days
select a.name, t.booking_date from attendees a
join tickets t on a.attendees_id = t.attendees_id
where t.booking_date >= now() - interval 7 day;
-- +--------------+---------------------+
-- | name         | booking_date        |
-- +--------------+---------------------+
-- | Rohan Mehta  | 2026-09-05 14:00:00 |
-- | Rahul Sharma | 2026-09-06 15:00:00 |
-- | Karan Joshi  | 2026-09-07 16:00:00 |
-- | Sneha Shah   | 2026-09-08 17:00:00 |
-- | Vivek Patel  | 2026-09-09 10:00:00 |
-- | Anjali Mehta | 2026-09-10 11:00:00 |
-- | Amit Shah    | 2026-09-05 14:00:00 |
-- | Neha Desai   | 2026-09-06 15:00:00 |
-- +--------------+---------------------+





-- ================================================================
--              03. sql operators: and, or, not                               
-- ================================================================

-- q3.1 events scheduled in december and having more than 50% available seats
select * from events where month(event_date) = 12 and available_seats > total_seats * 0.50;
-- +----------+----------------+---------------------+----------+--------------+--------------+-------------+-----------------+
-- | event_id | event_name     | event_date          | venue_id | organizer_id | ticket_price | total_seats | available_seats |
-- +----------+----------------+---------------------+----------+--------------+--------------+-------------+-----------------+
-- |        6 | Cultural Night | 2026-12-22 19:00:00 |        6 |            4 |          700 |         400 |             250 |
-- +----------+----------------+---------------------+----------+--------------+--------------+-------------+-----------------+



-- q3.2 attendees who booked a ticket or have a pending payment
select distinct a.* from attendees a
left join tickets t on a.attendees_id = t.attendees_id
left join payments p on t.ticket_id = p.ticket_id
where p.payment_status = 'pending';
-- +--------------+-------------+-----------------+--------------+
-- | attendees_id | name        | email           | phone_number |
-- +--------------+-------------+-----------------+--------------+
-- |            5 | Rohan Mehta | rohan@gmail.com | 9000000005   |
-- |            6 | Karan Joshi | karan@gmail.com | 9000000006   |
-- |            4 | Neha Desai  | neha@gmail.com  | 9000000004   |
-- +--------------+-------------+-----------------+--------------+



-- q3.3 identify events that are not fully booked
select * from events where available_seats > 0;
-- +----------+-----------------------+---------------------+----------+--------------+--------------+-------------+-----------------+
-- | event_id | event_name            | event_date          | venue_id | organizer_id | ticket_price | total_seats | available_seats |
-- +----------+-----------------------+---------------------+----------+--------------+--------------+-------------+-----------------+
-- |        1 | AI Summit 2026        | 2026-12-05 10:00:00 |        1 |            1 |         1500 |         500 |              80 |
-- |        2 | Business Expo 2026    | 2026-11-20 11:00:00 |        2 |            3 |         2000 |         800 |             300 |
-- |        3 | Music Festival        | 2026-12-15 18:00:00 |        4 |            5 |         1200 |        1000 |             150 |
-- |        4 | Startup Meetup        | 2026-10-25 14:00:00 |        3 |            2 |          800 |         600 |             350 |
-- |        5 | Tech Conference       | 2026-09-30 09:00:00 |        5 |            1 |         2500 |         700 |             100 |
-- |        6 | Cultural Night        | 2026-12-22 19:00:00 |        6 |            4 |          700 |         400 |             250 |
-- |        7 | Data Science Workshop | 2026-11-10 10:00:00 |        1 |            6 |         1800 |         500 |              90 |
-- |        8 | Youth Festival        | 2026-10-15 16:00:00 |        4 |            5 |          500 |        1000 |             600 |
-- +----------+-----------------------+---------------------+----------+--------------+--------------+-------------+-----------------+



-- ================================================================
--          04. sorting and grouping: order by, group by                  
-- ================================================================

-- q4.1 sort events by date in ascending order
select * from events order by event_date;
-- +----------+-----------------------+---------------------+----------+--------------+--------------+-------------+-----------------+
-- | event_id | event_name            | event_date          | venue_id | organizer_id | ticket_price | total_seats | available_seats |
-- +----------+-----------------------+---------------------+----------+--------------+--------------+-------------+-----------------+
-- |        5 | Tech Conference       | 2026-09-30 09:00:00 |        5 |            1 |         2500 |         700 |             100 |
-- |        8 | Youth Festival        | 2026-10-15 16:00:00 |        4 |            5 |          500 |        1000 |             600 |
-- |        4 | Startup Meetup        | 2026-10-25 14:00:00 |        3 |            2 |          800 |         600 |             350 |
-- |        7 | Data Science Workshop | 2026-11-10 10:00:00 |        1 |            6 |         1800 |         500 |              90 |
-- |        2 | Business Expo 2026    | 2026-11-20 11:00:00 |        2 |            3 |         2000 |         800 |             300 |
-- |        1 | AI Summit 2026        | 2026-12-05 10:00:00 |        1 |            1 |         1500 |         500 |              80 |
-- |        3 | Music Festival        | 2026-12-15 18:00:00 |        4 |            5 |         1200 |        1000 |             150 |
-- |        6 | Cultural Night        | 2026-12-22 19:00:00 |        6 |            4 |          700 |         400 |             250 |
-- +----------+-----------------------+---------------------+----------+--------------+--------------+-------------+-----------------+



-- q4.2 count attendees per event
select event_id, count(attendees_id) as total_attendees from tickets group by event_id;
-- +----------+-----------------+
-- | event_id | total_attendees |
-- +----------+-----------------+
-- |        1 |               3 |
-- |        2 |               2 |
-- |        3 |               3 |
-- |        4 |               2 |
-- |        5 |               2 |
-- |        6 |               1 |
-- |        7 |               2 |
-- |        8 |               1 |
-- +----------+-----------------+



-- q4.3 show total revenue generated per event
select t.event_id, sum(p.amount_paid) as total_revenue from tickets t
join payments p on t.ticket_id = p.ticket_id
where p.payment_status = 'success' group by t.event_id;
-- +----------+---------------+
-- | event_id | total_revenue |
-- +----------+---------------+
-- |        1 |          4500 |
-- |        2 |          2000 |
-- |        3 |          2400 |
-- |        4 |           800 |
-- |        5 |          5000 |
-- |        6 |           700 |
-- |        7 |          3600 |
-- +----------+---------------+





-- ================================================================
--      05. aggregate functions: sum, avg, max, min, count           
-- ================================================================

-- q5.1 calculate total revenue from all events
select sum(amount_paid) as total_revenue from payments where payment_status = 'success';
-- +---------------+
-- | total_revenue |
-- +---------------+
-- |         19000 |
-- +---------------+



-- q5.2 find event with highest number of attendees
select e.event_id, e.event_name, count(t.attendees_id) as total_attendees from events e
join tickets t on e.event_id = t.event_id
group by e.event_id order by total_attendees desc limit 1;
-- +----------+----------------+-----------------+
-- | event_id | event_name     | total_attendees |
-- +----------+----------------+-----------------+
-- |        1 | AI Summit 2026 |               3 |
-- +----------+----------------+-----------------+



-- q5.3 calculate average ticket price
select avg(ticket_price) as average_ticket_price from events;
-- +----------------------+
-- | average_ticket_price |
-- +----------------------+
-- |            1375.0000 |
-- +----------------------+





-- ================================================================
--          06. primary key and foreign key relationships           
-- ================================================================

-- q6.1 prevent attendee from booking same event multiple times
select attendees_id, event_id, count(*) as total_bookings from tickets group by attendees_id, event_id having count(*) > 1;
-- Empty set (0.289 sec)



-- q6.2 link payments with tickets
select p.payment_id, p.ticket_id, p.amount_paid, p.payment_status from payments p
join tickets t on p.ticket_id = t.ticket_id;
-- +------------+-----------+-------------+----------------+
-- | payment_id | ticket_id | amount_paid | payment_status |
-- +------------+-----------+-------------+----------------+
-- |          1 |         1 |        1500 | Success        |
-- |          2 |         2 |        1500 | Success        |
-- |          3 |         3 |        1500 | Success        |
-- |          4 |         4 |        2000 | Success        |
-- |          5 |         5 |        2000 | Pending        |
-- |          6 |         6 |        1200 | Success        |
-- |          7 |         7 |        1200 | Pending        |
-- |          8 |         8 |        1200 | Success        |
-- |          9 |         9 |         800 | Success        |
-- |         10 |        10 |         800 | Failed         |
-- |         11 |        11 |        2500 | Success        |
-- |         12 |        12 |        2500 | Success        |
-- |         13 |        13 |         700 | Success        |
-- |         14 |        14 |        1800 | Success        |
-- |         15 |        15 |        1800 | Success        |
-- |         16 |        16 |         500 | Pending        |
-- +------------+-----------+-------------+----------------+





-- ================================================================
--                              07. joins                                                       
-- ================================================================

-- q7.1 event details with venue information using inner join
select e.event_id, e.event_name, e.event_date, v.venue_name, v.location, v.capacity from events e
inner join venues v on e.venue_id = v.venue_id;
-- +----------+-----------------------+---------------------+-------------------+-----------+----------+
-- | event_id | event_name            | event_date          | venue_name        | location  | capacity |
-- +----------+-----------------------+---------------------+-------------------+-----------+----------+
-- |        1 | AI Summit 2026        | 2026-12-05 10:00:00 | Sardar Patel Hall | Ahmedabad |      500 |
-- |        7 | Data Science Workshop | 2026-11-10 10:00:00 | Sardar Patel Hall | Ahmedabad |      500 |
-- |        2 | Business Expo 2026    | 2026-11-20 11:00:00 | Convention Centre | Surat     |      800 |
-- |        4 | Startup Meetup        | 2026-10-25 14:00:00 | City Auditorium   | Vadodara  |      600 |
-- |        3 | Music Festival        | 2026-12-15 18:00:00 | Riverfront Ground | Ahmedabad |     1000 |
-- |        8 | Youth Festival        | 2026-10-15 16:00:00 | Riverfront Ground | Ahmedabad |     1000 |
-- |        5 | Tech Conference       | 2026-09-30 09:00:00 | Expo Centre       | Rajkot    |      700 |
-- |        6 | Cultural Night        | 2026-12-22 19:00:00 | University Hall   | Surat     |      400 |
-- +----------+-----------------------+---------------------+-------------------+-----------+----------+



-- q7.2 attendees who booked a ticket but did not complete payment using left join
select a.name, t.ticket_id, p.payment_status from attendees a
left join tickets t on a.attendees_id = t.attendees_id
left join payments p on t.ticket_id = p.ticket_id
where p.payment_status != 'success';
-- +--------------+-----------+----------------+
-- | name         | ticket_id | payment_status |
-- +--------------+-----------+----------------+
-- | Rohan Mehta  |         5 | Pending        |
-- | Karan Joshi  |         7 | Pending        |
-- | Anjali Mehta |        10 | Failed         |
-- | Neha Desai   |        16 | Pending        |
-- +--------------+-----------+----------------+



-- q7.3 identify events without any attendees using right join
select e.event_name, t.ticket_id from tickets t
right join events e on t.event_id = e.event_id
where t.ticket_id is null;
-- Empty set (0.015 sec)



-- q7.4 show attendees who have not booked any ticket using full outer join
select a.name, t.ticket_id from attendees a
left join tickets t on a.attendees_id = t.attendees_id
union
select a.name, t.ticket_id from attendees a
right join tickets t on a.attendees_id = t.attendees_id;
-- +--------------+-----------+
-- | name         | ticket_id |
-- +--------------+-----------+
-- | Rahul Sharma |         1 |
-- | Rahul Sharma |         6 |
-- | Priya Patel  |         2 |
-- | Priya Patel  |        14 |
-- | Amit Shah    |         3 |
-- | Amit Shah    |        15 |
-- | Neha Desai   |         4 |
-- | Neha Desai   |        16 |
-- | Rohan Mehta  |         5 |
-- | Karan Joshi  |         7 |
-- | Sneha Shah   |         8 |
-- | Vivek Patel  |         9 |
-- | Anjali Mehta |        10 |
-- | Jay Shah     |        11 |
-- | Meera Joshi  |        12 |
-- | Dev Patel    |        13 |
-- +--------------+-----------+





-- ================================================================
--                         08. subqueries                                                  
-- ================================================================

-- q8.1 find events that generated revenue above average ticket sales
select e.event_name, sum(p.amount_paid) as revenue from events e
join tickets t on e.event_id = t.event_id
join payments p on t.ticket_id = p.ticket_id
group by e.event_id having sum(p.amount_paid) > (select avg(ticket_price)from events);
-- +-----------------------+---------+
-- | event_name            | revenue |
-- +-----------------------+---------+
-- | AI Summit 2026        |    4500 |
-- | Business Expo 2026    |    4000 |
-- | Music Festival        |    3600 |
-- | Startup Meetup        |    1600 |
-- | Tech Conference       |    5000 |
-- | Data Science Workshop |    3600 |
-- +-----------------------+---------+



-- q8.2 identify attendees who booked tickets for multiple events
select a.name, count(distinct t.event_id) as total_events from attendees a
join tickets t on a.attendees_id = t.attendees_id
group by a.attendees_id having count(distinct t.event_id) > 1;
-- +--------------+--------------+
-- | name         | total_events |
-- +--------------+--------------+
-- | Rahul Sharma |            2 |
-- | Priya Patel  |            2 |
-- | Amit Shah    |            2 |
-- | Neha Desai   |            2 |
-- +--------------+--------------+



-- q8.3 organizers who managed more than 3 events
select o.organizer_name, count(e.event_id) as total_events from organizers o
join events e on o.organizer_id = e.organizer_id
group by o.organizer_id having count(e.event_id) > 3;
-- Empty set (0.018 sec)





-- ================================================================
--              09. date and time functions                                     
-- ================================================================

-- q9.1 extract month from event_date
select event_id, event_name, monthname(event_date) as event_month from events;
-- +----------+-----------------------+-------------+
-- | event_id | event_name            | event_month |
-- +----------+-----------------------+-------------+
-- |        1 | AI Summit 2026        | December    |
-- |        2 | Business Expo 2026    | November    |
-- |        3 | Music Festival        | December    |
-- |        4 | Startup Meetup        | October     |
-- |        5 | Tech Conference       | September   |
-- |        6 | Cultural Night        | December    |
-- |        7 | Data Science Workshop | November    |
-- |        8 | Youth Festival        | October     |
-- +----------+-----------------------+-------------+



-- q9.2 calculate number of days remaining for upcoming events
select event_id, event_name, event_date, datediff(event_date, curdate()) as days_remaining from events where event_date >= curdate();
-- +----------+-----------------------+---------------------+----------------+
-- | event_id | event_name            | event_date          | days_remaining |
-- +----------+-----------------------+---------------------+----------------+
-- |        1 | AI Summit 2026        | 2026-12-05 10:00:00 |             84 |
-- |        2 | Business Expo 2026    | 2026-11-20 11:00:00 |             69 |
-- |        3 | Music Festival        | 2026-12-15 18:00:00 |             94 |
-- |        4 | Startup Meetup        | 2026-10-25 14:00:00 |             43 |
-- |        5 | Tech Conference       | 2026-09-30 09:00:00 |             18 |
-- |        6 | Cultural Night        | 2026-12-22 19:00:00 |            101 |
-- |        7 | Data Science Workshop | 2026-11-10 10:00:00 |             59 |
-- |        8 | Youth Festival        | 2026-10-15 16:00:00 |             33 |
-- +----------+-----------------------+---------------------+----------------+



-- q9.3 format payment_date as yyyy-mm-dd hh:mm:ss
select payment_id, date_format(payment_date, '%Y-%m-%d %H:%i:%s') as formatted_payment_date from payments;
-- +------------+------------------------+
-- | payment_id | formatted_payment_date |
-- +------------+------------------------+
-- |          1 | 2026-09-01 10:35:00    |
-- |          2 | 2026-09-02 11:05:00    |
-- |          3 | 2026-09-03 12:05:00    |
-- |          4 | 2026-09-04 13:05:00    |
-- |          5 | 2026-09-05 14:05:00    |
-- |          6 | 2026-09-06 15:05:00    |
-- |          7 | 2026-09-07 16:05:00    |
-- |          8 | 2026-09-08 17:05:00    |
-- |          9 | 2026-09-09 10:05:00    |
-- |         10 | 2026-09-10 11:05:00    |
-- |         11 | 2026-09-01 09:05:00    |
-- |         12 | 2026-09-02 10:05:00    |
-- |         13 | 2026-09-03 12:05:00    |
-- |         14 | 2026-09-04 13:05:00    |
-- |         15 | 2026-09-05 14:05:00    |
-- |         16 | 2026-09-06 15:05:00    |
-- +------------+------------------------+





-- ================================================================
--           10. string manipulation functions                               
-- ================================================================

-- q10.1 convert organizer names to uppercase
select organizer_id, upper(organizer_name) as organizer_name from organizers;
-- +--------------+-------------------+
-- | organizer_id | organizer_name    |
-- +--------------+-------------------+
-- |            1 | TECH EVENTS INDIA |
-- |            2 | FUTURE MINDS      |
-- |            3 | BUSINESS CONNECT  |
-- |            4 | CREATIVE GUJARAT  |
-- |            5 | YOUTH FESTIVAL    |
-- |            6 | AI INNOVATORS     |
-- +--------------+-------------------+



-- q10.2 remove extra spaces from attendee names
select attendees_id, trim(name) as cleaned_name from attendees;
-- +--------------+--------------+
-- | attendees_id | cleaned_name |
-- +--------------+--------------+
-- |            1 | Rahul Sharma |
-- |            2 | Priya Patel  |
-- |            3 | Amit Shah    |
-- |            4 | Neha Desai   |
-- |            5 | Rohan Mehta  |
-- |            6 | Karan Joshi  |
-- |            7 | Sneha Shah   |
-- |            8 | Vivek Patel  |
-- |            9 | Anjali Mehta |
-- |           10 | Jay Shah     |
-- |           11 | Meera Joshi  |
-- |           12 | Dev Patel    |
-- +--------------+--------------+



-- q10.3 replace null email with "not provided"
select *, coalesce(contact_email, "Not provided") as email from organizers;
-- +--------------+-------------------+--------------------+--------------+--------------------+
-- | organizer_id | organizer_name    | contact_email      | phone_number | email              |
-- +--------------+-------------------+--------------------+--------------+--------------------+
-- |            1 | Tech Events India | tech@gmail.com     | 9876543210   | tech@gmail.com     |
-- |            2 | Future Minds      | future@gmail.com   | 9876543211   | future@gmail.com   |
-- |            3 | Business Connect  | business@gmail.com | 9876543212   | business@gmail.com |
-- |            4 | Creative Gujarat  | creative@gmail.com | 9876543213   | creative@gmail.com |
-- |            5 | Youth Festival    | youth@gmail.com    | 9876543214   | youth@gmail.com    |
-- |            6 | AI Innovators     | NULL               | 9876543215   | Not provided       |
-- +--------------+-------------------+--------------------+--------------+--------------------+





-- ================================================================
--                      11. window functions                                            
-- ================================================================

-- q11.1 rank events by total revenue
select e.event_name, sum(p.amount_paid) as revenue, rank() over(order by sum(p.amount_paid) desc) as revenue_rank from events e
join tickets t on e.event_id = t.event_id
join payments p on t.ticket_id = p.ticket_id
group by e.event_id;
-- +-----------------------+---------+--------------+
-- | event_name            | revenue | revenue_rank |
-- +-----------------------+---------+--------------+
-- | Tech Conference       |    5000 |            1 |
-- | AI Summit 2026        |    4500 |            2 |
-- | Business Expo 2026    |    4000 |            3 |
-- | Music Festival        |    3600 |            4 |
-- | Data Science Workshop |    3600 |            4 |
-- | Startup Meetup        |    1600 |            6 |
-- | Cultural Night        |     700 |            7 |
-- | Youth Festival        |     500 |            8 |
-- +-----------------------+---------+--------------+



-- q11.2 cumulative sum of ticket sales
select ticket_id, booking_date, event_id, sum(1) over(order by booking_date rows between unbounded preceding and current row) as cumulative_sales from tickets;
-- +-----------+---------------------+----------+------------------+
-- | ticket_id | booking_date        | event_id | cumulative_sales |
-- +-----------+---------------------+----------+------------------+
-- |        11 | 2026-09-01 09:00:00 |        5 |                1 |
-- |         1 | 2026-09-01 10:30:00 |        1 |                2 |
-- |        12 | 2026-09-02 10:00:00 |        5 |                3 |
-- |         2 | 2026-09-02 11:00:00 |        1 |                4 |
-- |         3 | 2026-09-03 12:00:00 |        1 |                5 |
-- |        13 | 2026-09-03 12:00:00 |        6 |                6 |
-- |         4 | 2026-09-04 13:00:00 |        2 |                7 |
-- |        14 | 2026-09-04 13:00:00 |        7 |                8 |
-- |         5 | 2026-09-05 14:00:00 |        2 |                9 |
-- |        15 | 2026-09-05 14:00:00 |        7 |               10 |
-- |         6 | 2026-09-06 15:00:00 |        3 |               11 |
-- |        16 | 2026-09-06 15:00:00 |        8 |               12 |
-- |         7 | 2026-09-07 16:00:00 |        3 |               13 |
-- |         8 | 2026-09-08 17:00:00 |        3 |               14 |
-- |         9 | 2026-09-09 10:00:00 |        4 |               15 |
-- |        10 | 2026-09-10 11:00:00 |        4 |               16 |
-- +-----------+---------------------+----------+------------------+



-- q11.3 running total of attendees per event
select event_id, booking_date, attendees_id,
count(*) over(partition by event_id rows between unbounded preceding and current row) as running_attendee_total from tickets;
-- +----------+---------------------+--------------+------------------------+
-- | event_id | booking_date        | attendees_id | running_attendee_total |
-- +----------+---------------------+--------------+------------------------+
-- |        1 | 2026-09-01 10:30:00 |            1 |                      1 |
-- |        1 | 2026-09-02 11:00:00 |            2 |                      2 |
-- |        1 | 2026-09-03 12:00:00 |            3 |                      3 |
-- |        2 | 2026-09-04 13:00:00 |            4 |                      1 |
-- |        2 | 2026-09-05 14:00:00 |            5 |                      2 |
-- |        3 | 2026-09-06 15:00:00 |            1 |                      1 |
-- |        3 | 2026-09-07 16:00:00 |            6 |                      2 |
-- |        3 | 2026-09-08 17:00:00 |            7 |                      3 |
-- |        4 | 2026-09-09 10:00:00 |            8 |                      1 |
-- |        4 | 2026-09-10 11:00:00 |            9 |                      2 |
-- |        5 | 2026-09-01 09:00:00 |           10 |                      1 |
-- |        5 | 2026-09-02 10:00:00 |           11 |                      2 |
-- |        6 | 2026-09-03 12:00:00 |           12 |                      1 |
-- |        7 | 2026-09-04 13:00:00 |            2 |                      1 |
-- |        7 | 2026-09-05 14:00:00 |            3 |                      2 |
-- |        8 | 2026-09-06 15:00:00 |            4 |                      1 |
-- +----------+---------------------+--------------+------------------------+





-- ================================================================
--                  12. sql case expressions                                        
-- ================================================================

-- q12.1 categorize events by demand
select event_id, event_name,
case
    when available_seats < total_seats * 0.20 then 'high demand'
    when available_seats between total_seats * 0.20 and total_seats * 0.50 then 'moderate demand'
    else 'low demand'
end as demand
from events;
-- +----------+-----------------------+-----------------+
-- | event_id | event_name            | demand          |
-- +----------+-----------------------+-----------------+
-- |        1 | AI Summit 2026        | high demand     |
-- |        2 | Business Expo 2026    | moderate demand |
-- |        3 | Music Festival        | high demand     |
-- |        4 | Startup Meetup        | low demand      |
-- |        5 | Tech Conference       | high demand     |
-- |        6 | Cultural Night        | low demand      |
-- |        7 | Data Science Workshop | high demand     |
-- |        8 | Youth Festival        | low demand      |
-- +----------+-----------------------+-----------------+



-- q12.2 assign payment status
select payment_id, payment_status, payment_date,
case
    when payment_status = 'success' then 'Successful'
    when payment_status = 'failed' then 'Failed'
    else 'Pending'
end as payment_result
from payments;
-- +------------+----------------+---------------------+----------------+
-- | payment_id | payment_status | payment_date        | payment_result |
-- +------------+----------------+---------------------+----------------+
-- |          1 | Success        | 2026-09-01 10:35:00 | Successful     |
-- |          2 | Success        | 2026-09-02 11:05:00 | Successful     |
-- |          3 | Success        | 2026-09-03 12:05:00 | Successful     |
-- |          4 | Success        | 2026-09-04 13:05:00 | Successful     |
-- |          5 | Pending        | 2026-09-05 14:05:00 | Pending        |
-- |          6 | Success        | 2026-09-06 15:05:00 | Successful     |
-- |          7 | Pending        | 2026-09-07 16:05:00 | Pending        |
-- |          8 | Success        | 2026-09-08 17:05:00 | Successful     |
-- |          9 | Success        | 2026-09-09 10:05:00 | Successful     |
-- |         10 | Failed         | 2026-09-10 11:05:00 | Failed         |
-- |         11 | Success        | 2026-09-01 09:05:00 | Successful     |
-- |         12 | Success        | 2026-09-02 10:05:00 | Successful     |
-- |         13 | Success        | 2026-09-03 12:05:00 | Successful     |
-- |         14 | Success        | 2026-09-04 13:05:00 | Successful     |
-- |         15 | Success        | 2026-09-05 14:05:00 | Successful     |
-- |         16 | Pending        | 2026-09-06 15:05:00 | Pending        |
-- +------------+----------------+---------------------+----------------+