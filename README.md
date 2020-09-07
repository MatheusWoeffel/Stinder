# Stinder
A database implementation of a tinder + steam app mockup. Because gamers love too.
This repository contains a small web application to test some SQL queries implemented, consisting of a Backend implementation of a REST api as well as a frontend used to consume the API and show the result of the queries.
## Setup
This SI (Information System) uses a postgres database, so to build the tables we need to execute the sql script ```./sql/entrega/buildDB.sql```, and to populate the db with instances we use the ```./sql/entrega/instancias.sql```. After, to configurate the DB credentials at the backend we alter the config archive ```./backend/env```, following the example at ```./backend/env.example```.

To setup the server we run the following commands:
Assuming that the current path is ./stinder
### To install the npm package dependencies
```
cd backend
npm install 
```
### To actually run the server
```
npm run server
```
After this, we recommend hosting the front-end at a local server for testing and development. The Live server extension for VS CODE, https://marketplace.visualstudio.com/items?itemName=ritwickdey.LiveServer, can be pretty handy in that case. After following the previous commands and opening the ```./frontend/index.html``` with the Live server extension, the DB can be queried from the web browser.

## Details
More details about the libraries used and about the Database development itself can be viewed in the folder ```./sql/entregas```, where two pdfs (etapa1.pdf e etapa2.pdf) detail more about the development of this application.
