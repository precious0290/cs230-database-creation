//
// AJAX - API - Database Demo
//
// CS230 Demo Program - John G. Keating
//
// (c) 2021
//

//
// Note: This version (index-db.js) connects to an MySQL Database rather than
//       maintaining an "in-memory" database using a variable! You will need
//       access to a database in order for this to work (use Webcourse, etc.)
//

// Load the NodeJS modules required

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
con1.connect(function (err) {
  if (err) throw err;
 
});
con2.connect(function (err) {
  if (err) throw err;
});
// watch for Ctrl-C and then close database connection!
process.on("SIGINT", function () {
  con.end(function (err) {
    if (err) {
      return console.log("error:" + err.message);
    }
    console.log("\nDatabase (USERS): Disconnected!");
    process.exit();
  });
});
process.on("SIGINT", function () {
  con1.end(function (err) {
    if (err) {
      return console.log("error:" + err.message);
    }
    console.log("\nDatabase (USERS): Disconnected!");
    process.exit();
  });
});
process.on("SIGINT", function () {
  con2.end(function (err) {
    if (err) {
      return console.log("error:" + err.message);
    }
    console.log("\nDatabase (USERS): Disconnected!");
    process.exit();
  });
});

// listen for requests from clients
server.on("request", function (request, response) {
  var currentRoute = url.format(request.url); // get the route (/ or /api/user)
  var currentMethod = request.method; // get the HTTP request type (POST - Create; GET - Retrieve)
  var requestBody = ""; // will contain the extracted POST data later

  // determine the route (/ or /api/user)
  switch (currentRoute) {
    //
    // If no API call made then the default route is / so
    // just return the default index.html file to the user.
    // This contains the forms, etc. for making the CRUD
    // requests (only Create and Retrieve implemented)
    //
    case "/":
      fs.readFile(__dirname + "/assignment4.html", function (err, data) {
        // get the file and add to data
        var headers = {
          // set the appropriate headers
          "Content-Type": "text/html",
        };
        response.writeHead(200, headers);
        response.end(data); // return the data (index.html)
      }); // as part of the response

      break;

    //
    // Handle the requests from client made using the route /api/user
    // These come via AJAX embedded in the earlier served index.html
    // There will be a single route (/api/user) but two HTTP request methods
    // POST (for Create) and GET (for Retrieve)
    //
    case "/api/user":
      // Handle a POST request;  the user is sending user data via AJAX!
      // This is the CRUD (C)reate request. These data need to be
      // extracted from the POST request and saved to the database!

      if (currentMethod === "POST") {
        // read the body of the POST request
        request.on("data", function (chunk) {
          requestBody += chunk.toString();
        });

        // determine the POST request Content-type (and log to console)
        // Either: (i)  application/x-www-form-urlencoded or (ii) application/json
        const { headers } = request;
        let ctype = headers["content-type"];
        console.log("RECEIVED Content-Type: " + ctype + "\n");

        // finished reading the body of the request
        request.on("end", function () {
          var userData = "";
          // saving the user from the body to the database
          if (ctype.match(new RegExp("^application/x-www-form-urlencoded"))) {
            userData = querystring.parse(requestBody);
          } else {
            userData = JSON.parse(requestBody);
          }
          // log the user data to console
          console.log(
            "USER DATA RECEIVED: \n\n" +
              JSON.stringify(userData, null, 2) +
              "\n"
          );
          // we have the data supplied so make the database connection and
          // the (unvalidated) data. Without validation we just hope everything
          // works out okay - for production we would need to perform validation
          var sql = `INSERT INTO USERS (Title, FName, LName, email, mobile) VALUES ('${userData.title}','${userData.firstname}','${userData.surname}','${userData.email}','${userData.mobile}')`;
          var sqlInsertH = `INSERT INTO Address (AddressLine1, AddressLine2, Town, CountyCity, Eircode) VALUES ('${userData.aline1}','${userData.aline2}','${userData.town}','${userData.countyCity}','${userData.eircode}')`;
          var sqlInsertS = `INSERT INTO ShippingAddress (AddressLine1S, AddressLine2S, TownS, CountyCityS, EircodeS) VALUES ('${userData.aline1S}','${userData.aline2S}','${userData.townS}','${userData.countyCityS}','${userData.eircodeS}')`;
         
          con.query(sql, function (err, result) {
            if (err) throw err;
            console.log(
              `USER RECORD INSERTED: ['${userData.title}','${userData.firstname}','${userData.surname}','${userData.email}','${userData.mobile}']\n`
            );
           
            

            


           
    
            // respond to the user with confirmation message
            var headers = {
              "Content-Type": "text/plain",
            };


            
            // handle the responses here after the database query completes!
            response.writeHead(200, headers);
            response.end(
              "User (" +
                userData.firstname +
                " " +
                userData.surname +
                ") data added to the Database!"
            );
          });
          con1.query(sqlInsertH, function (err, result1) {
            if (err) throw err;
            console.log(
              `USER RECORD INSERTED: ['${userData.aline1}','${userData.aline2}','${userData.town}','${userData.countyCity}','${userData.eircode}']\n`
            );
          });
          con2.query(sqlInsertS, function (err, result2) {
            if (err) throw err;
            console.log(
              `USER RECORD INSERTED: ['${userData.aline1S}','${userData.aline2S}','${userData.townS}','${userData.countyCityS}','${userData.eircodeS}']\n`
            );
          });        
        });
      }

      // Handle a GET request;  the user is requesting user data via AJAX!
      // This is the CRUD (R)etrieve request. These data need to be
      // extracted from the database and returned to the user as JSON!
      else if (currentMethod === "GET") {
        var headers = {
          "Content-Type": "application/json",
        };
        // make the database query using the connection created earlier

        const input = '${userData.searchname}';
         //const input = 'Rio';
        
        //var async = require('async') //https://stackoverflow.com/questions/44215532/how-to-append-two-results-of-query-in-one-json-in-node-js -> didnt work the way i wanted it to -> what i wanted was to display all the user information in my html and its only showing in javascript terminal, big sadge 
       //i wanted to combine all my 3 tables information so i used this select-> in pg4admin we could give the tables aliases but json doesnt like that
        con.query("SELECT Title, FName, LName, email,mobile, Address.AddressLine1, Address.AddressLine2, Address.Town, Address.CountyCity, Address.Eircode, ShippingAddress.AddressLine1S,  ShippingAddress.AddressLine2S, ShippingAddress.TownS, ShippingAddress.CountyCityS, ShippingAddress.EircodeS FROM  USERS  INNER JOIN Address on Address.addressID = USERS.userID  INNER JOIN ShippingAddress on ShippingAddress.shippingID = USERS.userID where FName = ?",[input],
        function (err, result, fields) {
          if (err) throw err;
          //output details to the console
          console.log(
            "USER DATABASE REQUESTED: \n\n" +
              JSON.stringify(result, null, 2) +
              "\n"
          );
          // notice we include the processing in here so that is processed as part
          // of the callback - if it is outside this function then it could progress
          // before the data are returned from the database.
          response.writeHead(200, headers); // return headers for everything okay!
          response.end(JSON.stringify(result)); // return unprocessed result from SQL Query
        }
      );
      }
      break;
  }
});

// Set up the HTTP server and listen on port 8000
server.listen(port, function () {
  console.log("\nPrecious Deremo's Database "+ port + "\n");
});

