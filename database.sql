CREATE DATABASE "W3schoolsDatabase"
ENCODING='UTF-8'
LC_COLLATE='tr_TR.UTF-8'
LC_CTYPE='tr_TR.UTF-8'
OWNER postgres
TEMPLATE=template0;
CREATE SCHEMA "User";
CREATE TABLE "Page" (
"Page_id"
SERIAL INTEGER NOT NULL,
"Subject_id" INTEGER ,
"Quizess_id" INTEGER ,
"Exercises_id"
INTEGER ,
"Examples_id"
INTEGER ,
"References_id"
INTEGER,
"Tutorıals_id" INTEGER,
"Certificate_id"
INTEGER,
"pageLeader_name" VARCHAR(40),
"note" VARCHAR(200),
PRIMARY KEY("Page_id"),
CONSTRAINT "PageFK1" FOREIGN KEY("Quizess_id") REFERENCES
"Quizess"("Quizess_id"),
CONSTRAINT "PageFK2" FOREIGN KEY("Exercises_id") REFERENCES
"Exercises"("Exercises_id"),
CONSTRAINT "PageFK3" FOREIGN KEY("Examples_id") REFERENCES
"Examples"("Examples_id"),
CONSTRAINT "PageFK4" FOREIGN KEY("References_id") REFERENCES
"References"("References_id"),
CONSTRAINT "PageFK5" FOREIGN KEY("Tutorıals_id") REFERENCES
"Tutorıals"("Tutorıals_id"),
CONSTRAINT "PageFK6" FOREIGN KEY("Certificate_id") REFERENCES
"Certificates"("Cerificate_id")
);
INSERT INTO
"Page"("Page_id","Subject_id","Quizess_id","Exercises_id","Examples_id","References_id","Tutor
ıals_id","pageLeader_name","Certificate_id","note",)
VALUES ("1","1",,,,,"1",,"Html-Page",,"Html tutorials bilgilerini içeren sayfa"),("2","1","2","2","2","2",,"Html-Page","1","Html-Quizess bilgilerini içeren sayfa"),
("3","4","3","3","3","3",,"Boostrap3-Page","20","Boostrap3 bilgilerini içeren sayfalar"),
("4","17",NULL,NULL,"4",NULL,NULL,"SQL-Page","1","SQL bExamples içeren sayfa"),
("5","11",NULL,"5",NULL,NULL,NULL,"C++-Page","1","C++ Exercies bilgilerini içeren sayfa"),
("6","6","6","NULL,NULL,"NULL,NULL,,"SASS-Page","NULL,"SASS bilgilerini içeren sayfa"),
("7","NULL,"NULL,""NULL,"NULL,"NULL,NULL,"Certifica-Page","1","Certifika bilgilerini
içeren sayfalar");
------------------------------------------------------------------------------------------------------------------------
--------------------------------------------
CREATE TABLE "Subject" (
"Subject_id" SERIAL INTEGER NOT NULL,
"Group_id" INTEGER NOT NULL,
"Subject_name"
VARCHAR(40) NOT NULL,
"Description" TEXT NOT NULL,
PRIMARY KEY("Subject_id"),
CONSTRAINT "SubjectFK1"" FOREIGN KEY("Group_id") REFERENCES
"Group"("Group_id"),
CONSTRAINT "SubjectUnique" UNIQUE("Subject_name")
);
INSERT INTO "Subject"("Subject_id","Group_id","Subject_name","Description")
VALUES ("1","10","HTML","Html konusunun içeren sayfalar"),
("2","10","CSS","CSS konusunun içeren sayfalar"),
("3","10","JAVASCRİPT","JAVASCRİPT konusunun içeren sayfalar"),
("4","20","BOOSTRAP3","BOOSTRAP3 konusunun içeren sayfalar"),
("5","20","BOOSTRAP4","BOOSTRAP4 konusunun içeren sayfalar"),
("6","20","SASS","SASS konusunun içeren sayfalar"),
("7","30","JQUERY","JQUERY konusunun içeren sayfalar"),
("8","30","REACT","REACT konusunun içeren sayfalar"),
("9","40","PYTHON","PYTHON konusunun içeren sayfalar"),
("10","40","JAVA","JAVA konusunun içeren sayfalar"),
("11","40","C++","C++ konusunun içeren sayfalar"),
("12","40","C#","C# konusunun içeren sayfalar"),
("13","40","R","R konusunun içeren sayfalar"),
("14","50","PHP","PHP konusunun içeren sayfalar"),
("15","50","NODEJS","NODEJS konusunun içeren sayfalar"),
("16","50","ASP","ASP konusunun içeren sayfalar"),
("17","60","SQL","SQL konusunun içeren sayfalar"),
("18","70","DATASCIENCE","DATASCIENCE konusunun içeren sayfalar"),
("19","80","XML","XML konusunun içeren sayfalar");
------------------------------------------------------------------------------------------------------------------------
-------------------------------------------
CREATE TABLE "Group" (
"Group_id" SERIAL INTEGER NOT NULL,
"Subject_id" INTEGER ,
"group_name" VARCHAR(40) NOT NULL,
"Description" TEXT NOT NULL,PRIMARY KEY("Group_id"),
CONSTRAINT "GroupFK1"" FOREIGN KEY("Subject_id") REFERENCES
"Subject"("Subject_id")
CONSTRAINT "GroupUnique" UNIQUE("group_name")
);
INSERT INTO "Group"("Group_id","Subject_id","group_name","Description")
VALUES ("10",NULL,"BASIC WEB DEVELOPMENT","BASIC WEB DEVELOPMENT
Grubu"),
("20",NULL,"CSS FRAMEWORK","CSS FRAMEWORK grubu"),
("30",NULL,"JS FRAMEWORK","JS FRAMEWORK grubu"),
("40",NULL,"PROGRAMMING","PROGRAMMING grubu"),
("50",NULL,"SERVER SCRIPTING","BOOSTRAP4 konusunun içeren sayfalar"),"),
("60",NULL,"DATABASE","SASS konusunun içeren sayfalar"),
("70",NULL,"DATA SCIENCE","JQUERY konusunun içeren sayfalar"),
("80",NULL,"XML","REACT konusunun içeren sayfalar");
------------------------------------------------------------------------------------------------------------------------
-------------------------------------------
CREATE TABLE "User"."Tutorials" (
"Tuturials_id" SERIAL INTEGER NOT NULL,
"Subject_id" INTEGER NOT NULL,
"tutorials_name"
VARCHAR(40) NOT NULL,
"tutorials_points"
INTEGER DEFAULT 0,
"Page_id"
INTEGER NOT NULL,
"Subject_intro"
TEXT NOT NULL,
"Defoult"
TEXT NOT NULL,
"Content"
TEXT NOT NULL,
PRIMARY KEY("Tuturials_id"),
CONSTRAINT "TutorialsFK1"" FOREIGN KEY("Subject_id") REFERENCES
"Subject"("Subject_id"),
CONSTRAINT "TutorialsFK2"" FOREIGN KEY("Page_id") REFERENCES
"Page"("Page_id"),
ON DELETE CASCADE,
ON UPDATE CASCADE
);
INSERT INTO
"User"."Tutorials"("Tuturials_id","Subject_id","tutorials_name","tutorials_points","Page_id","Subj
ect_intro","Defoult","Content")
VALUES ("1","1","HTML","BASIC WEB DEVELOPMENT Grubu",,"101","HTML is the
standard markup language for creating Web pages.",
"With our "Try it Yourself" editor, you can edit the HTML code and view the result","Aasda"),
("2","1","HTML-EDITORS",,"102","Web pages can be created and modified by using
professional HTML editors",
"A simple text editor is all you need to learn HTML."."sadsad"),
("3","2","CSS",,"103","CSS is the language we use to style an HTML document.","What is
CSS?","asdasd"),
("4","2","CSS-Syntax",,"104","A CSS rule-set consists of a selector and a declaration block",
"The selector points to the HTML element you want to style.","asdasd"),
("5","7","JQUERY",,"105","jQuery is a JavaScript Library.","jQuery is a JavaScript Library.","asdasd"),
("6","7","JQUERY-DOM-SET",,"106","jQuery - Set Content and Attributes","Set Content -
text(), html(), and val()","asdasd"),
--------------------------------------------------------------------------------------------------------------------
-----------------------------------------------
CREATE TABLE "Examples" (
"Examples_id"
SERIAL INTEGER NOT NULL,
"Page_id"
INTEGER NOT NULL,
"example_type"
VARCHAR(40) NOT NULL,
"Content"
TEXT NOT NULL,
PRIMARY KEY("Examples_id"),
CONSTRAINT "ExamplesFK1"" FOREIGN KEY("Page_id") REFERENCES
"Page"("Page_id"),
);
INSERT INTO "Examples"("Examples_id","Page_id","example_type","Content")
VALUES ("1","201","HTML Basic","<!DOCTYPE html>
<html>
<body>
<h1>My First Heading</h1>
<p>My first paragraph.</p>
</body>
</html>"),
("2","202","HTML Attributes","<!DOCTYPE html>
<html>
<body>
<h2>The href Attribute</h2>
<p>HTML links are defined with the a tag. The link address is specified in the href attribute:</p>
<a href="https://www.w3schools.com">Visit W3Schools</a>
</body>
</html>
"),
("3","204","JavaScript Examples","<!DOCTYPE html>
<html>
<head>
<script>
function myFunction() {
document.getElementById("demo").innerHTML = "Paragraph changed.";
}
</script>
</head><body>
<h2>JavaScript in Head</h2>
<p id="demo">A Paragraph.</p>
<button type="button" onclick="myFunction()">Try it</button>
</body>
</html> ");
("4","220","Python Examples","asdasdas");
------------------------------------------------------------------------------------------------------------------------
-------------------------------------------
CREATE TABLE "User"."Exercises" (
"Exercises_id"
SERIAL INTEGER NOT NULL,
"Page_id"
INTEGER NOT NULL,
"Subject_id" INTEGER NOT NULL,
"exercises_name"
TEXT NOT NULL,
"exercies_point"
INTEGER DEFAULT 0,
"Content"
TEXT NOT NULL,
PRIMARY KEY("Exercises_id"),
CONSTRAINT "ExercisesFK1" FOREIGN KEY("Page_id") REFERENCES
"Page"("Page_id"),
CONSTRAINT "ExercisesFK2" FOREIGN KEY("Subject_id") REFERENCES
"Subject"("Subject_id"),
CONSTRAINT "ExercisesUnique" UNIQUE("exercises_name")
);
INSERT INTO
"User"."Exercises"("Exercises_id","Page_id","Subject_id","exercises_name","exercies_point","Con
tent")
VALUES ("1","301","1","HTML Attributes",,"Add a tooltip to the paragraph below with the text
About W3Schools"),
("2","302","17","SQL SELLECT",,"Insert the missing statement to get all the columns from
the Customers table."),
("15","303","11","C++ Syntax",,"Insert the missing part of the code below to output Hello
World!"),
("20","304","4","Boostrap3Panels",,"Create a basic (default) Bootstrap Panel with the words:
Hello World"),
------------------------------------------------------------------------------------------------------------------------
-------------------------------------------
CREATE TABLE "References" (
"Reference_id"
SERIAL INTEGER NOT NULL,
"Page_id"
INTEGER NOT NULL,
"Subject_id" INTEGER NOT NULL,
"Reference_name" VARCHAR(40) NOT NULL,
"Content"
TEXT NOT NULL,
PRIMARY KEY("Reference_id"),CONSTRAINT "ReferencesFK1" FOREIGN KEY("Page_id") REFERENCES
"Page"("Page_id"),
CONSTRAINT "ReferencesFK2" FOREIGN KEY("Subject_id") REFERENCES
"Subject"("Subject_id")
CONSTRAINT "ReferencesUnique" UNIQUE("Reference_name")
);
INSERT INTO "References"("Reference_id","Page_id","Subject_id","Reference_name","Content")
VALUES ("1","401","1","HTML Reference",,"HTML has the ability to let events trigger actions in
a browser, like starting a JavaScript when a user clicks on an element."),
VALUES ("2","402","19","XML Reference",,"The DOM presents a document as a hierarchy of
node objects."),
VALUES ("3","403","1","PHP Reference",,"This section contains a complete PHP reference
documentation.");
------------------------------------------------------------------------------------------------------------------------
-------------------------------------------
CREATE TABLE "User"."Quizess" (
"Quizess_id" SERIAL INTEGER NOT NULL,
"Subject_id" INTEGER NOT NULL,
"quiz_points" INTEGER DEFAULT 0,
"question_amount" INTEGER NOT NULL,
PRIMARY KEY("Quizess_id")
CONSTRAINT "QuizessFK1" FOREIGN KEY("Subject_id") REFERENCES
"Subject"("Subject_id")
);
INSERT INTO "User"."Quizess"("Quizess_id","Subject_id","quiz_points","question_amount",)
VALUES ('1','1',,"25"),
('1','2',,"20"),
('1','10',,"10"),
('1','11',,"17"),
('1','12',,"18"),
------------------------------------------------------------------------------------------------------------------------
-------------------------------------------
CREATE TABLE "User"."Register" (
"register_id" SERIAL INTEGER NOT NULL,
"user_id"
INTEGER NOT NULL,
"register_date"
DATE NOT NULL,
"e-mail"
VARCHAR(50) NOT NULL,
"note" INTEGER,
PRIMARY KEY("register_id"),
CONSTRAINT "RegisterFK1" FOREIGN KEY("user_id") REFERENCES
"User"("user_id")
CONSTRAINT "RegisterUnique" UNIQUE("e-mail")
);INSERT INTO "User"."User"("register_id","user_id","register_date","e-mail","note")
VALUES ("1","1","10/10/2020","asdq@gmail.com"."Kaydolan ilk kullanıcı"),
("2","2","27/05/2009","ibra@gmail.com"."Kaydolan 2 kullanıcı"),
("3","3","20/10/2020","asdaaq@gmail.com"."Kaydolan 3. kullanıcı"),
("4","4","10/11/2020","asaaaasad1dq@gmail.com"."Kaydolan 4. kullanıcı"),
("5","5","10/10/2020","asadsd111dq@gmail.com"."Kaydolan 5. kullanıcı"),
("6","6","03/10/2020","asadsad11dq@gmail.com"."Kaydolan 6. kullanıcı"),
------------------------------------------------------------------------------------------------------------------------
-------------------------------------------
CREATE TABLE "Certificates" (
"Cerificate_id"
SERIAL INTEGER NOT NULL,
"Subject_id" INTEGER ,
"Certificate_name" VARCHAR(40) NOT NULL,
"price"
MONEY NOT NULL,
"Desciriptions"
TEXT ,
PRIMARY KEY("Cerificate_id"),
CONSTRAINT "CertificatesFK1" FOREIGN KEY("Subject_id") REFERENCES
"Subject"("Subject_id")
);
INSERT INTO
"Cerificates"("Cerificate_id","Subject_id","Certificate_name","price","Desciriptions",)
VALUES ("1","1","HTML Certificate"."95.00","HTML Sertifikası"),
("1","2","CSS Certificate"."85.00","CSS Sertifikası"),
("1","3","JS Certificate"."90.00","JS Sertifikası"),
("1","9","PYTHON Certificate"."95.00","PYTHON Sertifikası"),
("1","5","BOOSTRAP4 Certificate"."95.00","BOOSTRAP4 Sertifikası"),
("1","19","XML Certificate"."95.00","XML Sertifikası"),
("1",,"Career CV"."95.00","CV Hazırlama Taktikleri");
------------------------------------------------------------------------------------------------------------------------
-------------------------------------------
CREATE TABLE "User"."User" (
"user_id"
SERIAL INTEGER NOT NULL,
"e-mail"
TEXT NOT NULL,
"password" vARCHAR(32) NOT NULL,
"quiz_points" NUMERIC ,
"tutorials_point"
NUMERIC ,
"exercies_point"
NUMERIC ,
"total_point" NUMERIC DEFAULT 0,
"note" TEXT ,
PRIMARY KEY("user_id"),
ON DELETE CASCADE,
ON UPDATE CASCADE
);ALTER TABLE "User"."User"
ADD CONSTRAINT "tutorials_point" REFERENCES "User"."Tutorials"
("tutorials_point")
ADD CONSTRAINT "exercies_point" REFERENCES "User"."Exercies" ("exercies_point")
ADD CONSTRAINT "quiz_points" REFERENCES "User"."Quizess" ("quiz_points")
ON DELETE CASCADE
ON UPDATE CASCADE;
ALTER TABLE "User"."User"
ADD CONSTRAINT "tutorials_point" REFERENCES "User"."Register" ("e-mail")
ON DELETE CASCADE
ON UPDATE CASCADE;
INSERT INTO "User"."User"("user_id","e-
mail","password","quiz_points","tutorials_point","exercies_point","total_point","note",)
VALUES ('1','asd@gmail.com','asdasd',
currval("User"."Quizess_quiz_points_seq"),
currval("User"."Tutorials_tutorials_point_seq"),
currval("User"."Exercies_exercies_point_seq"));
------------------------------------------------------------------------------------------------------------------------
-------------------------------------------
CREATE TABLE "IP" (
"ip_adress" INTEGER NOT NULL,
"user_id"
INTEGER ,
"fakeuser"
byte,
"client_name" VARCHAR(40) NOT NULL,
"client_id"
INTEGER NOT NULL,
PRIMARY KEY("ip_adress"),
CONSTRAINT "IPFK1" FOREIGN KEY("user_id") REFERENCES "User"("user_id")
);
INSERT INTO "IP"("ip_adress","user_id","fakeuser","client_name","client_id")
VALUES ('192.168.1.5','1','',"1","Lenova-123p","4"),
('122.589.456','10',"0","Monster232k",132),,
('12.255.255.0','20',"0","AsusZC21","54");
------------------------------------------------------------------------------------------------------------------------
-------------------------------------------
CREATE TABLE "Social Media" (
"Socialmedia_id"
INTEGER NOT NULL,
"Socialmedia_name" VARCHAR(40),
PRIMARY KEY("Socialmedia_id")
);
INSERT INTO "Social Media"("Socialmedia_id","Socialmedia_name","note",)
VALUES ('1','1','FACEBOOK',"https://www.facebook.com/w3schoolscom/"),
('2','instagram',"https://www.instagram.com/w3schools.com_official/"),
('3','LİNKEDİN',"https://www.linkedin.com/company/w3schools.com/");------------------------------------------------------------------------------------------------------------------------
-------------------------------------------
CREATE TABLE "categories" (
`CategoryID` int(11) NOT NULL,
`CategoryName` varchar(255) DEFAULT NULL,
`Description` varchar(255) DEFAULT NULL,
"Group_id" int(20) DEFAULT NULL
);
INSERT INTO `categories` (`CategoryID`, `CategoryName`, `Description`,"Group_id")
VALUES(1, 'Beverages', 'Soft drinks, coffees, teas, beers, and ales',"60"),
(2, 'Condiments', 'Sweet and savory sauces, relishes, spreads, and seasonings',"60"),
(3, 'Confections', 'Desserts, candies, and sweet breads',"60"),
(4, 'Dairy Products', 'Cheeses',"60"),
(5, 'Grains/Cereals', 'Breads, crackers, pasta, and cereal',"60"),
(6, 'Meat/Poultry', 'Prepared meats',"60"),
(7, 'Produce', 'Dried fruit and bean curd',"60"),
(8, 'Seafood', 'Seaweed and fish',"60");
ALTER TABLE `categories`
ADD PRIMARY KEY (`CategoryID`),
CONSTRAINT "CATEGORIESFK1" FOREIGN KEY("Group_id") REFERENCES
"Group"("Group_id");
------------------------------------------------------------------------------------------------------------------------
-------------------------------------------
CREATE TABLE `customers` (
`CustomerID` int(11) NOT NULL,
`CustomerName` varchar(255) DEFAULT NULL,
`ContactName` varchar(255) DEFAULT NULL,
`Address` varchar(255) DEFAULT NULL,
`City` varchar(255) DEFAULT NULL,
`PostalCode` varchar(255) DEFAULT NULL,
`Country` varchar(255) DEFAULT NULL
"Group_id" int(20) DEFAULT NULL
);
INSERT INTO `customers` (`CustomerID`, `CustomerName`, `ContactName`, `Address`, `City`,
`PostalCode`, `Country`,"Group_id")
VALUES
(1, 'Alfreds Futterkiste', 'Maria Anders', 'Obere Str. 57', 'Berlin', '12209', 'Germany',"60"),
(2, 'Ana Trujillo Emparedados y helados', 'Ana Trujillo', 'Avda. de la Constitución 2222', 'México
D.F.', '05021', 'Mexico',"60"),
(3, 'Antonio Moreno Taquería', 'Antonio Moreno', 'Mataderos 2312', 'México D.F.', '05023',
'Mexico',"60"),
(4, 'Around the Horn', 'Thomas Hardy', '120 Hanover Sq.', 'London', 'WA1 1DP', 'UK',"60"),
(5, 'Berglunds snabbköp', 'Christina Berglund', 'Berguvsvägen 8', 'Luleå', 'S-958 22', 'Sweden',"60"),
(6, 'Blauer See Delikatessen', 'Hanna Moos', 'Forsterstr. 57', 'Mannheim', '68306', 'Germany',"60"),
(7, 'Blondel père et fils', 'Frédérique Citeaux', '24, place Kléber', 'Strasbourg', '67000', 'France',"60"),(8, 'Bólido Comidas preparadas', 'Martín Sommer', 'C/ Araquil, 67', 'Madrid', '28023', 'Spain',"60"),
(9, 'Bon app\', 'Laurence Lebihans', '12, rue des Bouchers', 'Marseille', '13008', 'France',"60");
ALTER TABLE `customers`
ADD PRIMARY KEY (`CustomerID`),
CONSTRAINT "customersFK1" FOREIGN KEY("Group_id") REFERENCES
"Group"("Group_id");
--------------------------------------------------------------------------------------------------------------
CREATE TABLE "employees" (
`EmployeeID` int(11) NOT NULL,
`LastName` varchar(255) DEFAULT NULL,
`FirstName` varchar(255) DEFAULT NULL,
`BirthDate` date DEFAULT NULL,
`Photo` varchar(255) DEFAULT NULL,
`Notes` text
"Group_id" int(20) DEFAULT NULL
);
ALTER TABLE `employees`
ADD PRIMARY KEY (`EmployeeID`);
INSERT INTO `employees` (`EmployeeID`, `LastName`, `FirstName`, `BirthDate`, `Photo`,
`Notes`) VALUES
(1, 'Davolio', 'Nancy', '1968-12-08', 'EmpID1.pic', 'Education includes a BA in psychology from
Colorado State University. She also completed (The Art of the Cold Call). Nancy is a member of
\'Toastmasters International\'.'),
(2, 'Fuller', 'Andrew', '1952-02-19', 'EmpID2.pic', 'Andrew received his BTS commercial and a
Ph.D. in international marketing from the University of Dallas. He is fluent in French and Italian
and reads German. He joined the company as a sales representative, was promoted to sales manager
and was then named vice president of sales. Andrew is a member of the Sales Management
Roundtable, the Seattle Chamber of Commerce, and the Pacific Rim Importers Association.'),
(3, 'Leverling', 'Janet', '1963-08-30', 'EmpID3.pic', 'Janet has a BS degree in chemistry from Boston
College). She has also completed a certificate program in food retailing management. Janet was
hired as a sales associate and was promoted to sales representative.'),
(4, 'Peacock', 'Margaret', '1958-09-19', 'EmpID4.pic', 'Margaret holds a BA in English literature
from Concordia College and an MA from the American Institute of Culinary Arts. She was
temporarily assigned to the London office before returning to her permanent post in Seattle.'),
(5, 'Buchanan', 'Steven', '1955-03-04', 'EmpID5.pic', 'Steven Buchanan graduated from St. Andrews
University, Scotland, with a BSC degree. Upon joining the company as a sales representative, he
spent 6 months in an orientation program at the Seattle office and then returned to his permanent
post in London, where he was promoted to sales manager. Mr. Buchanan has completed the courses
\'Successful Telemarketing\' and \'International Sales Management\'. He is fluent in French.');
------------------------------------------------------------------------------------------------------------------------
-------------------------------------------
CREATE TABLE `orders` (
`OrderID` int(11) NOT NULL,
`CustomerID` int(11) DEFAULT NULL,`EmployeeID` int(11) DEFAULT NULL,
`OrderDate` date DEFAULT NULL,
`ShipperID` int(11) DEFAULT NULL
"Group_id" int(20) DEFAULT NULL
);
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`,
`ShipperID`,"Group_id") VALUES
(10248, 90, 5, '1996-07-04', 3,"60"),
(10249, 81, 6, '1996-07-05', 1,"60"),
(10250, 34, 4, '1996-07-08', 2,"60"),
(10251, 84, 3, '1996-07-08', 1,"60"),
(10252, 76, 4, '1996-07-09', 2,"60"),
(10253, 34, 3, '1996-07-10', 2,"60"),
(10254, 14, 5, '1996-07-11', 2,"60"),
(10255, 68, 9, '1996-07-12', 3,"60"),
(10256, 88, 3, '1996-07-15', 2,"60"),
(10257, 35, 4, '1996-07-16', 3,"60"),
(10258, 20, 1, '1996-07-17', 1,"60"),
(10259, 13, 4, '1996-07-18', 3,"60"),
(10260, 55, 4, '1996-07-19', 1,"60");
ALTER TABLE `orders`
ADD PRIMARY KEY (`OrderID`),
ADD KEY `CustomerID` (`CustomerID`),
ADD KEY `EmployeeID` (`EmployeeID`),
ADD KEY `ShipperID` (`ShipperID`);
ALTER TABLE `orders`
ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES
`customers` (`CustomerID`),
ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`EmployeeID`) REFERENCES
`employees` (`EmployeeID`),
ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`ShipperID`) REFERENCES `shippers`
(`ShipperID`)
------------------------------------------------------------------------------------------------------------------------
-------------------------------------------
CREATE TABLE "order_details" (
`OrderDetailID` int(11) NOT NULL,
`OrderID` int(11) DEFAULT NULL,
`ProductID` int(11) DEFAULT NULL,
`Quantity` int(11) DEFAULT NULL,
"Group_id" int(20) DEFAULT NULL
);
INSERT INTO `order_details` (`OrderDetailID`, `OrderID`, `ProductID`, `Quantity`,"Group_id")
VALUES
(1, 10248, 11, 12,60),
(2, 10248, 42, 10,60),
(3, 10248, 72, 5,60),
(4, 10249, 14, 9,60),(5, 10249, 51, 40,60),
(6, 10250, 41, 10,60),
(7, 10250, 51, 35,60),
(8, 10250, 65, 15,60),
(9, 10251, 22, 6,60);
ALTER TABLE `order_details`
ADD PRIMARY KEY (`OrderDetailID`),
ADD KEY `OrderID` (`OrderID`),
ADD KEY `ProductID` (`ProductID`);
ALTER TABLE `order_details`
ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES
`orders` (`OrderID`),
ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`ProductID`) REFERENCES
`products` (`ProductID`);
------------------------------------------------------------------------------------------------------------------------
-------------------------------------------
CREATE TABLE `products` (
`ProductID` int(11) NOT NULL,
`ProductName` varchar(255) DEFAULT NULL,
`SupplierID` int(11) DEFAULT NULL,
`CategoryID` int(11) DEFAULT NULL,
`Unit` varchar(255) DEFAULT NULL,
`Price` double DEFAULT NULL,
"Group_id" int(20) DEFAULT NULL
);
INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `Unit`,
`Price`) VALUES
(1, 'Chais', 1, 1, '10 boxes x 20 bags', 18),
(2, 'Chang', 1, 1, '24 - 12 oz bottles', 19),
(3, 'Aniseed Syrup', 1, 2, '12 - 550 ml bottles', 10),
(4, 'Chef Anton\'s Cajun Seasoning', 2, 2, '48 - 6 oz jars', 22),
(5, 'Chef Anton\'s Gumbo Mix', 2, 2, '36 boxes', 21.35);
ALTER TABLE `products`
ADD PRIMARY KEY (`ProductID`),
ADD KEY `CategoryID` (`CategoryID`),
ADD KEY `SupplierID` (`SupplierID`);
ALTER TABLE `products`
ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`CategoryID`) REFERENCES
`categories` (`CategoryID`),
ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`SupplierID`) REFERENCES
`suppliers` (`SupplierID`);
COMMIT;------------------------------------------------------------------------------------------------------------------------
-------------------------------------------
CREATE TABLE `shippers` (
`ShipperID` int(11) NOT NULL,
`ShipperName` varchar(255) DEFAULT NULL,
`Phone` varchar(255) DEFAULT NULL,
"Group_id" int(20) DEFAULT NULL
)
INSERT INTO `shippers` (`ShipperID`, `ShipperName`, `Phone`) VALUES
(1, 'Speedy Express', '(503) 555-9831'),
(2, 'United Package', '(503) 555-3199'),
(3, 'Federal Shipping', '(503) 555-9931');
ALTER TABLE `shippers`
ADD PRIMARY KEY (`ShipperID`);
------------------------------------------------------------------------------------------------------------------------
-------------------------------------------
CREATE TABLE `suppliers` (
`SupplierID` int(11) NOT NULL,
`SupplierName` varchar(255) DEFAULT NULL,
`ContactName` varchar(255) DEFAULT NULL,
`Address` varchar(255) DEFAULT NULL,
`City` varchar(255) DEFAULT NULL,
`PostalCode` varchar(255) DEFAULT NULL,
`Country` varchar(255) DEFAULT NULL,
`Phone` varchar(255) DEFAULT NULL,
"Group_id" int(20) DEFAULT NULL
)
INSERT INTO `suppliers` (`SupplierID`, `SupplierName`, `ContactName`, `Address`, `City`,
`PostalCode`, `Country`, `Phone`,"Group_id")
VALUES
(1, 'Exotic Liquid', 'Charlotte Cooper', '49 Gilbert St.', 'Londona', 'EC1 4SD', 'UK', '(171) 555-
2222',"60"),
(2, 'New Orleans Cajun Delights', 'Shelley Burke', 'P.O. Box 78934', 'New Orleans', '70117', 'USA',
'(100) 555-4822',"60"),
(3, 'Grandma Kellys Homestead', 'Regina Murphy', '707 Oxford Rd.', 'Ann Arbor', '48104', 'USA',
'(313) 555-5735',"60"),
(4, 'Tokyo Traders', 'Yoshi Nagase', '9-8 Sekimai Musashino-shi', 'Tokyo', '100', 'Japan', '(03) 3555-
5011',"60");
ALTER TABLE `suppliers`
ADD PRIMARY KEY (`SupplierID`);
------------------------------------------------------------------------------------------------------------------------
-------------------------------------------