+++
date = "2021-11-04T12:00:00Z"
lastmod = "2021-11-04T12:00:00Z"
publishdate = "2021-11-04T12:00:00Z"

title = "REST API with ExpressJS Workshop"
description = "Simple Hello World application, followed by REST API"
author = "Cengiz Gunay"

weight = 1

outputs = ["Reveal"]
+++

{{< reveal-titlepage figure="/softdev2-resources/images/azure/Azure.png" height="100px">}}

---

### REST APIs are universal

- [REST](https://en.wikipedia.org/wiki/Representational_state_transfer) stands for "Representational State Transfer"
- Allows separating backend data store from frontend logic
- Can be connected to database, files, or any other data structure
- A RESTful API can be used by both web and mobile front ends
- Many resources on web are offered as APIs: [Todmotto's list](https://github.com/toddmotto/public-apis)
- Before creating an API, we will set a backend service

---

{{% section %}}

### Simple ExpressJS Hello World application

- Following tutorial on [TutorialsPoint](https://www.tutorialspoint.com/expressjs/index.htm) (lots of ads!)
- Express is a very widely used backend JS framework
- Frontend frameworks like Angular and React run in the browser, but Express runs on the server, using Node.JS
- We will do the first 4 sections in the tutorial, through the section "Hello World"
- Follow on down...

---

### Prerequisites

- Install [Node.JS](https://nodejs.org/en/) that will also install the Node Package Manager (`npm`)
- Test in command prompt or terminal with:
  ```bash
  node --version
  npm --version
  ```
  which should give you the installed versions.
  
---

### Create a project folder

- Run the commands:
  ```bash
  mkdir hello-world
  cd hello-world
  pwd
  ```
- Last command should show that you are _inside_ the new project folder

---

### Initialize your Node.JS project

- Create a `package.json` file with the following command:
  ```bash
  npm init -y
  ```
  (if you want control over what goes in it, omit the `-y`)
- Start installing Node packages for our project:
  ```bash
  npm install --save express
  ```
  which will download packages under the `node_modules` folder <br>
  (the `--save` option will make an entry inside the `package.json` file)
- Install a global program to run your project:
  ```bash
  npm install -g nodemon
  ```
  which will install the `nodemon` utility system-wide <br>
  (if you are on Mac or Linux, you would need to run this with `sudo` powers)
  
---

### Your Hello World program

- Paste this into a new file named `index.js` (use any text editor):
  ```js
  var express = require('express');
  var app = express();
  
  app.get('/', function(req, res){
      res.send("Hello world!");
  });

  app.listen(3000);
  ```
  It will create a _route_ to the root (`'/'`) of your website and print.
- Run it with the command:
  ```bash
  nodemod index.js
  ```
  which should display some information and wait until canceled.
  
---

### Viewing your Express program

- Open your browser to [http://localhost:3000](http://localhost:3000)
- It should display:
  ```txt
  Hello World
  ```
- If this basic Express program works, you can continue to the right to build an API

{{% /section %}}

---

{{% section %}}

### A RESTful API in Express.JS

- Following up on the **Hello World** application
- Create an `api.js` file with the contents:
  ```js
  var express = require('express');
  var bodyParser = require('body-parser');
  var cookieParser = require('cookie-parser');
  var multer = require('multer');
  var upload = multer();

  var app = express();

  app.use(cookieParser());
  app.use(bodyParser.json());
  app.use(bodyParser.urlencoded({ extended: true }));
  app.use(upload.array());

  //Require the Router we defined in movies.js
  var movies = require('./movies.js');

  //Use the Router on the sub route /movies
  app.use('/movies', movies);

  app.listen(3000);
  ```

---

#### What's new?

- Multiple packages loaded at the top. Install them first:
  ```bash
  node install --save body-parser
  node install --save cookie-parser
  node install --save multer
  ```
- An external file `movies.js` is loaded, which we will create in the next step.
- With `app.use()` an ExpressJS _Router_ is set up for the `/movies` sub-URLs

---

#### Make the router component

- Create a new file `movies.js`:
  ```js
  var express = require('express');
  var router = express.Router();
  var movies = [
      {id: 101, name: "Fight Club", year: 1999, rating: 8.1},
      {id: 102, name: "Inception", year: 2010, rating: 8.7},
      {id: 103, name: "The Dark Knight", year: 2008, rating: 9},
      {id: 104, name: "12 Angry Men", year: 1957, rating: 8.9}
  ];

  //Routes will go here
  module.exports = router;
  
  router.get('/', function(req, res){
   res.json(movies);
  });
  ```
  which returns a JSON in response to the root URL `/`, which now points under `/movies` where the Router is attached in `api.js`.
  
---

#### Running it

- Run with:
  ```bash
  nodemon api.js
  ```
- Point browser to [http://localhost:3000/movies](http://localhost:3000/movies), which should show:
  ```txt
  [{"id":101,"name":"Fight Club","year":1999,"rating":8.1},
   {"id":102,"name":"Inception","year":2010,"rating":8.7},
   {"id":103,"name":"The Dark Knight","year":2008,"rating":9},
   {"id":104,"name":"12 Angry Men","year":1957,"rating":8.9}]
  ```

{{% /section %}}

---

### More Information

- To add more API routes and understand what they do, see the rest of tutorial at [TutorialsPoint](https://www.tutorialspoint.com/expressjs/expressjs_restful_apis.htm)
- We skipped sections that explain basic usage of ExpressJS for web apps
- REST API section has more routes with parameters for complete operation
