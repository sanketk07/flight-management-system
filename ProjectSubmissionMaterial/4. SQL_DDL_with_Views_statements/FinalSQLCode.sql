CREATE TABLE Airline (
HeadquaterLocationCode INTEGER  NOT NULL,
AirlineCode INTEGER  NOT NULL,
Name VARCHAR(10)  NOT NULL,
Description VARCHAR(30)  NOT NULL);


ALTER TABLE Airline ADD CONSTRAINT Airline_PK PRIMARY KEY CLUSTERED (
AirlineCode);



CREATE TABLE HotelListings (
ServiceCode VARCHAR(10)  NOT NULL,
HotelCode INTEGER  NOT NULL,
HotelName VARCHAR(10)  NOT NULL,
AvailabilityStartDate DATETIME  NOT NULL,
AvailabilityEndDate DATETIME  NOT NULL);


ALTER TABLE HotelListings ADD CONSTRAINT HotelListings_PK PRIMARY KEY CLUSTERED (
ServiceCode);

CREATE TABLE HotelBooking (
BookingID INTEGER  NOT NULL, 
FareRuleCode VARCHAR(10)  NULL,
HotelCode INTEGER  NOT NULL,
BookingStartDate DATETIME  NOT NULL,
BookingEndDate DATETIME  NOT NULL, 
BookingAdults INTEGER  NOT NULL, 
BookingRoomCount INTEGER  NOT NULL  
);

ALTER TABLE HotelBooking ADD CONSTRAINT HotelBooking_PK PRIMARY KEY CLUSTERED (
BookingID);

CREATE TABLE dbo.Flight (
FlightCode INTEGER  NOT NULL  
, AirlineCode INTEGER  NOT NULL  
, FlightDuration VARCHAR(10)  NOT NULL  
, AircraftName VARCHAR(10)  NOT NULL  
, FlightAmenities VARCHAR(10)  NOT NULL  
, SourceAirportCode INTEGER  NOT NULL  
, DestinationAirportCode INTEGER  NOT NULL  
, BaseFare MONEY  NOT NULL  
, FareRuleCode VARCHAR(10)  NULL  
)
;

ALTER TABLE dbo.Flight ADD CONSTRAINT Flight_PK PRIMARY KEY CLUSTERED (
FlightCode);



CREATE TABLE dbo.Location (
CountryCode INTEGER  NOT NULL  
, StateCode INTEGER  NOT NULL  
, CityCode INTEGER  NOT NULL  
, LocationCode INTEGER  NOT NULL  
);

ALTER TABLE dbo.Location ADD CONSTRAINT Location_PK PRIMARY KEY CLUSTERED (
LocationCode);


CREATE TABLE dbo.BusBooking (
BookingID INTEGER  NOT NULL  
, FareRuleCode VARCHAR(10)  NULL  
, SeatCode INTEGER  NOT NULL  
, JourneyDate DATETIME  NOT NULL  
, BusCode INTEGER  NULL);

ALTER TABLE dbo.BusBooking ADD CONSTRAINT BusBooking_PK PRIMARY KEY CLUSTERED (
BookingID
);

CREATE TABLE dbo.CarBooking (
BookingID INTEGER  NOT NULL  
, FareRuleCode VARCHAR(10)  NULL  
, CarCode INTEGER  NOT NULL  
, JourneyStartDate DATETIME  NOT NULL  
, JourneyEndDate DATETIME  NOT NULL  
);

ALTER TABLE dbo.CarBooking ADD CONSTRAINT CarBooking_PK PRIMARY KEY CLUSTERED (
BookingID);


CREATE TABLE dbo.FlightBooking (
BookingID INTEGER  NOT NULL  
, FareRuleCode VARCHAR(10)  NULL  
, FlightCode INTEGER  NOT NULL  
, SeatCode INTEGER  NOT NULL  
, IsAvailable VARCHAR(10)  NULL  
);

ALTER TABLE dbo.FlightBooking ADD CONSTRAINT FlightBooking_PK PRIMARY KEY CLUSTERED (
BookingID
);


CREATE TABLE dbo.ShoppingCart (
ShoppingCartID INTEGER  NOT NULL  
, UserID INTEGER  NOT NULL  
);

ALTER TABLE dbo.ShoppingCart ADD CONSTRAINT ShoppingCart_PK PRIMARY KEY CLUSTERED (
ShoppingCartID);



CREATE TABLE dbo.Payment (
PaymentID INTEGER  NOT NULL  
, Type VARCHAR(10)  NOT NULL  
, Category VARCHAR(10)  NOT NULL  
, Amount MONEY  NOT NULL  
, PaymentDate DATETIME  NOT NULL  
, BookingID INTEGER  NOT NULL  
);

ALTER TABLE dbo.Payment ADD CONSTRAINT Payment_PK PRIMARY KEY CLUSTERED (
PaymentID
);



CREATE TABLE dbo.Class (
ClassCode VARCHAR(10)  NOT NULL  
, ClassName VARCHAR(10)  NOT NULL  
, SeatingCapacity INTEGER  NOT NULL  );

ALTER TABLE dbo.Class ADD CONSTRAINT Class_PK PRIMARY KEY CLUSTERED (
ClassCode);


CREATE TABLE dbo.CarRentalListings (
ServiceCode VARCHAR(10)  NOT NULL  
, CarCode INTEGER  NOT NULL  
, AvailabilityStartDate DATETIME  NOT NULL  
, AvailabilityEndDate DATETIME  NOT NULL  
, PickupLocationCode INTEGER  NOT NULL  
);

ALTER TABLE dbo.CarRentalListings ADD CONSTRAINT CarRentalListings_PK PRIMARY KEY CLUSTERED (
ServiceCode);



CREATE TABLE dbo.BusSeat (
SeatCode INTEGER  NOT NULL  
, isAvailable VARCHAR(10)  NOT NULL  
, BusCode INTEGER  NOT NULL);

ALTER TABLE dbo.BusSeat ADD CONSTRAINT BusSeat_PK PRIMARY KEY CLUSTERED (
SeatCode,BusCode);



CREATE TABLE dbo.Airport (
AirportCode INTEGER  NOT NULL  
, LocationCode INTEGER  NOT NULL);

ALTER TABLE dbo.Airport ADD CONSTRAINT Airport_PK PRIMARY KEY CLUSTERED (
AirportCode);


CREATE TABLE dbo.City (
CityCode INTEGER  NOT NULL  
, CityName VARCHAR(10)  NOT NULL);

ALTER TABLE dbo.City ADD CONSTRAINT City_PK PRIMARY KEY CLUSTERED (
CityCode);



CREATE TABLE dbo.State (
StateCode INTEGER  NOT NULL  
, StateName VARCHAR(10)  NOT NULL);

ALTER TABLE dbo.State ADD CONSTRAINT State_PK PRIMARY KEY CLUSTERED (
StateCode);


CREATE TABLE dbo.FareRule (
FareRuleCode VARCHAR(10)  NOT NULL  
, RuleDescription VARCHAR(10)  NOT NULL  
, Discount MONEY  NOT NULL  
, RuleStartDate DATETIME  NOT NULL  
, RuleEndDate DATETIME  NOT NULL  
, RuleName VARCHAR(10)  NOT NULL  
, ServiceType INTEGER  NOT NULL);

ALTER TABLE dbo.FareRule ADD CONSTRAINT FareRule_PK PRIMARY KEY CLUSTERED (
FareRuleCode);



CREATE TABLE dbo.BusBookingListings (
ServiceCode VARCHAR(10)  NOT NULL  
, BusOperator VARCHAR(10)  NOT NULL  
, BusCode INTEGER  NOT NULL  
, JourneyDate DATETIME  NOT NULL  
, JourneyDuration DATETIME  NOT NULL  
);

ALTER TABLE dbo.BusBookingListings ADD CONSTRAINT BusBookingListings_PK PRIMARY KEY CLUSTERED (
ServiceCode);



CREATE TABLE dbo.Bookings (
BookingID INTEGER  NOT NULL  
, FareQuotes MONEY  NOT NULL  
, CalculatedFare MONEY  NOT NULL  
, ServiceFees MONEY  NOT NULL  
, ServiceTax MONEY  NOT NULL  
, UserID INTEGER  NOT NULL  
, BookingDate DATETIME  NOT NULL  
, BonusPointsEarned INTEGER  NOT NULL  
, BonusPointEarnDate DATETIME  NOT NULL);

ALTER TABLE dbo.Bookings ADD CONSTRAINT Bookings_PK PRIMARY KEY CLUSTERED (
BookingID);


CREATE TABLE dbo.Passenger (
Name VARCHAR(10)  NOT NULL  
, IDProofNumber VARCHAR(10)  NOT NULL  
, DOB DATETIME  NOT NULL  
, Gender VARCHAR(10)  NOT NULL  
, PassengerID INTEGER  NOT NULL);

ALTER TABLE dbo.Passenger ADD CONSTRAINT Passenger_PK PRIMARY KEY CLUSTERED (
PassengerID);



CREATE TABLE dbo.UserAccount (
UserID INTEGER  NOT NULL  
, UserName VARCHAR(10)  NOT NULL  
, Password VARCHAR(10)  NOT NULL  
, TotalBonusPointsEarned INTEGER  NOT NULL);

ALTER TABLE dbo.UserAccount ADD CONSTRAINT UserAccount_PK PRIMARY KEY CLUSTERED (
UserID);


CREATE TABLE dbo.Country (
CountryCode INTEGER  NOT NULL  
, CountryName VARCHAR(10)  NOT NULL);

ALTER TABLE dbo.Country ADD CONSTRAINT Country_PK PRIMARY KEY CLUSTERED (
CountryCode);


CREATE TABLE dbo.FlightScheduleListings (
FlightCode INTEGER  NOT NULL  
, DepartureTime DATETIME  NOT NULL  
, DepartureDate DATETIME  NOT NULL  
, ArrivalTime DATETIME  NOT NULL  
, ArrivalDate DATETIME  NOT NULL  
, ServiceCode VARCHAR(10)  NOT NULL);

ALTER TABLE dbo.FlightScheduleListings ADD CONSTRAINT FlightScheduleListings_PK PRIMARY KEY CLUSTERED (
ServiceCode);


CREATE TABLE dbo.Bus (
BusCode INTEGER  NOT NULL  
, Name VARCHAR(10)  NOT NULL  
, Description VARCHAR(10)  NOT NULL  
, LocationCode INTEGER  NOT NULL  
, BaseFare MONEY  NOT NULL  
, FareRuleCode VARCHAR(10)  NULL);

ALTER TABLE dbo.Bus ADD CONSTRAINT Bus_PK PRIMARY KEY CLUSTERED (
BusCode);


CREATE TABLE dbo.ServiceType (
ServiceType INTEGER  NOT NULL  
, ServiceDesc VARCHAR(10)  NOT NULL  
, ServiceIndustry CHAR(10)  NOT NULL);

ALTER TABLE dbo.ServiceType ADD CONSTRAINT ServiceType_PK PRIMARY KEY CLUSTERED (
ServiceType);


CREATE TABLE dbo.UserLoginHistory (
LoginTimeStamp DATETIME  NOT NULL  
, LoginStatus VARCHAR(10)  NOT NULL  
, UserID INTEGER  NOT NULL);

ALTER TABLE dbo.UserLoginHistory ADD CONSTRAINT UserLoginHistory_PK PRIMARY KEY CLUSTERED (
LoginTimeStamp
, UserID);


CREATE TABLE dbo.FareRuleHotel (
FareRuleCode VARCHAR(10)  NOT NULL  
, NoOfRooms INTEGER  NOT NULL  
, NoOfGuests INTEGER  NOT NULL  
, RoomType VARCHAR(10)  NOT NULL);

ALTER TABLE dbo.FareRuleHotel ADD CONSTRAINT FareRuleHotel_PK PRIMARY KEY CLUSTERED (
FareRuleCode);


CREATE TABLE dbo.FareRuleCar (
FareRuleCode VARCHAR(10)  NOT NULL  
, NoOfMiles INTEGER  NOT NULL  
, CarInsurance VARCHAR(10)  NOT NULL);

ALTER TABLE dbo.FareRuleCar ADD CONSTRAINT FareRuleCar_PK PRIMARY KEY CLUSTERED (
FareRuleCode);


CREATE TABLE dbo.FareRuleBus (
FareRuleCode VARCHAR(10)  NOT NULL  
, BusSeatType VARCHAR(10)  NOT NULL  
, ReturnJourney VARCHAR(10)  NOT NULL);

ALTER TABLE dbo.FareRuleBus ADD CONSTRAINT FareRuleBus_PK PRIMARY KEY CLUSTERED (
FareRuleCode);



CREATE TABLE dbo.FareRuleFlight (
FareRuleCode VARCHAR(10)  NOT NULL  
, NoOfPassengers INTEGER  NOT NULL  
, MealPreference VARCHAR(10)  NOT NULL );

ALTER TABLE dbo.FareRuleFlight ADD CONSTRAINT FareRuleFlight_PK PRIMARY KEY CLUSTERED (
FareRuleCode);


CREATE TABLE dbo.CreditCardPayment (
PaymentID INTEGER  NOT NULL  
, CardNumber VARCHAR(10)  NOT NULL  
, CardExpiry DATETIME  NOT NULL  
, CardCVV INTEGER  NOT NULL  
, CardZip BIGINT  NOT NULL);

ALTER TABLE dbo.CreditCardPayment ADD CONSTRAINT CreditCardPayment_PK PRIMARY KEY CLUSTERED (
PaymentID);



CREATE TABLE dbo.DebitCardPayment (
PaymentID INTEGER  NOT NULL  
, CardNumber VARCHAR(10)  NOT NULL  
, CardExpiry DATETIME  NOT NULL  
, CardPin INTEGER  NOT NULL  
, CardCVV INTEGER  NOT NULL  
, CardZip BIGINT  NOT NULL);

ALTER TABLE dbo.DebitCardPayment ADD CONSTRAINT DebitCardPayment_PK PRIMARY KEY CLUSTERED (
PaymentID);


CREATE TABLE dbo.AccountPay (
PaymentID INTEGER  NOT NULL  
, AccountNumber VARCHAR(10)  NOT NULL  
, RoutingNumber VARCHAR(10)  NOT NULL  
, AccountEmail VARCHAR(10)  NOT NULL);

ALTER TABLE dbo.AccountPay ADD CONSTRAINT AccountPay_PK PRIMARY KEY CLUSTERED (
PaymentID);



CREATE TABLE dbo.PayPal (
PaymentID INTEGER  NOT NULL  
, PayPalAccountNo VARCHAR(10)  NOT NULL  
, PayPalUsername VARCHAR(10)  NOT NULL  
, PayPalPassword VARCHAR(10)  NOT NULL);

ALTER TABLE dbo.PayPal ADD CONSTRAINT PayPal_PK PRIMARY KEY CLUSTERED (
PaymentID);



CREATE TABLE dbo.BookingsPassenger (
PassengerID INTEGER  NOT NULL  
, BookingID INTEGER  NOT NULL  );

ALTER TABLE dbo.BookingsPassenger ADD CONSTRAINT BookingsPassenger_PK PRIMARY KEY CLUSTERED (
PassengerID
, BookingID);

CREATE TABLE dbo.UserSearchHistory (
SearchTimeStamp DATETIME  NOT NULL  
, SearchQuery VARCHAR(10)  NOT NULL  
, ServiceSearched VARCHAR(10)  NOT NULL  
, UserID INTEGER  NOT NULL  
);

ALTER TABLE dbo.UserSearchHistory ADD CONSTRAINT UserSearchHistory_PK PRIMARY KEY CLUSTERED (
SearchTimeStamp
, UserID);


CREATE TABLE dbo.FlightClass (
ClassCode VARCHAR(10)  NOT NULL  
, FlightCode INTEGER  NOT NULL  
);

ALTER TABLE dbo.FlightClass ADD CONSTRAINT FlightClass_PK PRIMARY KEY CLUSTERED (
ClassCode
, FlightCode);


CREATE TABLE dbo.Seat (
ClassCode VARCHAR(10)  NOT NULL  
, SeatCode INTEGER  NOT NULL  
, IsAvailable VARCHAR(10)  NOT NULL  
);

ALTER TABLE dbo.Seat ADD CONSTRAINT Seat_PK PRIMARY KEY CLUSTERED (
SeatCode
, IsAvailable);


CREATE TABLE dbo.ServicesOffered (
ServiceCode VARCHAR(10)  NOT NULL  
, ServiceType INTEGER  NOT NULL  
);

ALTER TABLE dbo.ServicesOffered ADD CONSTRAINT ServicesOffered_PK PRIMARY KEY CLUSTERED (
ServiceCode);


CREATE TABLE dbo.Hotel (
HotelCode INTEGER  NOT NULL  
, RoomAvailability INTEGER  NOT NULL  
, HotelStarRating INTEGER  NOT NULL  
, HotelCityLocationCode INTEGER  NOT NULL  
, BaseFare MONEY  NOT NULL  
, FareRuleCode VARCHAR(10)  NULL  
);

ALTER TABLE dbo.Hotel ADD CONSTRAINT Hotel_PK PRIMARY KEY CLUSTERED (
HotelCode);


CREATE TABLE dbo.Car (
CarCode INTEGER  NOT NULL  
, CarAvailibility VARCHAR(10)  NOT NULL  
, PickupLocationCode INTEGER  NOT NULL  
, BaseFare MONEY  NOT NULL  
, FareRuleCode VARCHAR(10)  NULL  
, CarName VARCHAR(10)  NOT NULL  
, CareModel VARCHAR(10)  NOT NULL  
, CarCapacity INTEGER  NOT NULL  );

ALTER TABLE dbo.Car ADD CONSTRAINT Car_PK PRIMARY KEY CLUSTERED (
CarCode);


CREATE TABLE dbo.Ticket (
TicketID INTEGER  NOT NULL  
, TicketTimeStamp DATETIME  NOT NULL  
, BookingID INTEGER  NOT NULL);

ALTER TABLE dbo.Ticket ADD CONSTRAINT Ticket_PK PRIMARY KEY CLUSTERED (
TicketID
, BookingID);

ALTER TABLE dbo.Airline WITH CHECK ADD CONSTRAINT Location_Airline_FK1 FOREIGN KEY (
HeadquaterLocationCode
)
REFERENCES dbo.Location (
LocationCode
);

ALTER TABLE dbo.HotelListings WITH CHECK ADD CONSTRAINT ServicesOffered_HotelListings_FK1 FOREIGN KEY (
ServiceCode
)
REFERENCES dbo.ServicesOffered (
ServiceCode
)
ALTER TABLE dbo.HotelListings WITH CHECK ADD CONSTRAINT Hotel_HotelListings_FK1 FOREIGN KEY (
HotelCode
)
REFERENCES dbo.Hotel (
HotelCode
);

ALTER TABLE dbo.HotelBooking WITH CHECK ADD CONSTRAINT Bookings_HotelBooking_FK1 FOREIGN KEY (
BookingID
)
REFERENCES dbo.Bookings (
BookingID
)
ALTER TABLE dbo.HotelBooking WITH CHECK ADD CONSTRAINT FareRuleHotel_HotelBooking_FK1 FOREIGN KEY (
FareRuleCode
)
REFERENCES dbo.FareRuleHotel (
FareRuleCode
)
ALTER TABLE dbo.HotelBooking WITH CHECK ADD CONSTRAINT Hotel_HotelBooking_FK1 FOREIGN KEY (
HotelCode
)
REFERENCES dbo.Hotel (
HotelCode
);

ALTER TABLE dbo.Flight WITH CHECK ADD CONSTRAINT FareRule_Flight_FK1 FOREIGN KEY (
FareRuleCode
)
REFERENCES dbo.FareRule (
FareRuleCode
)
ALTER TABLE dbo.Flight WITH CHECK ADD CONSTRAINT Airport_Flight_FK1 FOREIGN KEY (
SourceAirportCode
)
REFERENCES dbo.Airport (
AirportCode
)
ALTER TABLE dbo.Flight WITH CHECK ADD CONSTRAINT Airline_Flight_FK1 FOREIGN KEY (
AirlineCode
)
REFERENCES dbo.Airline (
AirlineCode
);

ALTER TABLE dbo.Location WITH CHECK ADD CONSTRAINT State_Location_FK1 FOREIGN KEY (
StateCode
)
REFERENCES dbo.State (
StateCode
)
ALTER TABLE dbo.Location WITH CHECK ADD CONSTRAINT Country_Location_FK1 FOREIGN KEY (
CountryCode
)
REFERENCES dbo.Country (
CountryCode
)
ALTER TABLE dbo.Location WITH CHECK ADD CONSTRAINT City_Location_FK1 FOREIGN KEY (
CityCode
)
REFERENCES dbo.City (
CityCode
)
;

ALTER TABLE dbo.BusBooking WITH CHECK ADD CONSTRAINT Bookings_BusBooking_FK1 FOREIGN KEY (
BookingID
)
REFERENCES dbo.Bookings (
BookingID
)
ALTER TABLE dbo.BusBooking WITH CHECK ADD CONSTRAINT FareRuleBus_BusBooking_FK1 FOREIGN KEY (
FareRuleCode
)
REFERENCES dbo.FareRuleBus (
FareRuleCode
)
ALTER TABLE dbo.BusBooking WITH CHECK ADD CONSTRAINT BusSeat_BusBooking_FK1 FOREIGN KEY (
SeatCode
, BusCode
)
REFERENCES dbo.BusSeat (
SeatCode
, BusCode
)
;

ALTER TABLE dbo.CarBooking WITH CHECK ADD CONSTRAINT Bookings_CarBooking_FK1 FOREIGN KEY (
BookingID
)
REFERENCES dbo.Bookings (
BookingID
)
ALTER TABLE dbo.CarBooking WITH CHECK ADD CONSTRAINT FareRuleCar_CarBooking_FK1 FOREIGN KEY (
FareRuleCode
)
REFERENCES dbo.FareRuleCar (
FareRuleCode
)
ALTER TABLE dbo.CarBooking WITH CHECK ADD CONSTRAINT Car_CarBooking_FK1 FOREIGN KEY (
CarCode
)
REFERENCES dbo.Car (
CarCode
)
;

ALTER TABLE dbo.FlightBooking WITH CHECK ADD CONSTRAINT Bookings_FlightBooking_FK1 FOREIGN KEY (
BookingID
)
REFERENCES dbo.Bookings (
BookingID
)
ALTER TABLE dbo.FlightBooking WITH CHECK ADD CONSTRAINT FareRuleFlight_FlightBooking_FK1 FOREIGN KEY (
FareRuleCode
)
REFERENCES dbo.FareRuleFlight (
FareRuleCode
)
ALTER TABLE dbo.FlightBooking WITH CHECK ADD CONSTRAINT Flight_FlightBooking_FK1 FOREIGN KEY (
FlightCode
)
REFERENCES dbo.Flight (
FlightCode
)
ALTER TABLE dbo.FlightBooking WITH CHECK ADD CONSTRAINT Seat_FlightBooking_FK1 FOREIGN KEY (
SeatCode
, IsAvailable
)
REFERENCES dbo.Seat (
SeatCode
, IsAvailable
)
;

ALTER TABLE dbo.ShoppingCart WITH CHECK ADD CONSTRAINT UserAccount_ShoppingCart_FK1 FOREIGN KEY (
UserID
)
REFERENCES dbo.UserAccount (
UserID
)
;

ALTER TABLE dbo.Payment WITH CHECK ADD CONSTRAINT Bookings_Payment_FK1 FOREIGN KEY (
BookingID
)
REFERENCES dbo.Bookings (
BookingID
)
;

;

ALTER TABLE dbo.CarRentalListings WITH CHECK ADD CONSTRAINT ServicesOffered_CarRentalListings_FK1 FOREIGN KEY (
ServiceCode
)
REFERENCES dbo.ServicesOffered (
ServiceCode
)
ALTER TABLE dbo.CarRentalListings WITH CHECK ADD CONSTRAINT Car_CarRentalListings_FK1 FOREIGN KEY (
CarCode
)
REFERENCES dbo.Car (
CarCode
)
;

ALTER TABLE dbo.BusSeat WITH CHECK ADD CONSTRAINT Bus_BusSeat_FK1 FOREIGN KEY (
BusCode
)
REFERENCES dbo.Bus (
BusCode
)
;

ALTER TABLE dbo.Airport WITH CHECK ADD CONSTRAINT Location_Airport_FK1 FOREIGN KEY (
LocationCode
)
REFERENCES dbo.Location (
LocationCode
)
;

;

;

ALTER TABLE dbo.FareRule WITH CHECK ADD CONSTRAINT ServiceType_FareRule_FK1 FOREIGN KEY (
ServiceType
)
REFERENCES dbo.ServiceType (
ServiceType
)
;

ALTER TABLE dbo.BusBookingListings WITH CHECK ADD CONSTRAINT Bus_BusBookingListings_FK1 FOREIGN KEY (
BusCode
)
REFERENCES dbo.Bus (
BusCode
)
ALTER TABLE dbo.BusBookingListings WITH CHECK ADD CONSTRAINT ServicesOffered_BusBookingListings_FK1 FOREIGN KEY (
ServiceCode
)
REFERENCES dbo.ServicesOffered (
ServiceCode
)
;

ALTER TABLE dbo.Bookings WITH CHECK ADD CONSTRAINT UserAccount_Bookings_FK1 FOREIGN KEY (
UserID
)
REFERENCES dbo.UserAccount (
UserID
)
;

;

;

;

ALTER TABLE dbo.FlightScheduleListings WITH CHECK ADD CONSTRAINT Flight_FlightScheduleListings_FK1 FOREIGN KEY (
FlightCode
)
REFERENCES dbo.Flight (
FlightCode
)
ALTER TABLE dbo.FlightScheduleListings WITH CHECK ADD CONSTRAINT ServicesOffered_FlightScheduleListings_FK1 FOREIGN KEY (
ServiceCode
)
REFERENCES dbo.ServicesOffered (
ServiceCode
)
;

ALTER TABLE dbo.Bus WITH CHECK ADD CONSTRAINT FareRule_Bus_FK1 FOREIGN KEY (
FareRuleCode
)
REFERENCES dbo.FareRule (
FareRuleCode
)
ALTER TABLE dbo.Bus WITH CHECK ADD CONSTRAINT Location_Bus_FK1 FOREIGN KEY (
LocationCode
)
REFERENCES dbo.Location (
LocationCode
)
;

;

ALTER TABLE dbo.UserLoginHistory WITH CHECK ADD CONSTRAINT UserAccount_UserLoginHistory_FK1 FOREIGN KEY (
UserID
)
REFERENCES dbo.UserAccount (
UserID
)
;

ALTER TABLE dbo.FareRuleHotel WITH CHECK ADD CONSTRAINT FareRule_FareRuleHotel_FK1 FOREIGN KEY (
FareRuleCode
)
REFERENCES dbo.FareRule (
FareRuleCode
)
;

ALTER TABLE dbo.FareRuleCar WITH CHECK ADD CONSTRAINT FareRule_FareRuleCar_FK1 FOREIGN KEY (
FareRuleCode
)
REFERENCES dbo.FareRule (
FareRuleCode
)
;

ALTER TABLE dbo.FareRuleBus WITH CHECK ADD CONSTRAINT FareRule_FareRuleBus_FK1 FOREIGN KEY (
FareRuleCode
)
REFERENCES dbo.FareRule (
FareRuleCode
)
;

ALTER TABLE dbo.FareRuleFlight WITH CHECK ADD CONSTRAINT FareRule_FareRuleFlight_FK1 FOREIGN KEY (
FareRuleCode
)
REFERENCES dbo.FareRule (
FareRuleCode
)
;

ALTER TABLE dbo.CreditCardPayment WITH CHECK ADD CONSTRAINT Payment_CreditCardPayment_FK1 FOREIGN KEY (
PaymentID
)
REFERENCES dbo.Payment (
PaymentID
)
;

ALTER TABLE dbo.DebitCardPayment WITH CHECK ADD CONSTRAINT Payment_DebitCardPayment_FK1 FOREIGN KEY (
PaymentID
)
REFERENCES dbo.Payment (
PaymentID
)
;

ALTER TABLE dbo.AccountPay WITH CHECK ADD CONSTRAINT Payment_AccountPay_FK1 FOREIGN KEY (
PaymentID
)
REFERENCES dbo.Payment (
PaymentID
)
;

ALTER TABLE dbo.PayPal WITH CHECK ADD CONSTRAINT Payment_PayPal_FK1 FOREIGN KEY (
PaymentID
)
REFERENCES dbo.Payment (
PaymentID
)
;

ALTER TABLE dbo.BookingsPassenger WITH CHECK ADD CONSTRAINT Passenger_BookingsPassenger_FK1 FOREIGN KEY (
PassengerID
)
REFERENCES dbo.Passenger (
PassengerID
)
ALTER TABLE dbo.BookingsPassenger WITH CHECK ADD CONSTRAINT Bookings_BookingsPassenger_FK1 FOREIGN KEY (
BookingID
)
REFERENCES dbo.Bookings (
BookingID
)
;

ALTER TABLE dbo.UserSearchHistory WITH CHECK ADD CONSTRAINT UserAccount_UserSearchHistory_FK1 FOREIGN KEY (
UserID
)
REFERENCES dbo.UserAccount (
UserID
)
;

ALTER TABLE dbo.FlightClass WITH CHECK ADD CONSTRAINT Flight_FlightClass_FK1 FOREIGN KEY (
FlightCode
)
REFERENCES dbo.Flight (
FlightCode
)
ALTER TABLE dbo.FlightClass WITH CHECK ADD CONSTRAINT Class_FlightClass_FK1 FOREIGN KEY (
ClassCode
)
REFERENCES dbo.Class (
ClassCode
)
;

ALTER TABLE dbo.Seat WITH CHECK ADD CONSTRAINT Class_Seat_FK1 FOREIGN KEY (
ClassCode
)
REFERENCES dbo.Class (
ClassCode
)
;

ALTER TABLE dbo.ServicesOffered WITH CHECK ADD CONSTRAINT ServiceType_ServicesOffered_FK1 FOREIGN KEY (
ServiceType
)
REFERENCES dbo.ServiceType (
ServiceType
)
;

ALTER TABLE dbo.Hotel WITH CHECK ADD CONSTRAINT FareRule_Hotel_FK1 FOREIGN KEY (
FareRuleCode
)
REFERENCES dbo.FareRule (
FareRuleCode
)
ALTER TABLE dbo.Hotel WITH CHECK ADD CONSTRAINT Location_Hotel_FK1 FOREIGN KEY (
HotelCityLocationCode
)
REFERENCES dbo.Location (
LocationCode
)
;

ALTER TABLE dbo.Car WITH CHECK ADD CONSTRAINT FareRule_Car_FK1 FOREIGN KEY (
FareRuleCode
)
REFERENCES dbo.FareRule (
FareRuleCode
)
ALTER TABLE dbo.Car WITH CHECK ADD CONSTRAINT Location_Car_FK1 FOREIGN KEY (
PickupLocationCode
)
REFERENCES dbo.Location (
LocationCode
)
;

ALTER TABLE dbo.Ticket WITH CHECK ADD CONSTRAINT Bookings_Ticket_FK1 FOREIGN KEY (
BookingID
)
REFERENCES dbo.Bookings (
BookingID
)
;

---- INSERTION QUERIES

ALTER TABLE dbo.City
ALTER COLUMN CityName varchar(50);

ALTER TABLE dbo.State
ALTER COLUMN StateName varchar(50);

alter table dbo.Country alter column CountryName varchar(50)


--City

INSERT INTO dbo.City VALUES (1, 'Mumbai');
INSERT INTO dbo.City VALUES (2,	'SanJose');
INSERT INTO dbo.City VALUES (3,	'London');
INSERT INTO dbo.City VALUES (4,	'Hamburg');
INSERT INTO dbo.City VALUES (5,	'Paris');
INSERT INTO dbo.City VALUES (6,	 'Barcelona');
INSERT INTO dbo.City VALUES (7, 'Sydney');
INSERT INTO dbo.City VALUES (8, 'Shanghai');
INSERT INTO dbo.City VALUES (9, 'Colombo');
INSERT INTO dbo.City VALUES (10, 'Lahore');
INSERT INTO dbo.City VALUES (11, 'Boston');
INSERT INTO dbo.City VALUES (12,  'New York');
INSERT INTO dbo.City VALUES (13,  'Hartford');
INSERT INTO dbo.City VALUES (14,  'Nashua');
INSERT INTO dbo.City VALUES (15,  'Portland');
INSERT INTO dbo.City VALUES (16,  'Las Vegas');
INSERT INTO dbo.City VALUES (17,  'Tampa');
INSERT INTO dbo.City VALUES (18,  'Orlando');
INSERT INTO dbo.City VALUES (19,  'Atlantic');
INSERT INTO dbo.City VALUES (20,  'Dallas');



--State		




---
INSERT INTO dbo.State VALUES (1, 'Maharashtra');
INSERT INTO dbo.State VALUES (2, 'California');
INSERT INTO dbo.State VALUES (3, 'England');
INSERT INTO dbo.State VALUES (4, 'Berlin');
INSERT INTO dbo.State VALUES (5, 'Alasce');
INSERT INTO dbo.State VALUES (6, 'Spain');

INSERT INTO dbo.State VALUES (7, 'WestAus');
INSERT INTO dbo.State VALUES (8, 'Municipal');
INSERT INTO dbo.State VALUES (9, 'Colombo');
INSERT INTO dbo.State VALUES (10, 'Sindh');
INSERT INTO dbo.State VALUES (11, 'Massachussetts');
INSERT INTO dbo.State VALUES (12, 'New York');
INSERT INTO dbo.State VALUES (13, 'Connecticut');
INSERT INTO dbo.State VALUES (14, 'New Hampshire');
INSERT INTO dbo.State VALUES (15, 'Maine');
INSERT INTO dbo.State VALUES (16, 'Arizona');
INSERT INTO dbo.State VALUES (17, 'Maimi');
INSERT INTO dbo.State VALUES (18, 'New Jersey');
INSERT INTO dbo.State VALUES (19, 'Texas');
INSERT INTO dbo.State VALUES (20, 'N Carolina');

--Country
INSERT INTO dbo.Country VALUES (1,'India');
INSERT INTO dbo.Country VALUES (2,'UnitedStates');
INSERT INTO dbo.Country VALUES (3,'UnitedKingdom');
INSERT INTO dbo.Country VALUES (4,'Germany');
INSERT INTO dbo.Country VALUES (5,'France');
INSERT INTO dbo.Country VALUES (6,'Spain');
INSERT INTO dbo.Country VALUES (7,'Australia');
INSERT INTO dbo.Country VALUES (8,'China');
INSERT INTO dbo.Country VALUES (9,'Sri Lanka');
INSERT INTO dbo.Country VALUES (10,'Pakistan');
INSERT INTO dbo.Country VALUES (11,'Switzerland');
INSERT INTO dbo.Country VALUES (12,'Argentina');
INSERT INTO dbo.Country VALUES (13,'Netherlands');
INSERT INTO dbo.Country VALUES (14,'Afghanistan');
INSERT INTO dbo.Country VALUES (15,'Hong Kong');
INSERT INTO dbo.Country VALUES (16,'Malaysia');
INSERT INTO dbo.Country VALUES (17,'Iceland');
INSERT INTO dbo.Country VALUES (18,'Puerto Rico');
INSERT INTO dbo.Country VALUES (19,'United Arab Emirates');
INSERT INTO dbo.Country VALUES (20,'Ireland');


--Location
INSERT INTO dbo.Location VALUES (1,1,1,1);
INSERT INTO dbo.Location VALUES (2,2,2,2);
INSERT INTO dbo.Location VALUES (3,3,3,3);
INSERT INTO dbo.Location VALUES (4,4,4,4);
INSERT INTO dbo.Location VALUES (5,5,5,5);
INSERT INTO dbo.Location VALUES (6,6,6,6);
INSERT INTO dbo.Location VALUES (7,7,7,7);
INSERT INTO dbo.Location VALUES (8,8,8,8);
INSERT INTO dbo.Location VALUES (9,9,9,9);
INSERT INTO dbo.Location VALUES (10,10,10,10);
INSERT INTO dbo.Location VALUES (11,2,11,11);
INSERT INTO dbo.Location VALUES (12,2,12,12);
INSERT INTO dbo.Location VALUES (13,2,13,13);
INSERT INTO dbo.Location VALUES (14,2,14,14);
INSERT INTO dbo.Location VALUES (15,2,15,15);
INSERT INTO dbo.Location VALUES (16,2,2,16);
INSERT INTO dbo.Location VALUES (17,2,16,17);
INSERT INTO dbo.Location VALUES (18,2,17,18);
INSERT INTO dbo.Location VALUES (19,2,18,19);
INSERT INTO dbo.Location VALUES (20,2,19,20);

--Passenger
INSERT INTO dbo.Passenger VALUES ('Virag',123,'09/28/1991','Male',1);
INSERT INTO dbo.Passenger VALUES ('Sanket',456,'01/12/1993','Male',2);
INSERT INTO dbo.Passenger VALUES ('Richa',789,'05/12/2000','Female',3);
INSERT INTO dbo.Passenger VALUES ('Rohit',111,'06/19/2005','Male',4);
INSERT INTO dbo.Passenger VALUES ('Dishank',222,'12/19/1993','Male',5);
INSERT INTO dbo.Passenger VALUES ('Tejesh',333,'02/25/1994','Male',6);
INSERT INTO dbo.Passenger VALUES ('Jyoti',444,'11/12/2001','Female',7);
INSERT INTO dbo.Passenger VALUES ('Rishi',555,'09/04/1999','Male',8);
INSERT INTO dbo.Passenger VALUES ('Akash',666,'10/25/1990','Male',9);
INSERT INTO dbo.Passenger VALUES ('Lucy',777,'07/21/2005','Female',10);
INSERT INTO dbo.Passenger VALUES ('Pankaj',121,'01/02/2001','Male',11);
INSERT INTO dbo.Passenger VALUES ('Karan',131,'04/04/1991','Male',12);
INSERT INTO dbo.Passenger VALUES ('Arjun',141,'05/03/1992','Male',13);
INSERT INTO dbo.Passenger VALUES ('Gita',151,'12/22/2001','Female',14);
INSERT INTO dbo.Passenger VALUES ('Sunita',161,'12/25/1995','Female',15);
INSERT INTO dbo.Passenger VALUES ('Maya',171,'06/26/1994','Female',16);
INSERT INTO dbo.Passenger VALUES ('Abhishek',181,'08/04/1993','Male',17);
INSERT INTO dbo.Passenger VALUES ('Shiv',191,'03/21/1994','Male',18);
INSERT INTO dbo.Passenger VALUES ('Tim',201,'04/26/1998','Male',19);
INSERT INTO dbo.Passenger VALUES ('Priya',202,'05/19/1997','Female',20);
INSERT INTO dbo.Passenger VALUES ('Parul',203,'11/19/2004','Female',21);
INSERT INTO dbo.Passenger VALUES ('Atul',204,'12/12/1991','Male',22);
INSERT INTO dbo.Passenger VALUES ('Mihir',205,'12/26/2001','Male',23);
INSERT INTO dbo.Passenger VALUES ('Dishank',206,'01/19/1991','Male',24);
INSERT INTO dbo.Passenger VALUES ('Purva',207,'01/20/1991','Female',25);
INSERT INTO dbo.Passenger VALUES ('Vinoth',301,'01/18/2001','Male',26);
INSERT INTO dbo.Passenger VALUES ('Surabhi',302,'09/28/1994','Female',27);
INSERT INTO dbo.Passenger VALUES ('Foram',303,'02/25/2009','Female',28);
INSERT INTO dbo.Passenger VALUES ('Vaibhav',304,'12/29/2000','Male',29);
INSERT INTO dbo.Passenger VALUES ('Pramod',505,'12/31/2000','Male',30);
INSERT INTO dbo.Passenger VALUES ('Ami',606,'11/17/2003','Female',31);
INSERT INTO dbo.Passenger VALUES ('Payal',707,'07/02/1999','Female',32);
INSERT INTO dbo.Passenger VALUES ('Chirah',808,'08/06/1992','Male',33);
INSERT INTO dbo.Passenger VALUES ('Dhvani',909,'09/19/1992','Female',34);
INSERT INTO dbo.Passenger VALUES ('Dhoni',1001,'10/29/2007','Male',35);



--ServiceType

ALTER TABLE dbo.ServiceType
ALTER COLUMN ServiceIndustry varchar(50);

INSERT INTO ServiceType VALUES (1,'Hotel','Hotel Booking');
INSERT INTO ServiceType VALUES (2,'Car','Car rentals');
INSERT INTO ServiceType VALUES (3,'Bus','Bus reservation');
INSERT INTO ServiceType VALUES (4,'Flight','Flight reservation');



--ServicesOffered
INSERT INTO ServicesOffered VALUES ('HOT001',1);
INSERT INTO ServicesOffered VALUES ('CAR001',2);
INSERT INTO ServicesOffered VALUES ('BUS001',3);
INSERT INTO ServicesOffered VALUES ('FLG001',4);
INSERT INTO ServicesOffered VALUES ('HOT002',1);
INSERT INTO ServicesOffered VALUES ('HOT003',1);
INSERT INTO ServicesOffered VALUES ('HOT004',1);
INSERT INTO ServicesOffered VALUES ('HOT005',1);
INSERT INTO ServicesOffered VALUES ('CAR002',2);
INSERT INTO ServicesOffered VALUES ('CAR003',2);
INSERT INTO ServicesOffered VALUES ('CAR004',2);
INSERT INTO ServicesOffered VALUES ('CAR005',2);
INSERT INTO ServicesOffered VALUES ('BUS002',3);
INSERT INTO ServicesOffered VALUES ('BUS003',3);
INSERT INTO ServicesOffered VALUES ('BUS004',3);
INSERT INTO ServicesOffered VALUES ('BUS005',3);
INSERT INTO ServicesOffered VALUES ('FLG002',4);
INSERT INTO ServicesOffered VALUES ('FLG003',4);
INSERT INTO ServicesOffered VALUES ('FLG004',4);
INSERT INTO ServicesOffered VALUES ('FLG005',4);

INSERT INTO ServicesOffered VALUES ('HOT006',1);
INSERT INTO ServicesOffered VALUES ('HOT007',1);
INSERT INTO ServicesOffered VALUES ('HOT008',1);
INSERT INTO ServicesOffered VALUES ('HOT009',1);
INSERT INTO ServicesOffered VALUES ('HOT010',1);
INSERT INTO ServicesOffered VALUES ('CAR006',2);
INSERT INTO ServicesOffered VALUES ('CAR007',2);
INSERT INTO ServicesOffered VALUES ('CAR008',2);
INSERT INTO ServicesOffered VALUES ('CAR009',2);
INSERT INTO ServicesOffered VALUES ('CAR010',2);
INSERT INTO ServicesOffered VALUES ('BUS006',3);
INSERT INTO ServicesOffered VALUES ('BUS007',3);
INSERT INTO ServicesOffered VALUES ('BUS008',3);
INSERT INTO ServicesOffered VALUES ('BUS009',3);
INSERT INTO ServicesOffered VALUES ('BUS010',3);

INSERT INTO ServicesOffered VALUES ('FLG006',4);
INSERT INTO ServicesOffered VALUES ('FLG007',4);
INSERT INTO ServicesOffered VALUES ('FLG008',4);
INSERT INTO ServicesOffered VALUES ('FLG009',4);
INSERT INTO ServicesOffered VALUES ('FLG010',4);



--FareRule


ALTER TABLE dbo.FareRule
ALTER COLUMN RuleDescription varchar(50);



INSERT INTO dbo.FareRule VALUES (1,'10 Percent Discount on Hotels',10,'05/01/2017','09/30/2017','HOTEL10',1);
INSERT INTO dbo.FareRule VALUES (2,'20 Percent Discount on Hotels',20,'06/01/2017','07/31/2017', 'HOTEL20', 1);
INSERT INTO dbo.FareRule VALUES (3,'25 Percent Discount on Hotels',25,'07/15/2017','07/31/2017', 'HOTEL25', 1);
INSERT INTO dbo.FareRule VALUES (4,'15 Percent Discount on Cars',15,'08/01/2017','12/31/2017','CAR15',2);
INSERT INTO dbo.FareRule VALUES (5,'20 Percent Discount on Cars',20,'09/15/2017','10/15/2017','CAR20',2);
INSERT INTO dbo.FareRule VALUES (6,'15 Percent Discount on Buses',15,'07/01/2017','05/31/2018','BUS15',3);
INSERT INTO dbo.FareRule VALUES (7,'20 Percent Discount on Buses',20,'09/01/2017','10/31/2017','BUS20',3);
INSERT INTO dbo.FareRule VALUES (8,'25 Percent Discount on Buses',25,'08/01/2017','08/15/2017','BUS25',3);
INSERT INTO dbo.FareRule VALUES (9,'10 Percent Discount on Flights',10,'08/15/2017','08/31/2017','FLIGHT10',4);
INSERT INTO dbo.FareRule VALUES (10,'15 Percent Discount on Flights',15,'09/01/2017','09/08/2017','FLIGHT15',4);


INSERT INTO dbo.FareRule VALUES (11,'5 Percent Discount on Hotels',5,'07/01/2017','08/30/2017','HOTEL5',1);
INSERT INTO dbo.FareRule VALUES (12,'2 Percent Discount on Hotels',2,'07/01/2017','07/31/2017', 'HOTEL2', 1);
INSERT INTO dbo.FareRule VALUES (13,'12 Percent Discount on Hotels',12,'07/15/2017','07/31/2017', 'HOTEL12', 1);

alter table Passenger
alter column DOB DATE

alter table Passenger 
add Age as CONVERT(int,DATEDIFF(hour,DOB,GETDATE())/8766) ;

CREATE MASTER KEY
ENCRYPTION BY PASSWORD = 'Group3Password';

CREATE CERTIFICATE TestCertificate
WITH SUBJECT = 'MYProject Certificate',
EXPIRY_DATE = '2020-10-31';

CREATE SYMMETRIC KEY TestSymmetricKey
WITH ALGORITHM = AES_128
ENCRYPTION BY CERTIFICATE TestCertificate;

OPEN SYMMETRIC KEY TestSymmetricKey
DECRYPTION BY CERTIFICATE TestCertificate;



ALTER TABLE UserAccount
ADD password2 varbinary(250);

UPDATE UserAccount
SET password2 = CONVERT(varbinary(MAX),password);

ALTER TABLE UserAccount
DROP COLUMN password


sp_RENAME 'UserAccount.[password2]' , 'Password', 'COLUMN';


ALTER TABLE Bookings
ADD ServiceType INT

ALTER TABLE dbo.Bookings WITH CHECK ADD CONSTRAINT Bookings_ServiceType_FK1 FOREIGN KEY (
ServiceType
)
REFERENCES dbo.ServiceType (
ServiceType
);


--Compute Hotel Fare
CREATE TRIGGER COMPUTE_TOTALBONUSPOINTS
ON BOOKINGS
after INSERT
AS
  BEGIN

	DECLARE @BP NUMERIC(21,5);
	SET @BP = 0;

	DECLARE @UID INTEGER;
	SET @UID =0;

	Select @BP =SUM(BonusPointsEarned),@UID =b.UserID from Bookings b
	GROUP BY b.UserID;

	UPDATE UserAccount
	SET TotalBonusPointsEarned = @BP
	WHERE UserID = @UID;
	
  END




  INSERT INTO dbo.UserAccount(UserID,UserName,Password, TotalBonusPointsEarned) VALUES (1,'viragz18',EncryptByKey(Key_GUID(N'TestSymmetricKey'), convert(varbinary, 'PassTS1')),0);



INSERT INTO dbo.UserAccount(UserID,UserName,Password, TotalBonusPointsEarned) VALUES (2,'pank12',EncryptByKey(Key_GUID(N'TestSymmetricKey'), convert(varbinary, 'PassTS2')),0);

INSERT INTO dbo.UserAccount(UserID,UserName,Password, TotalBonusPointsEarned) VALUES (3,'priyaak',EncryptByKey(Key_GUID(N'TestSymmetricKey'), convert(varbinary, 'PassTS3')),0);

INSERT INTO dbo.UserAccount(UserID,UserName,Password, TotalBonusPointsEarned) VALUES (4,'ttejesh',EncryptByKey(Key_GUID(N'TestSymmetricKey'), convert(varbinary, 'PassTS4')),0);

INSERT INTO dbo.UserAccount(UserID,UserName,Password, TotalBonusPointsEarned) VALUES (5,'karan1991',EncryptByKey(Key_GUID(N'TestSymmetricKey'), convert(varbinary, 'PassTS5')),0);

INSERT INTO dbo.UserAccount(UserID,UserName,Password, TotalBonusPointsEarned) VALUES (6,'aka11',EncryptByKey(Key_GUID(N'TestSymmetricKey'), convert(varbinary, 'PassTS6')),0);

INSERT INTO dbo.UserAccount(UserID,UserName,Password, TotalBonusPointsEarned) VALUES (7,'suni123',EncryptByKey(Key_GUID(N'TestSymmetricKey'), convert(varbinary, 'PassTS7')),0);

INSERT INTO dbo.UserAccount(UserID,UserName,Password, TotalBonusPointsEarned) VALUES (8,'rishijain',EncryptByKey(Key_GUID(N'TestSymmetricKey'), convert(varbinary, 'PassTS8')),0);

INSERT INTO dbo.UserAccount(UserID,UserName,Password, TotalBonusPointsEarned) VALUES (9,'lucy2001',EncryptByKey(Key_GUID(N'TestSymmetricKey'), convert(varbinary, 'PassTS9')),0);

INSERT INTO dbo.UserAccount(UserID,UserName,Password, TotalBonusPointsEarned) VALUES (10,'james007',EncryptByKey(Key_GUID(N'TestSymmetricKey'), convert(varbinary, 'PassTS10')),0);



--

-- Hotel 

INSERT INTO Hotel VALUES (1,15,3,1,200,2);
INSERT INTO Hotel VALUES (2,10,5,1,500,1);
INSERT INTO Hotel VALUES (3,10,5,2,400,1);
INSERT INTO Hotel VALUES (4,30,5,3,450,3);
INSERT INTO Hotel VALUES (5,80,2,4,60,1);
INSERT INTO Hotel VALUES (6,40,5,5,550,2);
INSERT INTO Hotel VALUES (7,15,5,6,480,3);
INSERT INTO Hotel VALUES (8,5,4,7,380,1);
INSERT INTO Hotel VALUES (9,20,3,8,250,3);
INSERT INTO Hotel VALUES (10,1,5,1,490,2);


--HotelListings

alter table HotelListings
alter column AvailabilityStartDate DATE

alter table HotelListings
alter column AvailabilityEndDate DATE


INSERT INTO HotelListings (ServiceCode,HotelCode,HotelName,AvailabilityStartDate,AvailabilityEndDate) VALUES ('HOT001','1','ThePlaza','12/08/2017','12/20/2017');
INSERT INTO HotelListings (ServiceCode,HotelCode,HotelName,AvailabilityStartDate,AvailabilityEndDate) VALUES ('HOT002','2','Taj','11/08/2017','12/21/2017');
INSERT INTO HotelListings (ServiceCode,HotelCode,HotelName,AvailabilityStartDate,AvailabilityEndDate) VALUES ('HOT003','3','Oberoi','12/10/2017','12/22/2017');
INSERT INTO HotelListings (ServiceCode,HotelCode,HotelName,AvailabilityStartDate,AvailabilityEndDate) VALUES ('HOT004','4','Sheraton ','12/11/2017','12/23/2017');
INSERT INTO HotelListings (ServiceCode,HotelCode,HotelName,AvailabilityStartDate,AvailabilityEndDate) VALUES ('HOT005','5','JW','12/12/2017','12/24/2017');
INSERT INTO HotelListings (ServiceCode,HotelCode,HotelName,AvailabilityStartDate,AvailabilityEndDate) VALUES ('HOT006','6','Sahara','12/13/2017','12/25/2017');
INSERT INTO HotelListings (ServiceCode,HotelCode,HotelName,AvailabilityStartDate,AvailabilityEndDate) VALUES ('HOT007','7','Radison','12/14/2017','12/26/2017');
INSERT INTO HotelListings (ServiceCode,HotelCode,HotelName,AvailabilityStartDate,AvailabilityEndDate) VALUES ('HOT008','8','Movenpick','12/15/2017','12/27/2017');
INSERT INTO HotelListings (ServiceCode,HotelCode,HotelName,AvailabilityStartDate,AvailabilityEndDate) VALUES ('HOT009','9','Uma','12/16/2017','12/28/2017');
INSERT INTO HotelListings (ServiceCode,HotelCode,HotelName,AvailabilityStartDate,AvailabilityEndDate) VALUES ('HOT010','10','ITC','12/17/2017','12/29/2017');


--Car

ALTER TABLE dbo.Car
ALTER COLUMN CarName varchar(50);

ALTER TABLE dbo.Car
ALTER COLUMN CareModel varchar(50);

INSERT INTO Car  VALUES (1,'N',2,500,'4','Honda Civic','Si Coupe',5);
INSERT INTO Car  VALUES (2,'Y',5,750,'4','Honda CRV','EX',5);
INSERT INTO Car  VALUES (3,'Y',3,900,'4','Honda Odyssey','SE',7);
INSERT INTO Car  VALUES (4,'Y',4,600,'5','Hyundai Elantra GT','Value Edition',5);
INSERT INTO Car  VALUES (5,'N',2,550,'5','Ford Fiesta','ST',5);
INSERT INTO Car  VALUES (6,'N',5,700,'4','Ford Escape','Titanium',5);
INSERT INTO Car  VALUES (7,'Y',4,650,'5','Ford Focus','RS',5);
INSERT INTO Car  VALUES (8,'Y',5,1000,'5','Mercedez Benz','CLS',5);
INSERT INTO Car  VALUES (9,'N',3,850,'5','Mitsubishi Lancer','ES 2.0L CVT',5);
INSERT INTO Car  VALUES (10,'Y',2,900,'4','Toyota Corolla','LE ECO',5);


UPDATE Car
SET BaseFare = 50
WHERE CarCode =1;

UPDATE Car
SET BaseFare = 75
WHERE CarCode =2;

UPDATE Car
SET BaseFare = 90
WHERE CarCode =3;

UPDATE Car
SET BaseFare = 60
WHERE CarCode =4;

UPDATE Car
SET BaseFare = 55
WHERE CarCode =5;

UPDATE Car
SET BaseFare = 70
WHERE CarCode =6;

UPDATE Car
SET BaseFare = 65
WHERE CarCode =7;

UPDATE Car
SET BaseFare = 10
WHERE CarCode =8;

UPDATE Car
SET BaseFare = 85
WHERE CarCode =9;

UPDATE Car
SET BaseFare = 90
WHERE CarCode =10;










--CarRentalListings

INSERT INTO CarRentalListings  VALUES ('CAR001',1,'06/01/2017','12/31/2017',2);
INSERT INTO CarRentalListings  VALUES ('CAR002',2,'07/15/2017','09/30/2017',5);
INSERT INTO CarRentalListings  VALUES ('CAR003',3,'08/01/2017','12/31/2018',3);
INSERT INTO CarRentalListings  VALUES ('CAR004',4,'09/01/2017','12/31/2017',4);
INSERT INTO CarRentalListings  VALUES ('CAR005',5,'10/15/2017','05/31/2018',2);
INSERT INTO CarRentalListings  VALUES ('CAR006',6,'06/01/2017','03/31/2018',5);
INSERT INTO CarRentalListings  VALUES ('CAR007',7,'08/01/2017','12/31/2017',4);
INSERT INTO CarRentalListings  VALUES ('CAR008',8,'07/01/2017','12/31/2017',5);
INSERT INTO CarRentalListings  VALUES ('CAR009',9,'09/15/2017','05/31/2018',3);
INSERT INTO CarRentalListings  VALUES ('CAR010',10,'05/01/2017','12/31/2018',2);


--Airline
ALTER TABLE dbo.Airline
ALTER COLUMN Name varchar(50);

ALTER TABLE dbo.Airline 
ALTER COLUMN Description varchar(50);


INSERT INTO Airline VALUES (1,1,'AirIndia','Best Indian & International Airline');
INSERT INTO Airline VALUES (2,2,'United Airlines','Reputed US airline');
INSERT INTO Airline VALUES (3,3,'British Airways','Average UK airline');
INSERT INTO Airline VALUES (4,4,'Lufthansa','Top quality European airline');
INSERT INTO Airline VALUES (5,5,'Air France','No.2 airline in europe');
INSERT INTO Airline VALUES (6,6,'Air Europa','Local airline');
INSERT INTO Airline VALUES (7,7,'Virgin Australia','Top quality australian airlines');
INSERT INTO Airline VALUES (8,8,'Air China','Best Chinese airline');
INSERT INTO Airline VALUES (9,9,'SriLankan Airlines','Only airline in SriLanka');
INSERT INTO Airline VALUES (10,10,'Pakistan International Airline','Average airline in Pakistan');


--FareRuleHotel



INSERT INTO FareRuleHotel (FareRuleCode,NoOfRooms,NoOfGuests,RoomType) VALUES ('1',2,4,'Standard');
INSERT INTO FareRuleHotel (FareRuleCode,NoOfRooms,NoOfGuests,RoomType) VALUES ('2',1,1,'Deluxe');
INSERT INTO FareRuleHotel (FareRuleCode,NoOfRooms,NoOfGuests,RoomType) VALUES ('3',1,1,'Luxury');
INSERT INTO FareRuleHotel (FareRuleCode,NoOfRooms,NoOfGuests,RoomType) VALUES ('11',5,10,'Family');
INSERT INTO FareRuleHotel (FareRuleCode,NoOfRooms,NoOfGuests,RoomType) VALUES ('12',1,2,'Suite');
INSERT INTO FareRuleHotel (FareRuleCode,NoOfRooms,NoOfGuests,RoomType) VALUES ('13',1,2,'Master');


--Airport
ALTER TABLE Airport 
ADD AirportName varchar(50)

INSERT INTO Airport VALUES (1,1,'Chhatrapati Shivaji International Airport');
INSERT INTO Airport VALUES (2,2,'San Jose International Airport');
INSERT INTO Airport VALUES (3,3,'Heathrow Airport');
INSERT INTO Airport VALUES (4,4,'Berlin Brandenburg Airport');
INSERT INTO Airport VALUES (5,5,'Charles de Gaulle Airport');
INSERT INTO Airport VALUES (6,6,'Barcelona–El Prat Airport');
INSERT INTO Airport VALUES (7,7,'Sydney Airport');
INSERT INTO Airport VALUES (8,8,'Shanghai Pudong International Airport');
INSERT INTO Airport VALUES (9,9,'Bandaranaike International Airport');
INSERT INTO Airport VALUES (10,10,'Allama Iqbal International Airport');


--FareRuleCar



INSERT INTO FareRuleCar (FareRuleCode,NoOfMiles,CarInsurance) VALUES ('4',50,'Y');
INSERT INTO FareRuleCar (FareRuleCode,NoOfMiles,CarInsurance) VALUES ('5',100,'Y');


--FareRuleBus

INSERT INTO FareRuleBus VALUES ('6','Premium','Single');
INSERT INTO FareRuleBus VALUES ('7','Standard','Return');
INSERT INTO FareRuleBus VALUES ('8','Sleeper','Single');

--FareRuleFlight

INSERT INTO FareRuleFlight (FareRuleCode,NoOfPassengers,MealPreference) VALUES ('9',2,'Special');
INSERT INTO FareRuleFlight (FareRuleCode,NoOfPassengers,MealPreference) VALUES ('10',2,'Luxury');




--Bus

ALTER TABLE dbo.Bus
ALTER COLUMN Description varchar(50);


INSERT INTO Bus VALUES (1,'BOSNYC','Boston to New York',11,5,'6');
INSERT INTO Bus VALUES (2,'BOSHT','Boston to Connecticut',11,8,'7');
INSERT INTO Bus VALUES (3,'NAPO','New Hampshire to Maine',14,10,'8');
INSERT INTO Bus VALUES (4,'SHLV','San Jose to Las Vegas',2,25,'6');
INSERT INTO Bus VALUES (5,'NYCTMP','New York to Tampa',12,15,'8');
INSERT INTO Bus VALUES (6,'ALDA','Atlantic City to Dallas',19,'12','6');
INSERT INTO Bus VALUES (7,'ORLV','Orlando to Las Vegas',18,10,'8');
INSERT INTO Bus VALUES (8,'HTNYC','Hartford to New York',13,15,'7');
INSERT INTO Bus VALUES (9,'DAOR','Dallas to Orlando',20,12,'7');
INSERT INTO Bus VALUES (10,'NYCBOS','New York to Boston',12,20,'6');
----

--ServicesOffered

INSERT INTO ServicesOffered VALUES ('BUS006',3);
INSERT INTO ServicesOffered VALUES ('BUS007',3);
INSERT INTO ServicesOffered VALUES ('BUS008',3);
INSERT INTO ServicesOffered VALUES ('BUS009',3);
INSERT INTO ServicesOffered VALUES ('BUS010',3);

----------------
ALTER TABLE dbo.BusBookingListings
ALTER COLUMN BusOperator varchar(50);



INSERT INTO BusBookingListings VALUES ('BUS001','MegaBus',1,'09/12/2017','3:12');
INSERT INTO BusBookingListings VALUES ('BUS002','BoltBus',2,'09/19/2017','1:22');
INSERT INTO BusBookingListings VALUES ('BUS003','Peter Pan',3,'08/24/2017','3:12');
INSERT INTO BusBookingListings VALUES ('BUS004','LimoLiner',4,'09/29/2017','1:24');
INSERT INTO BusBookingListings VALUES ('BUS005','Greyhound',5,'09/12/2017','4:13');
INSERT INTO BusBookingListings VALUES ('BUS006','Concord',6,'10/05/2017','8:22');
INSERT INTO BusBookingListings VALUES ('BUS007','Boston Express',7,'08/14/2017','9:44');
INSERT INTO BusBookingListings VALUES ('BUS008','Lucky Star',8,'09/30/2017','2:42');
INSERT INTO BusBookingListings VALUES ('BUS009','Max',9,'11/15/2017','4:12');
INSERT INTO BusBookingListings VALUES ('BUS010','Dattco',10,'09/18/2017','2:22');


--Flight
ALTER TABLE Flight
ALTER COLUMN FlightAmenities varchar(50)

INSERT INTO Flight VALUES (1,1,'10:20','AirBus','Wifi/Entertainment/wine',1,2,'2200','9');
INSERT INTO Flight VALUES (2,2,'12:40','Boeing','Wifi/Entertainment/beer',2,1,'2500','9');
INSERT INTO Flight VALUES (3,3,'8:15','Jet','Entertainment/bar',3,1,'3000','10');
INSERT INTO Flight VALUES (4,4,'6:30','AirBus','Wifi/Entertainment/wine',4,5,'2800','9');
INSERT INTO Flight VALUES (5,5,'9:50','Boeing','Wifi/Entertainment/wine',5,4,'2500','10');
INSERT INTO Flight VALUES (6,6,'7:45','Jet','Wifi/Entertainment/wine',6,2,'2600','10');
INSERT INTO Flight VALUES (7,7,'5:55','Boeing','Wifi/Entertainment/wine',7,3,'2900','9');
INSERT INTO Flight VALUES (8,8,'11:35','AirBus','Wifi/Entertainment/wine',8,7,'1500','10');
INSERT INTO Flight VALUES (9,9,'8:30','Boeing','Wifi/Entertainment/wine',9,10,'1800','10');
INSERT INTO Flight VALUES (10,10,'3:50','AirBus','Wifi/Entertainment/wine',10,9,'1900','9');


--------

VIEWS

--Flights above the average BaseFare
CREATE VIEW [Flights above Average Price] AS
SELECT f.AircraftName, AVG(f.BaseFare) as BaseFare
FROM Flight f
JOIN Airline a
ON f.AirlineCode = a.AirlineCode
WHERE f.BaseFare > (SELECT AVG(BaseFare) FROM Flight)
GROUP BY f.AircraftName,f.BaseFare;

--Select AVG(BaseFare) from Flight
--Average 2370

SELECT * FROM [Flights above Average Price];


--Showing Promo Codes above 15%
CREATE VIEW [Promo Codes above 15%] AS
SELECT RuleName, Discount, RuleEndDate
FROM FareRule
WHERE Discount > 15


--Active Promocodes above 15%
CREATE VIEW [Active Promo Codes] AS
SELECT TOP 10 RuleName, Discount, RuleEndDate
FROM [Promo Codes above 15%]
WHERE RuleEndDate > getdate()
ORDER BY Discount DESC

Select * from [Active Promo Codes]

--  Class queries to remove FK and inserting records in class


ALTER TABLE Class   
DROP CONSTRAINT Flight_Class_FK1

Alter table Class
Drop column FlightCode

SELECT OBJECT_NAME(object_id) AS ConstraintName,
SCHEMA_NAME(schema_id) AS SchemaName,
type_desc AS ConstraintType
FROM sys.objects
WHERE type_desc LIKE '%CONSTRAINT' AND OBJECT_NAME(parent_object_id)='Class'


INSERT INTO UserLoginHistory (LoginTimeStamp,LoginStatus,UserID) VALUES ('12/04/2011 12:00:00 AM','Success','1');
INSERT INTO UserLoginHistory (LoginTimeStamp,LoginStatus,UserID) VALUES ('2/08/2016 12:00:00 AM','Success','1');
INSERT INTO UserLoginHistory (LoginTimeStamp,LoginStatus,UserID) VALUES ('05/04/2017 12:00:00 AM','Success','1');
INSERT INTO UserLoginHistory (LoginTimeStamp,LoginStatus,UserID) VALUES ('12/04/2011 12:05:00 AM','Failure','1');
INSERT INTO UserLoginHistory (LoginTimeStamp,LoginStatus,UserID) VALUES ('07/08/2017 12:00:00 AM','Success','2');
INSERT INTO UserLoginHistory (LoginTimeStamp,LoginStatus,UserID) VALUES ('02/14/2017 08:00:00 PM','Failure','2');
INSERT INTO UserLoginHistory (LoginTimeStamp,LoginStatus,UserID) VALUES ('05/06/2017 12:00:00 AM','Failure','3');
INSERT INTO UserLoginHistory (LoginTimeStamp,LoginStatus,UserID) VALUES ('06/04/2017 09:30:00 PM','Success','3');
INSERT INTO UserLoginHistory (LoginTimeStamp,LoginStatus,UserID) VALUES ('07/22/2017 10:00:00 PM','Success','3');
INSERT INTO UserLoginHistory (LoginTimeStamp,LoginStatus,UserID) VALUES ('07/12/2017 07:00:00 PM','Success','4');
INSERT INTO UserLoginHistory (LoginTimeStamp,LoginStatus,UserID) VALUES ('07/15/2017 08:00:00 AM','Success','5');
INSERT INTO UserLoginHistory (LoginTimeStamp,LoginStatus,UserID) VALUES ('07/17/2017 11:00:00 PM','Failure','6');
INSERT INTO UserLoginHistory (LoginTimeStamp,LoginStatus,UserID) VALUES ('07/22/2017 05:00:00 PM','Success','7');
INSERT INTO UserLoginHistory (LoginTimeStamp,LoginStatus,UserID) VALUES ('07/23/2017 02:00:00 AM','Success','8');
INSERT INTO UserLoginHistory (LoginTimeStamp,LoginStatus,UserID) VALUES ('07/10/2017 03:00:00 PM','Success','9');
INSERT INTO UserLoginHistory (LoginTimeStamp,LoginStatus,UserID) VALUES ('07/04/2017 10:00:00 AM','Success','10');
----
  select * from UserSearchHistory;

  ALTER TABLE UserSearchHistory
  ALTER COLUMN SearchQuery VARCHAR(100);

  INSERT INTO UserSearchHistory (SearchTimeStamp,SearchQuery,ServiceSearched,UserID) VALUES ('12/04/2011 12:00:00 AM','Boston to Mumbai','Flight','1');
INSERT INTO UserSearchHistory (SearchTimeStamp,SearchQuery,ServiceSearched,UserID) VALUES ('12/04/2015 10:05:00 AM','New York to DC','Bus','1');
INSERT INTO UserSearchHistory (SearchTimeStamp,SearchQuery,ServiceSearched,UserID) VALUES ('07/03/2016 09:20:00 AM','San Jose to Dallas','Flight','2');
INSERT INTO UserSearchHistory (SearchTimeStamp,SearchQuery,ServiceSearched,UserID) VALUES ('09/04/2014 06:40:00 PM','New York ','Hotel','3');
INSERT INTO UserSearchHistory (SearchTimeStamp,SearchQuery,ServiceSearched,UserID) VALUES ('10/08/2016 12:00:00 AM','Austin to Dallas','Car','4');
INSERT INTO UserSearchHistory (SearchTimeStamp,SearchQuery,ServiceSearched,UserID) VALUES ('12/04/2011 12:00:00 AM','San Jose to Boston','Flight','5');
INSERT INTO UserSearchHistory (SearchTimeStamp,SearchQuery,ServiceSearched,UserID) VALUES ('07/06/2017 12:00:00 AM','DC to Boston','Car','6');
INSERT INTO UserSearchHistory (SearchTimeStamp,SearchQuery,ServiceSearched,UserID) VALUES ('12/04/2015 10:00:00 PM','New York ','Hotel','7');
INSERT INTO UserSearchHistory (SearchTimeStamp,SearchQuery,ServiceSearched,UserID) VALUES ('07/14/2017 12:00:00 AM','San Jose','Hotel','8');
INSERT INTO UserSearchHistory (SearchTimeStamp,SearchQuery,ServiceSearched,UserID) VALUES ('06/24/2017 11:00:00 AM','Dallas to Boston','Flight','8');
INSERT INTO UserSearchHistory (SearchTimeStamp,SearchQuery,ServiceSearched,UserID) VALUES ('02/21/2017 12:30:00 PM','Austin to Dallas','Car','9');
INSERT INTO UserSearchHistory (SearchTimeStamp,SearchQuery,ServiceSearched,UserID) VALUES ('05/04/2017 12:45:00 AM','New York to Chicago','Bus','2');
INSERT INTO UserSearchHistory (SearchTimeStamp,SearchQuery,ServiceSearched,UserID) VALUES ('03/04/2017 03:00:00 PM','San Jose','Hotel','10');
INSERT INTO UserSearchHistory (SearchTimeStamp,SearchQuery,ServiceSearched,UserID) VALUES ('02/04/2017 06:00:00 PM','Mumbai to New York','Flight','3');

alter table bookings
drop column FareQuotes

alter table bookings
add FareQuote as ServiceFees+ServiceTax


alter table Bookings 
drop column BonusPointEarnDate

alter table Bookings 
drop column BonusPointsEarned

select * from Bookings

alter table bookings
add BonusPointsEarned as 0.1*CalculatedFare;

alter table bookings
add BonusPointEarnDate as BookingDate;


INSERT INTO Bookings  VALUES (1,110,5,5,1,'07/23/2017','','',1);

INSERT INTO Bookings  VALUES (2,400,5,10,2,'09/11/2017',1);
INSERT INTO Bookings  VALUES (3,300,15,10,2,'09/01/2017',1);
INSERT INTO Bookings  VALUES (4,150,5,5,3,'10/09/2017',2);
INSERT INTO Bookings  VALUES (5,500,15,15,4,'11/22/2017',2);
INSERT INTO Bookings  VALUES (6,225,2,22,5,'10/25/2017',2);
INSERT INTO Bookings  VALUES (7,100,12,2,7,'09/24/2017',3);
INSERT INTO Bookings  VALUES (8,150,10,1,10,'09/28/2017',3);
INSERT INTO Bookings  VALUES (9,350,10,5,3,'10/22/2017',3);
INSERT INTO Bookings  VALUES (10,400,10,10,2,'12/25/2017',4);
INSERT INTO Bookings  VALUES (11,111,1,1,6,'11/22/2017',4);
INSERT INTO Bookings  VALUES (12,450,10,5,8,'01/01/2018',4);


--FareRuleCar

select * from FareRuleCar;


INSERT INTO FareRuleCar (FareRuleCode,NoOfMiles,CarInsurance) VALUES ('4',50,'Y');
INSERT INTO FareRuleCar (FareRuleCode,NoOfMiles,CarInsurance) VALUES ('5',100,'Y');


--FareRuleBus
select * from FareRuleBus;

INSERT INTO FareRuleBus VALUES ('6','Premium','Single');
INSERT INTO FareRuleBus VALUES ('7','Standard','Return');
INSERT INTO FareRuleBus VALUES ('8','Sleeper','Single');

--FareRuleFlight
select * from FareRuleFlight;

INSERT INTO FareRuleFlight (FareRuleCode,NoOfPassengers,MealPreference) VALUES ('9',2,'Special');
INSERT INTO FareRuleFlight (FareRuleCode,NoOfPassengers,MealPreference) VALUES ('10',2,'Luxury');


--Bus

ALTER TABLE dbo.Bus
ALTER COLUMN Description varchar(50);


INSERT INTO Bus VALUES (1,'BOSNYC','Boston to New York',11,5,'6');
INSERT INTO Bus VALUES (2,'BOSHT','Boston to Connecticut',11,8,'7');
INSERT INTO Bus VALUES (3,'NAPO','New Hampshire to Maine',14,10,'8');
INSERT INTO Bus VALUES (4,'SHLV','San Jose to Las Vegas',2,25,'6');
INSERT INTO Bus VALUES (5,'NYCTMP','New York to Tampa',12,15,'8');
INSERT INTO Bus VALUES (6,'ALDA','Atlantic City to Dallas',19,'12','6');
INSERT INTO Bus VALUES (7,'ORLV','Orlando to Las Vegas',18,10,'8');
INSERT INTO Bus VALUES (8,'HTNYC','Hartford to New York',13,15,'7');
INSERT INTO Bus VALUES (9,'DAOR','Dallas to Orlando',20,12,'7');
INSERT INTO Bus VALUES (10,'NYCBOS','New York to Boston',12,20,'6');


-- Bus Seat Resolved

ALTER TABLE BusBooking   
DROP CONSTRAINT BusSeat_BusBooking_FK1

ALTER TABLE BusSeat   
DROP CONSTRAINT BusSeat_PK

alter TABLE BusSeat   
alter column BusCode int not null

Alter table BusSeat
Add  PRIMARY KEY CLUSTERED ( SeatCode, BusCode)

Alter table BusSeat
add Foreign key (BusCode) REFERENCES Bus(BusCode)

INSERT INTO BusSeat  VALUES (1,'Y',1);
INSERT INTO BusSeat  VALUES (1,'Y',2);
INSERT INTO BusSeat  VALUES (1,'Y',3);
INSERT INTO BusSeat  VALUES (1,'Y',4);
INSERT INTO BusSeat  VALUES (1,'Y',5);
INSERT INTO BusSeat  VALUES (1,'Y',6);
INSERT INTO BusSeat  VALUES (1,'Y',7);
INSERT INTO BusSeat  VALUES (1,'Y',8);
INSERT INTO BusSeat  VALUES (1,'Y',9);
INSERT INTO BusSeat  VALUES (1,'Y',10);
INSERT INTO BusSeat  VALUES (2,'Y',1);
INSERT INTO BusSeat  VALUES (2,'Y',2);
INSERT INTO BusSeat  VALUES (2,'Y',3);
INSERT INTO BusSeat  VALUES (2,'Y',4);
INSERT INTO BusSeat  VALUES (2,'Y',5);
INSERT INTO BusSeat  VALUES (2,'Y',6);
INSERT INTO BusSeat  VALUES (2,'Y',7);
INSERT INTO BusSeat  VALUES (2,'Y',8);
INSERT INTO BusSeat  VALUES (2,'Y',9);
INSERT INTO BusSeat  VALUES (2,'Y',10);
INSERT INTO BusSeat  VALUES (3,'Y',1);
INSERT INTO BusSeat  VALUES (3,'Y',2);
INSERT INTO BusSeat  VALUES (3,'Y',3);
INSERT INTO BusSeat  VALUES (3,'Y',4);
INSERT INTO BusSeat  VALUES (3,'Y',5);
INSERT INTO BusSeat  VALUES (3,'Y',6);
INSERT INTO BusSeat  VALUES (3,'Y',7);
INSERT INTO BusSeat  VALUES (3,'Y',8);
INSERT INTO BusSeat  VALUES (3,'Y',9);
INSERT INTO BusSeat  VALUES (3,'Y',10);
INSERT INTO BusSeat  VALUES (4,'Y',1);
INSERT INTO BusSeat  VALUES (4,'Y',2);
INSERT INTO BusSeat  VALUES (4,'Y',3);
INSERT INTO BusSeat  VALUES (4,'Y',4);
INSERT INTO BusSeat  VALUES (4,'Y',5);
INSERT INTO BusSeat  VALUES (4,'Y',6);
INSERT INTO BusSeat  VALUES (4,'Y',7);
INSERT INTO BusSeat  VALUES (4,'Y',8);
INSERT INTO BusSeat  VALUES (4,'Y',9);
INSERT INTO BusSeat  VALUES (4,'Y',10);
INSERT INTO BusSeat  VALUES (5,'Y',1);
INSERT INTO BusSeat  VALUES (5,'Y',2);
INSERT INTO BusSeat  VALUES (5,'Y',3);
INSERT INTO BusSeat  VALUES (5,'Y',4);
INSERT INTO BusSeat  VALUES (5,'Y',5);
INSERT INTO BusSeat  VALUES (5,'Y',6);
INSERT INTO BusSeat  VALUES (5,'Y',7);
INSERT INTO BusSeat  VALUES (5,'Y',8);
INSERT INTO BusSeat  VALUES (5,'Y',9);
INSERT INTO BusSeat  VALUES (5,'Y',10);
INSERT INTO BusSeat  VALUES (6,'Y',1);
INSERT INTO BusSeat  VALUES (6,'Y',2);
INSERT INTO BusSeat  VALUES (6,'Y',3);
INSERT INTO BusSeat  VALUES (6,'Y',4);
INSERT INTO BusSeat  VALUES (6,'Y',5);
INSERT INTO BusSeat  VALUES (6,'Y',6);
INSERT INTO BusSeat  VALUES (6,'Y',7);
INSERT INTO BusSeat  VALUES (6,'Y',8);
INSERT INTO BusSeat  VALUES (6,'Y',9);
INSERT INTO BusSeat  VALUES (6,'Y',10);
INSERT INTO BusSeat  VALUES (7,'Y',1);
INSERT INTO BusSeat  VALUES (7,'Y',2);
INSERT INTO BusSeat  VALUES (7,'Y',3);
INSERT INTO BusSeat  VALUES (7,'Y',4);
INSERT INTO BusSeat  VALUES (7,'Y',5);
INSERT INTO BusSeat  VALUES (7,'Y',6);
INSERT INTO BusSeat  VALUES (7,'Y',7);
INSERT INTO BusSeat  VALUES (7,'Y',8);
INSERT INTO BusSeat  VALUES (7,'Y',9);
INSERT INTO BusSeat  VALUES (7,'Y',10);
INSERT INTO BusSeat  VALUES (8,'Y',1);
INSERT INTO BusSeat  VALUES (8,'Y',2);
INSERT INTO BusSeat  VALUES (8,'Y',3);
INSERT INTO BusSeat  VALUES (8,'Y',4);
INSERT INTO BusSeat  VALUES (8,'Y',5);
INSERT INTO BusSeat  VALUES (8,'Y',6);
INSERT INTO BusSeat  VALUES (8,'Y',7);
INSERT INTO BusSeat  VALUES (8,'Y',8);
INSERT INTO BusSeat  VALUES (8,'Y',9);
INSERT INTO BusSeat  VALUES (8,'Y',10);
INSERT INTO BusSeat  VALUES (9,'Y',1);
INSERT INTO BusSeat  VALUES (9,'Y',2);
INSERT INTO BusSeat  VALUES (9,'Y',3);
INSERT INTO BusSeat  VALUES (9,'Y',4);
INSERT INTO BusSeat  VALUES (9,'Y',5);
INSERT INTO BusSeat  VALUES (9,'Y',6);
INSERT INTO BusSeat  VALUES (9,'Y',7);
INSERT INTO BusSeat  VALUES (9,'Y',8);
INSERT INTO BusSeat  VALUES (9,'Y',9);
INSERT INTO BusSeat  VALUES (9,'Y',10);
INSERT INTO BusSeat  VALUES (10,'Y',1);
INSERT INTO BusSeat  VALUES (10,'Y',2);
INSERT INTO BusSeat  VALUES (10,'Y',3);
INSERT INTO BusSeat  VALUES (10,'Y',4);
INSERT INTO BusSeat  VALUES (10,'Y',5);
INSERT INTO BusSeat  VALUES (10,'Y',6);
INSERT INTO BusSeat  VALUES (10,'Y',7);
INSERT INTO BusSeat  VALUES (10,'Y',8);
INSERT INTO BusSeat  VALUES (10,'Y',9);
INSERT INTO BusSeat  VALUES (10,'Y',10);


alter table Class
add BaseFare int 

INSERT INTO Class VALUES ('1','Business',25,400);
INSERT INTO Class VALUES ('2','FirstClass',50,200);
INSERT INTO Class VALUES ('3','Economy',75,100);




CREATE TABLE [dbo].[Flight_class] (
[ClassCode] VARCHAR(10)  NOT NULL  
, [FlightCode] INTEGER  NOT NULL  
)


ALTER TABLE [dbo].[Flight_class] ADD CONSTRAINT [Flight_class_PK] PRIMARY KEY CLUSTERED (
[ClassCode]
, [FlightCode]
)



-- Data of Fligh_Class

INSERT INTO FlightClass  VALUES (1,'1');
INSERT INTO FlightClass  VALUES (1,'2');
INSERT INTO FlightClass  VALUES (1,'3');
INSERT INTO FlightClass  VALUES (2,'1');
INSERT INTO FlightClass  VALUES (2,'2');
INSERT INTO FlightClass  VALUES (2,'3');
INSERT INTO FlightClass  VALUES (3,'1');
INSERT INTO FlightClass  VALUES (3,'2');
INSERT INTO FlightClass  VALUES (3,'3');


INSERT INTO FlightClass  VALUES ('1',4);
INSERT INTO FlightClass  VALUES ('2',4);
INSERT INTO FlightClass  VALUES ('3',4);
INSERT INTO FlightClass  VALUES ('1',5);
INSERT INTO FlightClass  VALUES ('2',5);
INSERT INTO FlightClass  VALUES ('3',5);
INSERT INTO FlightClass  VALUES ('1',6);
INSERT INTO FlightClass  VALUES ('2',6);
INSERT INTO FlightClass  VALUES ('3',6);
INSERT INTO FlightClass  VALUES ('1',7);
INSERT INTO FlightClass  VALUES ('2',7);
INSERT INTO FlightClass  VALUES ('3',7);
INSERT INTO FlightClass  VALUES ('1',8);
INSERT INTO FlightClass  VALUES ('2',8);
INSERT INTO FlightClass  VALUES ('3',8);
INSERT INTO FlightClass  VALUES ('1',9);
INSERT INTO FlightClass  VALUES ('2',9);
INSERT INTO FlightClass  VALUES ('3',9);
INSERT INTO FlightClass  VALUES ('1',10);
INSERT INTO FlightClass  VALUES ('2',10);
INSERT INTO FlightClass  VALUES ('3',10);



-- Seat Class

INSERT INTO Seat  VALUES ('1',1,'Y');
INSERT INTO Seat  VALUES ('1',2,'Y');
INSERT INTO Seat  VALUES ('1',3,'Y');
INSERT INTO Seat  VALUES ('1',4,'Y');
INSERT INTO Seat  VALUES ('1',5,'Y');
INSERT INTO Seat  VALUES ('1',6,'Y');
INSERT INTO Seat  VALUES ('1',7,'Y');
INSERT INTO Seat  VALUES ('1',8,'Y');
INSERT INTO Seat  VALUES ('1',9,'Y');
INSERT INTO Seat  VALUES ('1',10,'Y');
INSERT INTO Seat  VALUES ('2',1,'Y');
INSERT INTO Seat  VALUES ('2',2,'Y');
INSERT INTO Seat  VALUES ('2',3,'Y');
INSERT INTO Seat  VALUES ('2',4,'Y');
INSERT INTO Seat  VALUES ('2',5,'Y');
INSERT INTO Seat  VALUES ('2',6,'Y');
INSERT INTO Seat  VALUES ('2',7,'Y');
INSERT INTO Seat  VALUES ('2',8,'Y');
INSERT INTO Seat  VALUES ('2',9,'Y');
INSERT INTO Seat  VALUES ('2',10,'Y');
INSERT INTO Seat  VALUES ('2',11,'Y');
INSERT INTO Seat  VALUES ('2',12,'Y');
INSERT INTO Seat  VALUES ('2',13,'Y');
INSERT INTO Seat  VALUES ('2',14,'Y');
INSERT INTO Seat  VALUES ('2',15,'Y');
INSERT INTO Seat  VALUES ('3',1,'Y');
INSERT INTO Seat  VALUES ('3',2,'Y');
INSERT INTO Seat  VALUES ('3',3,'Y');
INSERT INTO Seat  VALUES ('3',4,'Y');
INSERT INTO Seat  VALUES ('3',5,'Y');
INSERT INTO Seat  VALUES ('3',6,'Y');
INSERT INTO Seat  VALUES ('3',7,'Y');
INSERT INTO Seat  VALUES ('3',8,'Y');
INSERT INTO Seat  VALUES ('3',9,'Y');
INSERT INTO Seat  VALUES ('3',10,'Y');
INSERT INTO Seat  VALUES ('3',11,'Y');
INSERT INTO Seat  VALUES ('3',12,'Y');
INSERT INTO Seat  VALUES ('3',13,'Y');
INSERT INTO Seat  VALUES ('3',14,'Y');
INSERT INTO Seat  VALUES ('3',15,'Y');
INSERT INTO Seat  VALUES ('3',16,'Y');
INSERT INTO Seat  VALUES ('3',17,'Y');
INSERT INTO Seat  VALUES ('3',18,'Y');
INSERT INTO Seat  VALUES ('3',19,'Y');
INSERT INTO Seat  VALUES ('3',20,'Y');



-- Hotel Booking data

INSERT INTO HotelBooking  VALUES (1,'1',1,'07/21/2017','07/23/2017',1,1);
INSERT INTO HotelBooking  VALUES (2,'13',4,'08/08/2017','09/12/2017',4,2);
INSERT INTO HotelBooking  VALUES (3,'2',5,'08/17/2017','08/22/2017',5,2);

INSERT INTO HotelBooking  VALUES (16,'11',5,'09/27/2017','09/29/2017',4,2);
INSERT INTO HotelBooking  VALUES (20,'12',5,'10/09/2017','10/12/2017',1,1);
INSERT INTO HotelBooking  VALUES (24,'2',5,'10/27/2017','10/29/2017',2,1);
INSERT INTO HotelBooking  VALUES (25,'13',5,'12/11/2017','12/12/2017',3,1);
INSERT INTO HotelBooking  VALUES (28,'2',5,'08/07/2017','08/09/2017',2,1);



-- CarBooking Data

INSERT INTO CarBooking  VALUES (4,'4',2,'08/08/2017','08/10/2017');
INSERT INTO CarBooking  VALUES (5,'4',3,'09/15/2017','09/19/2017');
INSERT INTO CarBooking  VALUES (6,'5',10,'09/09/2017','09/09/2017');

INSERT INTO CarBooking  VALUES (13,'4',6,'08/08/2016','08/10/2016');
INSERT INTO CarBooking  VALUES (14,'5',1,'09/15/2017','09/19/2017');
INSERT INTO CarBooking  VALUES (18,'5',10,'09/09/2016','09/09/2016');
INSERT INTO CarBooking  VALUES (21,'4',4,'06/19/2012','06/29/2012');
INSERT INTO CarBooking  VALUES (23,'5',5,'09/09/2015','09/09/2015');
INSERT INTO CarBooking  VALUES (26,'5',9,'09/09/2017','09/10/2017');
INSERT INTO CarBooking  VALUES (29,'5',1,'08/19/2016','08/25/2016');

-- BusBooking Data

INSERT INTO BusBooking  VALUES (7,'8',2,'08/20/2017',1);
INSERT INTO BusBooking  VALUES (8,'7',4,'09/10/2017',2);
INSERT INTO BusBooking  VALUES (9,'6',5,'08/21/2017',4);

INSERT INTO BusBooking  VALUES (17,'8',1,'12/30/2016',5);
INSERT INTO BusBooking  VALUES (22,'7',3,'09/10/2014',6);
INSERT INTO BusBooking  VALUES (27,'6',6,'06/21/2017',7);



-- FlightBooking Data

INSERT INTO FlightBooking  VALUES (10,'9',2,1,'y');
INSERT INTO FlightBooking  VALUES (11,'10',4,2,'y');
INSERT INTO FlightBooking  VALUES (12,'9',5,4,'y');

INSERT INTO FlightBooking  VALUES (15,'9',1,11,'y');
INSERT INTO FlightBooking  VALUES (19,'10',3,12,'y');
INSERT INTO FlightBooking  VALUES (30,'9',6,15,'y');
INSERT INTO FlightBooking  VALUES (31,'9',8,6,'y');
INSERT INTO FlightBooking  VALUES (32,'10',7,20,'y');



ALTER TABLE City
ADD CONSTRAINT City_NoDuplicateValues UNIQUE (CityName);

ALTER TABLE State
ADD CONSTRAINT State_NoDuplicateValues UNIQUE (StateName);

CREATE TRIGGER MyTrigger ON dbo.MyTable 
AFTER INSERT 
AS if exists ( select * from table t inner join inserted i on i.name=t.name and i.date=t.date and i.id <> t.id) 
begin 
rollback 
RAISERROR ('Duplicate Data', 16, 1); 
end 
go

--Search Query Results
CREATE PROCEDURE SearchQueryProc
	@SearchType varchar(10),
	@StartLocation varchar(50),
	@EndLocation varchar(50),
	@StartTime DATETIME,
	@EndTime DATETIME,
	@NoOfAdults INTEGER 
AS
BEGIN
	--DECLARE @SelectedType varchar(10);
	--SET @SelectedType = '';

	DECLARE @counter INT;
	SET @counter = 0;

	Select @counter = COUNT(so.ServiceCode)
	from ServicesOffered so
	JOIN ServiceType st
	ON so.ServiceType = st.ServiceType
	WHERE st.ServiceDesc= 'Hotel';

	PRINT @counter;

	WHILE @counter >0

		BEGIN 
				select * from HotelListings;

				select h.HotelName from HotelListings h
				JOIN ServicesOffered so
				ON so.ServiceCode = h.ServiceCode				 
				JOIN ServiceType st
				ON so.ServiceType = st.ServiceType
				WHERE st.ServiceDesc = 'Hotel' AND h.AvailabilityStartDate = '08/12/2017' AND h.AvailabilityEndDate = '12/20/2017';
		END

	
	
END

ALTER TABLE dbo.DebitCardPayment
ALTER COLUMN CardNumber varchar(16);

ALTER TABLE DebitCardPayment
ADD CardNumber2 varbinary(250);

UPDATE DebitCardPayment
SET CardNumber2 = CONVERT(varbinary(MAX),CardNumber);

ALTER TABLE DebitCardPayment
DROP COLUMN CardNumber


sp_RENAME 'DebitCardPayment.[CardNumber2]' , 'CardNumber', 'COLUMN';

ALTER TABLE DebitCardPayment
ADD CardPin2 varbinary(250);

UPDATE DebitCardPayment
SET CardPin2 = CONVERT(varbinary(MAX),CardPin);

ALTER TABLE DebitCardPayment
DROP COLUMN CardPin


sp_RENAME 'DebitCardPayment.[CardPin2]' , 'CardPin', 'COLUMN';

ALTER TABLE DebitCardPayment
ADD CardCVV2 varbinary(250);

UPDATE DebitCardPayment
SET CardCVV2 = CONVERT(varbinary(MAX),CardCVV);

ALTER TABLE DebitCardPayment
DROP COLUMN CardCVV


sp_RENAME 'DebitCardPayment.[CardCVV2]' , 'CardCVV', 'COLUMN';



CREATE MASTER KEY
ENCRYPTION BY PASSWORD = 'Group3Password';

CREATE CERTIFICATE TestCertificate
WITH SUBJECT = 'MYProject Certificate',
EXPIRY_DATE = '2020-10-31';

CREATE SYMMETRIC KEY TestSymmetricKey
WITH ALGORITHM = AES_128
ENCRYPTION BY CERTIFICATE TestCertificate;

OPEN SYMMETRIC KEY TestSymmetricKey
DECRYPTION BY CERTIFICATE TestCertificate;



ALTER TABLE UserAccount
ADD password2 varbinary(250);

UPDATE UserAccount
SET password2 = CONVERT(varbinary(MAX),password);

ALTER TABLE UserAccount
DROP COLUMN password


sp_RENAME UserAccount.[password2] , Password, COLUMN;


INSERT INTO dbo.UserAccount VALUES (1,viragz18,EncryptByKey(Key_GUID(NTestSymmetricKey), convert(varbinary, PassTS1)));

INSERT INTO dbo.UserAccount VALUES (2,pank12,EncryptByKey(Key_GUID(NTestSymmetricKey), convert(varbinary, PassTS2)));

INSERT INTO dbo.UserAccount VALUES (3,priyaak,EncryptByKey(Key_GUID(NTestSymmetricKey), convert(varbinary, PassTS3)));

INSERT INTO dbo.UserAccount VALUES (4,ttejesh,EncryptByKey(Key_GUID(NTestSymmetricKey), convert(varbinary, PassTS4)));

INSERT INTO dbo.UserAccount VALUES (5,karan1991,EncryptByKey(Key_GUID(NTestSymmetricKey), convert(varbinary, PassTS5)));

INSERT INTO dbo.UserAccount VALUES (6,aka11,EncryptByKey(Key_GUID(NTestSymmetricKey), convert(varbinary, PassTS6)));

INSERT INTO dbo.UserAccount VALUES (7,suni123,EncryptByKey(Key_GUID(NTestSymmetricKey), convert(varbinary, PassTS7)));

INSERT INTO dbo.UserAccount VALUES (8,rishijain,EncryptByKey(Key_GUID(NTestSymmetricKey), convert(varbinary, PassTS8)));

INSERT INTO dbo.UserAccount VALUES (9,lucy2001,EncryptByKey(Key_GUID(NTestSymmetricKey), convert(varbinary, PassTS9)));

INSERT INTO dbo.UserAccount VALUES (10,james007,EncryptByKey(Key_GUID(NTestSymmetricKey), convert(varbinary, PassTS10)));

update UserAccount
set Password = EncryptByKey(Key_GUID(N'TestSymmetricKey'), convert(varbinary, 'PassTS1'))
where UserID= 1

update UserAccount
set Password = EncryptByKey(Key_GUID(N'TestSymmetricKey'), convert(varbinary, 'PassTS2'))
where UserID= 2

update UserAccount
set Password = EncryptByKey(Key_GUID(N'TestSymmetricKey'), convert(varbinary, 'PassTS3'))
where UserID= 3

update UserAccount
set Password = EncryptByKey(Key_GUID(N'TestSymmetricKey'), convert(varbinary, 'PassTS4'))
where UserID= 4

update UserAccount
set Password = EncryptByKey(Key_GUID(N'TestSymmetricKey'), convert(varbinary, 'PassTS5'))
where UserID= 5

update UserAccount
set Password = EncryptByKey(Key_GUID(N'TestSymmetricKey'), convert(varbinary, 'PassTS6'))
where UserID= 6

update UserAccount
set Password = EncryptByKey(Key_GUID(N'TestSymmetricKey'), convert(varbinary, 'PassTS7'))
where UserID= 7

update UserAccount
set Password = EncryptByKey(Key_GUID(N'TestSymmetricKey'), convert(varbinary, 'PassTS8'))
where UserID= 8


update UserAccount
set Password = EncryptByKey(Key_GUID(N'TestSymmetricKey'), convert(varbinary, 'PassTS9'))
where UserID= 9

update UserAccount
set Password = EncryptByKey(Key_GUID(N'TestSymmetricKey'), convert(varbinary, 'PassTS10'))
where UserID= 10

OPEN SYMMETRIC KEY TestSymmetricKey
DECRYPTION BY CERTIFICATE TestCertificate;


--Payment
select  * from Payment;

ALTER TABLE dbo.Payment
ALTER COLUMN Type varchar(50);

ALTER TABLE dbo.Payment
ALTER COLUMN Category varchar(50);

INSERT INTO Payment (PaymentID,Type,Category,Amount,PaymentDate,BookingID) VALUES (1,'CardPayment','DebitCardPayment','110','07/23/2017',1);



delete from DebitCardPayment


-- credit card table verification code

-- credit card code

ALTER TABLE dbo.CreditCardPayment
ALTER COLUMN CardNumber varchar(16);

ALTER TABLE CreditCardPayment
ADD CardNumber2 varbinary(250);

UPDATE CreditCardPayment
SET CardNumber2 = CONVERT(varbinary(MAX),CardNumber);

ALTER TABLE CreditCardPayment
DROP COLUMN CardNumber


sp_RENAME 'CreditCardPayment.[CardNumber2]' , 'CardNumber', 'COLUMN';


ALTER TABLE CreditCardPayment
ADD CardCVV2 varbinary(250);

UPDATE CreditCardPayment
SET CardCVV2 = CONVERT(varbinary(MAX),CardCVV);

ALTER TABLE CreditCardPayment
DROP COLUMN CardCVV


sp_RENAME 'CreditCardPayment.[CardCVV2]' , 'CardCVV', 'COLUMN';

-- verifying the data of Account Pay

ALTER TABLE dbo.AccountPay
ALTER COLUMN AccountNumber varchar(16);

ALTER TABLE AccountPay
ADD AccountNumber2 varbinary(250);

UPDATE AccountPay
SET AccountNumber2 = CONVERT(varbinary(MAX),AccountNumber);

ALTER TABLE AccountPay
DROP COLUMN AccountNumber


sp_RENAME 'AccountPay.[AccountNumber2]' , 'AccountNumber', 'COLUMN';

-- verifying the data in the paypal table



ALTER TABLE PayPal
ADD PayPalAccountNo2 varbinary(250);

UPDATE PayPal
SET PayPalAccountNo2 = CONVERT(varbinary(MAX),PayPalAccountNo);

ALTER TABLE PayPal
DROP COLUMN PayPalAccountNo


sp_RENAME 'PayPal.[PayPalAccountNo2]' , 'PayPalAccountNo', 'COLUMN';


ALTER TABLE PayPal
ADD PayPalUserName2 varbinary(250);

UPDATE PayPal
SET PayPalUserName2 = CONVERT(varbinary(MAX),PayPalUserName);

ALTER TABLE PayPal
DROP COLUMN PayPalUserName


sp_RENAME 'PayPal.[PayPalUserName2]' , 'PayPalUserName', 'COLUMN';




ALTER TABLE PayPal
ADD PayPalPasseord2 varbinary(250);

UPDATE PayPal
SET PayPalPasseord2 = CONVERT(varbinary(MAX),PayPalPassword);

ALTER TABLE PayPal
DROP COLUMN PayPalPassword


sp_RENAME 'PayPal.[PayPalPasseord2]' , 'PayPalPassword', 'COLUMN';

-- Payment Data


INSERT INTO Payment  VALUES (2,'PayPal','PayPal',222,'09/01/2016',2);
INSERT INTO Payment  VALUES (3,'CardPayment','CreditCardPayment',330,'11/25/2016',3);
INSERT INTO Payment  VALUES (4,'BankAccount','AccountPay',100,'05/16/2017',4);
INSERT INTO Payment  VALUES (5,'PayPal','PayPal',500,'08/22/2017',5);
INSERT INTO Payment  VALUES (6,'CardPayment','DebitCardPayment',1000,'03/21/2017',6);
INSERT INTO Payment  VALUES (7,'BankAccount','AccountPay',200,'09/19/2017',7);
INSERT INTO Payment  VALUES (8,'CardPayment','CreditCardPayment',150,'10/02/2016',8);
INSERT INTO Payment  VALUES (9,'CardPayment','CreditCardPayment',300,'01/26/2017',9);
INSERT INTO Payment  VALUES (10,'BankAccount','AccountPay',250,'06/29/2017',10);
INSERT INTO Payment  VALUES (11,'BankAccount','AccountPay',400,'05/16/2017',11);
INSERT INTO Payment  VALUES (12,'PayPal','PayPal',120,'01/26/2017',12);


-- debit card entry
INSERT INTO DebitCardPayment VALUES (1,'09/30/2018','2115',EncryptByKey(Key_GUID(N'TestSymmetricKey'), convert(varbinary, '5019008719012976')),EncryptByKey(Key_GUID(N'TestSymmetricKey'), convert(varbinary, '1234')),EncryptByKey(Key_GUID(N'TestSymmetricKey'), convert(varbinary, '675')));
INSERT INTO DebitCardPayment VALUES (6,'09/30/2018','2115',EncryptByKey(Key_GUID(N'TestSymmetricKey'), convert(varbinary, '20190087146273242')),EncryptByKey(Key_GUID(N'TestSymmetricKey'), convert(varbinary, '7777')),EncryptByKey(Key_GUID(N'TestSymmetricKey'), convert(varbinary, '112')));


-- credit card entry

INSERT INTO CreditCardPayment  VALUES (3,'12/12/2019',21200,EncryptByKey(Key_GUID(N'TestSymmetricKey'), convert(varbinary, '1234989727480283')),EncryptByKey(Key_GUID(N'TestSymmetricKey'), convert(varbinary, '333')));
INSERT INTO CreditCardPayment  VALUES (8,'09/09/2018',24902,EncryptByKey(Key_GUID(N'TestSymmetricKey'), convert(varbinary, '947364898374905')),EncryptByKey(Key_GUID(N'TestSymmetricKey'), convert(varbinary, '455')));
INSERT INTO CreditCardPayment  VALUES (9,'02/12/2019',25033,EncryptByKey(Key_GUID(N'TestSymmetricKey'), convert(varbinary, '533364898374954')),EncryptByKey(Key_GUID(N'TestSymmetricKey'), convert(varbinary, '708')));


-- Account Pay entries

alter table AccountPay
alter column AccountEmail varchar(20)


INSERT INTO AccountPay  VALUES (4,'12345678','viru@xyz.com',EncryptByKey(Key_GUID(N'TestSymmetricKey'), convert(varbinary, '1234567890')));
INSERT INTO AccountPay  VALUES (7,'48493985','chirag@at.com',EncryptByKey(Key_GUID(N'TestSymmetricKey'), convert(varbinary, '1248503759')));
INSERT INTO AccountPay  VALUES (10,'34543456','richi@asd.com',EncryptByKey(Key_GUID(N'TestSymmetricKey'), convert(varbinary, '2819375949')));
INSERT INTO AccountPay  VALUES (11,'75454324','sank@pay.com',EncryptByKey(Key_GUID(N'TestSymmetricKey'), convert(varbinary, '2849375940')));

-- PayPal entries


INSERT INTO PayPal  VALUES ('2',EncryptByKey(Key_GUID(N'TestSymmetricKey'), convert(varbinary, '5555')),EncryptByKey(Key_GUID(N'TestSymmetricKey'), convert(varbinary, 'viru18')),EncryptByKey(Key_GUID(N'TestSymmetricKey'), convert(varbinary, 'gameof')));
INSERT INTO PayPal  VALUES ('5',EncryptByKey(Key_GUID(N'TestSymmetricKey'), convert(varbinary, '6666')),EncryptByKey(Key_GUID(N'TestSymmetricKey'), convert(varbinary, 'chirag291')),EncryptByKey(Key_GUID(N'TestSymmetricKey'), convert(varbinary, 'thrones')));
INSERT INTO PayPal  VALUES ('12',EncryptByKey(Key_GUID(N'TestSymmetricKey'), convert(varbinary, '7777')),EncryptByKey(Key_GUID(N'TestSymmetricKey'), convert(varbinary, 'sanket22')),EncryptByKey(Key_GUID(N'TestSymmetricKey'), convert(varbinary, 'winter')));

--Views to return bookings
--Showing Booked Hotels 
CREATE VIEW [BOOKED_HOTELS] AS
SELECT t.TicketID, t.BookingID, p.Name, p.DOB, p.Gender, hl.HotelName, 
hb.BookingStartDate, hb.BookingEndDate, h.HotelCityLocationCode,
c.CityName, s.StateName, cn.CountryName, b.UserID
FROM Ticket t
JOIN Bookings b
ON t.BookingID = b.BookingID
JOIN BookingsPassenger bp
ON t.BookingID = bp.BookingID
JOIN Passenger p
ON bp.PassengerID = p.PassengerID
JOIN HotelBooking hb
ON b.BookingID = hb.BookingID
JOIN HotelListings hl
ON hb.HotelCode = hl.HotelCode
JOIN Hotel h
ON hb.HotelCode = h.HotelCode
JOIN Location l
ON h.HotelCityLocationCode = l.LocationCode
JOIN City c
ON l.CityCode = c.CityCode
JOIN State s
ON l.StateCode = s.StateCode
JOIN Country cn
ON l.CountryCode = cn.CountryCode

select * from   [BOOKED_HOTELS]

--Showing Booked Flights 
CREATE VIEW [BOOKED_FLIGHTS] AS
SELECT distinct t.TicketID, t.BookingID, b.BookingDate, p.Name, p.DOB, p.Gender, f.AirlineCode, f.AircraftName, 
fsl.DepartureDate, fsl.ArrivalDate, fsl.DepartureTime, fsl.ArrivalTime, f.SourceAirportCode, f.DestinationAirportCode,
a.Name AS [Airline Name], st.SeatCode, c.CityName, s.StateName, cn.CountryName, b.UserID
FROM Ticket t
JOIN Bookings b
ON t.BookingID = b.BookingID
JOIN BookingsPassenger bp
ON t.BookingID = bp.BookingID
JOIN Passenger p
ON bp.PassengerID = p.PassengerID
JOIN FlightBooking fb
ON b.BookingID = fb.BookingID
JOIN FlightScheduleListings fsl
ON fb.FlightCode = fsl.FlightCode
JOIN Flight f
ON fb.FlightCode = f.FlightCode
JOIN Airline a
ON f.AirlineCode = a.AirlineCode
JOIN Location l
ON f.SourceAirportCode = l.LocationCode
JOIN City c
ON l.CityCode = c.CityCode
JOIN State s
ON l.StateCode = s.StateCode
JOIN Country cn
ON l.CountryCode = cn.CountryCode
join Seat st 
on st.SeatCode= fb.SeatCode
join Class cl
on st.ClassCode=cl.ClassCode



drop view [BOOKED_FLIGHTS]

Select * from [BOOKED_FLIGHTS]

--Showing Booked Cars 
CREATE VIEW [BOOKED_CARS] AS
SELECT t.TicketID, t.BookingID, p.Name, p.DOB, p.Gender, ca.CarName, ca.CareModel, ca.PickupLocationCode, 
c.CityName, s.StateName, cn.CountryName, b.UserID
FROM Ticket t
JOIN Bookings b
ON t.BookingID = b.BookingID   -- 1-1
JOIN BookingsPassenger bp
ON t.BookingID = bp.BookingID    -- 1-1
JOIN Passenger p
ON bp.PassengerID = p.PassengerID  --1-Virag
JOIN CarBooking cb
ON b.BookingID = cb.BookingID    -- 
JOIN CarRentalListings crl
ON cb.CarCode = crl.CarCode
JOIN Car ca
ON cb.CarCode = ca.CarCode
JOIN Location l
ON ca.PickupLocationCode = l.LocationCode
JOIN City c
ON l.CityCode = c.CityCode
JOIN State s
ON l.StateCode = s.StateCode
JOIN Country cn
ON l.CountryCode = cn.CountryCode


select * from [BOOKED_CARS]

--Showing Booked Buses 
CREATE VIEW [BOOKED_BUSES] AS
SELECT t.TicketID, t.BookingID, p.Name, p.DOB, p.Gender, bs.Name AS [Bus Operator], bs.LocationCode, 
c.CityName, s.StateName, b.UserID
FROM Ticket t
JOIN Bookings b
ON t.BookingID = b.BookingID
JOIN BookingsPassenger bp
ON t.BookingID = bp.BookingID
JOIN Passenger p
ON bp.PassengerID = p.PassengerID
JOIN BusBooking bb
ON b.BookingID = bb.BookingID
JOIN Bus bs
ON bb.BusCode = bs.BusCode
JOIN Location l
ON bs.LocationCode = l.LocationCode
JOIN City c
ON l.CityCode = c.CityCode
JOIN State s
ON l.StateCode = s.StateCode

DROP view [BOOKED_BUSES]

select * from [BOOKED_BUSES]


--Procedures to retrieve respective bookings for a particular user
--Procedure to return booked hotels for a user
CREATE PROCEDURE [dbo].[Retrieve_User_Hotel_Bookings]
    @ID AS INT
AS
BEGIN

    DECLARE @BookingID int = 0;

    Select BookingID, UserID, Name, DOB, Gender, HotelName, BookingStartDate, BookingEndDate, CityName 
	FROM dbo.[BOOKED_HOTELS] 
    WHERE 
        UserID = @ID  
END

DROP PROCEDURE [Retrieve_User_Hotel_Bookings]

DECLARE @uID as int;
SET @uID = 3;
EXECUTE Retrieve_User_Hotel_Bookings @uID;




--Procedure to return booked flights for a user
CREATE PROCEDURE [dbo].[Retrieve_User_Flight_Bookings]
    @ID AS INT
AS
BEGIN

    DECLARE @BookingID int = 0;

    Select BookingID, UserID, Name, DOB, Gender, [Airline Name], SourceAirportCode, DepartureDate, DepartureTime, 
	DestinationAirportCode, ArrivalDate, ArrivalTime, SeatCode AS [Seat Number]
	FROM dbo.[BOOKED_FLIGHTS] 
    WHERE 
        UserID = @ID  
END

DECLARE @uID as int;
SET @uID = 1;
EXECUTE [Retrieve_User_Flight_Bookings] @uID;

DROP PROCEDURE [Retrieve_User_Flight_Bookings]


--Procedure to return booked cars for a user
CREATE PROCEDURE [dbo].[Retrieve_User_Car_Bookings]
    @ID AS INT
AS
BEGIN
  
    DECLARE @BookingID int = 0;

    Select BookingID, UserID, Name, DOB, Gender, CarName AS [Car Name], CareModel AS [Car Model], PickupLocationCode AS [Pickup Location]
	FROM dbo.[BOOKED_CARS] 
    WHERE 
        UserID = @ID  
END

DECLARE @uID as int;
SET @uID = 1;
EXECUTE [Retrieve_User_Car_Bookings] @uID;


--Procedure to return booked buses for a user
CREATE PROCEDURE [dbo].[Retrieve_User_Bus_Bookings]
    @ID AS INT
AS
BEGIN
   
    DECLARE @BookingID int = 0;

    Select BookingID, UserID, Name, DOB, Gender, [Bus Operator], LocationCode AS [Boarding Location]
	FROM dbo.[BOOKED_BUSES] 
    WHERE 
        UserID = @ID  
END

DECLARE @uID as int;
SET @uID = 1;
EXECUTE [Retrieve_User_Bus_Bookings] @uID;



--Ticket 
Insert into Ticket values (1, getdate(), 1);
Insert into Ticket values (2, getdate(), 3);
Insert into Ticket values (3, getdate(), 2);

Insert into Ticket values (4, getdate(), 4);
Insert into Ticket values (5, getdate(), 5);
Insert into Ticket values (6, getdate(), 6);
Insert into Ticket values (7, getdate(), 7);
Insert into Ticket values (8, getdate(), 8);
Insert into Ticket values (9, getdate(), 9);
Insert into Ticket values (10, getdate(), 10);
Insert into Ticket values (11, getdate(), 11);
Insert into Ticket values (12, getdate(), 12);


Insert into Ticket values (13, getdate(), 13);
Insert into Ticket values (14, getdate(), 14);
Insert into Ticket values (15, getdate(), 15);
Insert into Ticket values (16, getdate(), 16);
Insert into Ticket values (17, getdate(), 17);
Insert into Ticket values (18, getdate(), 18);
Insert into Ticket values (19, getdate(), 19);
Insert into Ticket values (20, getdate(), 20);
Insert into Ticket values (21, getdate(), 21);
Insert into Ticket values (22, getdate(), 22);



Insert into Ticket values (23, getdate(), 23);
Insert into Ticket values (24, getdate(), 24);
Insert into Ticket values (25, getdate(), 25);
Insert into Ticket values (26, getdate(), 26);
Insert into Ticket values (27, getdate(), 27);
Insert into Ticket values (28, getdate(), 28);
Insert into Ticket values (29, getdate(), 29);
Insert into Ticket values (30, getdate(), 30);
Insert into Ticket values (31, getdate(), 31);
Insert into Ticket values (32, getdate(), 32);






-- shopping cart data

INSERT INTO ShoppingCart  VALUES (1,1);
INSERT INTO ShoppingCart  VALUES (2,1);
INSERT INTO ShoppingCart  VALUES (3,1);
INSERT INTO ShoppingCart  VALUES (4,2);
INSERT INTO ShoppingCart  VALUES (5,2);
INSERT INTO ShoppingCart  VALUES (6,3);
INSERT INTO ShoppingCart  VALUES (7,3);
INSERT INTO ShoppingCart  VALUES (8,4);
INSERT INTO ShoppingCart  VALUES (9,4);
INSERT INTO ShoppingCart  VALUES (10,5);
INSERT INTO ShoppingCart  VALUES (11,5);
INSERT INTO ShoppingCart  VALUES (12,7);
INSERT INTO ShoppingCart  VALUES (13,8);
INSERT INTO ShoppingCart  VALUES (14,4);
INSERT INTO ShoppingCart  VALUES (15,3);
INSERT INTO ShoppingCart  VALUES (16,9);
INSERT INTO ShoppingCart  VALUES (17,10);
INSERT INTO ShoppingCart  VALUES (18,7);
INSERT INTO ShoppingCart  VALUES (19,3);
INSERT INTO ShoppingCart  VALUES (20,3);


-- Booking Passenger Data

INSERT INTO BookingsPassenger  VALUES (1,1);
INSERT INTO BookingsPassenger  VALUES (2,1);
INSERT INTO BookingsPassenger  VALUES (3,1);
INSERT INTO BookingsPassenger  VALUES (4,2);
INSERT INTO BookingsPassenger  VALUES (5,2);
INSERT INTO BookingsPassenger  VALUES (6,3);
INSERT INTO BookingsPassenger  VALUES (7,4);
INSERT INTO BookingsPassenger  VALUES (8,5);
INSERT INTO BookingsPassenger  VALUES (9,6);
INSERT INTO BookingsPassenger  VALUES (10,7);
INSERT INTO BookingsPassenger  VALUES (2,8);
INSERT INTO BookingsPassenger  VALUES (10,9);
INSERT INTO BookingsPassenger  VALUES (10,10);


INSERT INTO BookingsPassenger  VALUES (1,11);
INSERT INTO BookingsPassenger  VALUES (2,12);
INSERT INTO BookingsPassenger  VALUES (3,13);
INSERT INTO BookingsPassenger  VALUES (4,14);
INSERT INTO BookingsPassenger  VALUES (5,22);
INSERT INTO BookingsPassenger  VALUES (6,23);
INSERT INTO BookingsPassenger  VALUES (7,14);
INSERT INTO BookingsPassenger  VALUES (18,14);
INSERT INTO BookingsPassenger  VALUES (19,26);
INSERT INTO BookingsPassenger  VALUES (10,17);
INSERT INTO BookingsPassenger  VALUES (12,18);
INSERT INTO BookingsPassenger  VALUES (10,29);
INSERT INTO BookingsPassenger  VALUES (10,30);



ALTER TABLE dbo.BusBookingListings
ALTER COLUMN BusOperator varchar(50);



INSERT INTO BusBookingListings VALUES ('BUS001','MegaBus',1,'09/12/2017','3:12');
INSERT INTO BusBookingListings VALUES ('BUS002','BoltBus',2,'09/19/2017','1:22');
INSERT INTO BusBookingListings VALUES ('BUS003','Peter Pan',3,'08/24/2017','3:12');
INSERT INTO BusBookingListings VALUES ('BUS004','LimoLiner',4,'09/29/2017','1:24');
INSERT INTO BusBookingListings VALUES ('BUS005','Greyhound',5,'09/12/2017','4:13');
INSERT INTO BusBookingListings VALUES ('BUS006','Concord',6,'10/05/2017','8:22');
INSERT INTO BusBookingListings VALUES ('BUS007','Boston Express',7,'08/14/2017','9:44');
INSERT INTO BusBookingListings VALUES ('BUS008','Lucky Star',8,'09/30/2017','2:42');
INSERT INTO BusBookingListings VALUES ('BUS009','Max',9,'11/15/2017','4:12');
INSERT INTO BusBookingListings VALUES ('BUS010','Dattco',10,'09/18/2017','2:22');


-- FlightScheduling Data


INSERT INTO FlightScheduleListings  VALUES (1,'4:00','08/01/2017','23:12','08/02/2017','FLG001');
INSERT INTO FlightScheduleListings  VALUES (2,'9:00','08/08/2017','17:19','08/09/2017','FLG002');
INSERT INTO FlightScheduleListings  VALUES (3,'8:16','08/02/2017','11:10','08/03/2017','FLG003');
INSERT INTO FlightScheduleListings  VALUES (4,'12:10','08/07/2017','23:10','08/08/2017','FLG004');
INSERT INTO FlightScheduleListings  VALUES (5,'13:10','08/16/2017','9:00','08/17/2017','FLG005');
INSERT INTO FlightScheduleListings  VALUES (6,'22:20','08/23/2017','10:13','08/25/2017','FLG006');
INSERT INTO FlightScheduleListings  VALUES (7,'12:30','08/17/2017','17:00','08/19/2017','FLG007');
INSERT INTO FlightScheduleListings  VALUES (8,'9:30','08/30/2017','8:20','09/01/2017','FLG008');
INSERT INTO FlightScheduleListings  VALUES (9,'15:30','08/14/2017','7:00','08/15/2017','FLG009');
INSERT INTO FlightScheduleListings  VALUES (10,'7:45','08/28/2017','9:00','08/29/2017','FLG010');



INSERT INTO Bookings  VALUES (13,50,8,5,4,'08/27/2015',2);
INSERT INTO Bookings  VALUES (14,45,4,5,8,'02/16/2017',2);
INSERT INTO Bookings  VALUES (15,150,10,5,9,'03/13/2017',4);
INSERT INTO Bookings  VALUES (16,175,10,5,4,'06/12/2017',1);
INSERT INTO Bookings  VALUES (17,180,6,5,2,'11/09/2016',3);
INSERT INTO Bookings  VALUES (18,190,10,5,4,'12/31/2015',2);
INSERT INTO Bookings  VALUES (19,850,10,5,1,'01/26/2014',4);
INSERT INTO Bookings  VALUES (20,950,3,5,2,'04/24/2013',1);
INSERT INTO Bookings  VALUES (21,250,10,5,6,'05/08/2012',2);
INSERT INTO Bookings  VALUES (22,167,4,5,7,'07/01/2014',3);
INSERT INTO Bookings  VALUES (23,439,10,5,3,'09/04/2015',2);
INSERT INTO Bookings  VALUES (24,781,10,5,2,'10/17/2016',1);
INSERT INTO Bookings  VALUES (25,109,6,5,8,'04/23/2017',1);
INSERT INTO Bookings  VALUES (26,273,10,5,4,'05/09/2017',2);
INSERT INTO Bookings  VALUES (27,233,7,5,7,'06/08/2017',3);
INSERT INTO Bookings  VALUES (28,545,4,5,8,'07/06/2017',1);
INSERT INTO Bookings  VALUES (29,254,6,5,9,'08/14/2016',2);
INSERT INTO Bookings  VALUES (30,490,8,5,10,'09/15/2015',4);
INSERT INTO Bookings  VALUES (31,450,7,5,2,'08/21/2016',4);
INSERT INTO Bookings  VALUES (32,590,3,5,1,'03/11/2017',4);



--------

-- VIEWS


alter VIEW [RevenuePerYear] AS
SELECT SUM(b.CalculatedFare) as Revenue, year(b.BookingDate) as Year
FROM Bookings b
group by year(b.BookingDate)



SELECT * FROM [RevenuePerYear];

CREATE VIEW [Revenue by Service Type] AS
SELECT b.ServiceType as [Service Type], s.ServiceDesc as [Industry], sum(b.CalculatedFare) as [Revenue]
FROM Bookings b
JOIN ServiceType s
ON b.ServiceType = s.ServiceType
GROUP BY b.ServiceType, s.ServiceDesc

Select * from [Revenue by Service Type]


-- Pivot Reports

select ServiceType,
[2017] as Year2017,[2016]  as Year2016,[2015] as Year2015,[2014] as Year2014,[2013] as Year2013
from 
(Select  ServiceType,BookingID,year(BookingDate) as year from Bookings) SourceTable
pivot(
count( BookingID)
for 
year in
([2017],[2016],[2015],[2014],[2013])
)as PivotTable;
