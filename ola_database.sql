use ola_data;

#1. All successfull bookings
select * from ola_d where Booking_Status = 'Success';
select count(Booking_Status) from ola_d where Booking_Status = 'Success';

#3. Get the total number of cancelled rides by customers:
select count(Booking_Status) from ola_d where Booking_Status = 'Canceled by driver';
select count(*) from ola_d where Booking_Status = 'Canceled by driver';

#2. Find the average ride distance for each vehicle type
select Vehicle_Type, avg(Ride_Distance) as avg_distance from ola_d group by Vehicle_Type;

select Booking_Status, count(Booking_Status) as Total_Count from ola_d group by Booking_Status;

#4.  List the top 5 customers who booked the highest number of rides:
select Customer_ID, count(Customer_ID) as t_count from ola_d group by Customer_ID order by t_count DESC limit 6;

# 5. Get the number of rides cancelled by drivers due to personal and car-related issues:
select Canceled_Rides_by_Driver, count(Canceled_Rides_by_Driver) as total_count from ola_d group by Canceled_Rides_by_Driver;
select count(*) as total_count from ola_d where Canceled_Rides_by_Driver = 'Personal & Car related issue';

#6. Find the maximum and minimum driver ratings for Prime Sedan bookings
select max(Driver_Ratings) as maximum, min(Driver_Ratings) as minimum from ola_d where Vehicle_Type = 'Prime Sedan';

#7. Retrieve all rides where payment was made using UPI
select * from ola_d where Payment_Method = 'UPI';

#8. Find the average customer rating per vehicle type
select Vehicle_Type, round(avg(Customer_Rating),2) as Average from ola_d group by Vehicle_Type;

#9. Calculate the total booking value of rides completed successfully
select sum(Booking_Value) as Total_ride_value from ola_d where Booking_Status = 'Success';

#10. List all incomplete rides along with the reason
select Booking_ID, Incomplete_Rides_Reason from ola_d where Incomplete_Rides = 'Yes';

