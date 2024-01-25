//All code has been taken from W3Schools website-> https://www.w3schools.com/nodejs/nodejs_mysql.asp and @ John Keatings code
// thanks a mil John

var http = require("http"); // creating an API using http
var url = require("url"); // using url to extract the route (e.g. /, /api/user)
var querystring = require("querystring"); // this will contain the body of the POST request
var fs = require("fs"); // file handling to read the index.html served for / route
var port = 8000; // port the server with listen on

var server = http.createServer(); // create the server

//
// This is the new section that manages a relational (mysql) database connection
//
var mysql = require("mysql");

// use YOUR credentials to create your database connection


// And make the connection - re-used later
con.connect(function (err) {
  if (err) throw err;
  console.log("Database (USERS): Connected!");
});

// watch for Ctrl-C and then close database connection!
process.on("SIGINT", function () {
  con.end(function (err) {
    if (err) {
      return console.log("error:" + err.message);
    }
    process.exit();
  });
});
//I had to run the each part of the crud individually as when i ran it at once nothing was inserted ehe
//User  Personal Data Start
 //Insert User Data -> (C) IN CRUD
 /*var sqlInsertU = "INSERT INTO USERS (Title, FName, LName, email, mobile) VALUES ('Mre (for mystery)', 'Galaxy', 'Swirl', 'multimotional3@gmail.com', '045180091')";
 con.query(sqlInsertU, function (err, result) {
   if (err) throw err;
   console.log("Galaxy Swirl's Info Inserted!");
 }); 
//Retrieval of Data -> (R) in CRUD
con.query("SELECT Title, FName, LName, email,mobile, Address.AddressLine1, Address.AddressLine2, Address.Town, Address.CountyCity, Address.Eircode, ShippingAddress.AddressLine1S,  ShippingAddress.AddressLine2S, ShippingAddress.TownS, ShippingAddress.CountyCityS, ShippingAddress.EircodeS FROM  USERS  INNER JOIN Address on Address.addressID = USERS.userID  INNER JOIN ShippingAddress on ShippingAddress.shippingID = USERS.userID where FName='Galaxy'", function (err, result, fields) {
    if (err) throw err;
    console.log(result);
  });  

   //Update the Users table: -> (U) in CRUD
   var sqlUpdateUser = "UPDATE USERS SET Title = 'Mx', email = 'swirlnation@outlook.ie' , mobile= '042069928' WHERE FName = 'Galaxy'"; //UPDATE table-name SET column-name = value, column-name = value WHERE condition = value -> Grepper Answer
   con.query(sqlUpdateUser, function (err, result) {
     if (err) throw err;
     console.log("Galaxie Swirl's Info Updated!");
   });   
    
   //Delete User from Users table -> (D) in CRUD
  var sqlDeleteUser = "DELETE FROM USERS WHERE email = 'swirlnation@outlook.ie'";//i dont think its possible to delete a user record with a combination since they are linked together theres simply no need, as when we delete the name 'Galaxie', all their information linked to that name will also be deleted
   con.query(sqlDeleteUser, function (err, result) {
     if (err) throw err;
     console.log("Galaxie Swirl is deleted and no longer exists! ");
   }); 
//User Personal Detail End


//User Address details start
   //Insert User Address Data -> (C) IN CRUD
   var sqlInsertH1 = "INSERT INTO Address (AddressLine1, AddressLine2, Town, CountyCity, Eircode) VALUES ('Line1', 'Line2', 'ATown', 'justCounty', 'anEir78')";
   con.query(sqlInsertH1, function (err, result) {
     if (err) throw err;
     console.log("Galaxy Swirl Address Info inserted!");
   });
   //Retrieval of Data -> (R) in CRUD
 con.query("SELECT * FROM Address", function (err, result, fields) {
    if (err) throw err;
    console.log(result);
  });
 
     //Update the address table: -> (U) in CRUD
    var sqlUpdateAddress = "UPDATE Address SET Eircode = 'eircodeHome' WHERE Eircode = 'anEir78'";
     con.query(sqlUpdateAddress, function (err, result1) {
       if (err) throw err;
       console.log(" Address Info Updated!");
     });  

      //Delete Address from Address table -> (D) in CRUD
   var sqlDeleteUserA = "DELETE FROM Address WHERE Town = 'justCounty'";
   con.query(sqlDeleteUserA, function (err, result) {
     if (err) throw err;
     console.log("Galaxie Swirl's address info is deleted and no longer exists! ");
   });  */

     
     //User Address details end
 


 //User Shipping Address Details Start
     //Insert User Data -> (C) IN CRUD
   /* var sqlInsertH1 = "INSERT INTO ShippingAddress (AddressLine1S, AddressLine2S, TownS, CountyCityS, EircodeS) VALUES ('Line1S', 'Line2S', 'ATownS', 'justCountyS', 'anEir78S')";
     con.query(sqlInsertH1, function (err, result) {
       if (err) throw err;
       console.log("Galaxy Swirl Shipping Address Info inserted!");
     }); */

//Retrieval of Data -> (R) in CRUD
/* con.query("SELECT * FROM ShippingAddress", function (err, result, fields) {
    if (err) throw err;
    console.log(result);
  });  */
     
       //Update the shipping address table: -> (U) in CRUD
     /* var sqlUpdateSAddress = "UPDATE ShippingAddress SET TownS = 'TheCapital' WHERE TownS = 'ATownS'";
       con.query(sqlUpdateSAddress, function (err, result2) {
         if (err) throw err;
         console.log(" Shipping Address Info Updated!");
       });  */

//Delete Shipping Address from ShippingAddress table -> (D) in CRUD
   /*var sqlDeleteUserS = "DELETE FROM ShippingAddress WHERE AddressLine1S = 'Line1S'";
   con.query(sqlDeleteUserS, function (err, result) {
     if (err) throw err;
     console.log("Galaxie Swirl's address info is deleted and no longer exists! ");
   });   */
//User Shipping Address Details End


// Set up the HTTP server and listen on port 8000
server.listen(port, function () {
  console.log("\nPrecious Deremo's Database "+ port + "\n");
});

