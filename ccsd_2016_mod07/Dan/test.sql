/**TEST**/

CREATE TABLE rep
	(Rep_Num Char(2) Primary Key,
	Last_Name Char(15),
	First_Name Char(15),
	Street Char(15) NULL,
	City Char(15) NULL,
	State Char(2) NULL,
	Zip Char(5) NULL,
	Commission Decimal(7,2) NULL,
	Rate Decimal(3,2) NULL
	 );


 INSERT into rep
 values ('20', 'Kaiser', 'Valerie', '624 Randall', 'Grove', 'FL', '33321', 20542.50, 0.05);
 INSERT into rep
 values ('35', 'Hull', 'Richard', '532 Jackson', 'Sheldon', 'FL', '33553', 39216.00, 0.07);
 INSERT into rep
 values ('65', 'Perez', 'Juan', '1626 Taylor', 'Fillmore', 'FL', '33336', 23487.00, 0.05);
INSERT into rep (Rep_Num, Last_Name, First_Name )
values ('85','Perry', 'Tina') ;