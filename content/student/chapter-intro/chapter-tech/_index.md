+++
title = "Technology Overview"
outputs = ["Reveal"]
weight = 02 # chapter number
+++

{{% reveal-titlepage figure="/softdev2-resources/images/technology.jpg" %}}

---

#### Popular Javascript web frameworks

Major players; require Node.js on the server

1. Angular (Typescript) - a full framework, supported by Google
1. React (JSX) - only a library. Invented by Facebook, but open source now
1. Vue.JS (Javascript) - modeled by original Angular, independent and open source

{{% note %}}
- Angular controlled by Google and may change, forces Typescript
- React needs other framework components
- Vue is youngest and less docs available
{{% /note %}}

---

#### Non-JS web frameworks

- Python
  - Django - Very extensive, open-source framework
  - Flask - Minimal, light, open-source framework
- C#
  - .Net Core - Controlled by Microsoft, but platform independent
- Ruby on Rails - Open-source Ruby web framework, lost some steam recently
- PHP (legacy) – but good with new frameworks
  - Laravel - easy, video tutorials
  - Yii - performant, but steep learning curve
- Java
  - Java Server Faces (JSF) - Legacy
  - Java Spring - similar to .Net, controlled by Oracle

{{% note %}}
- Django comes with admin section.
- .Net Core: Heavily object-oriented, optional Angular for front-end. Very popular.
{{% /note %}}

---

#### Mobile hybrid frameworks

Hybrid: cross-platform (Android, iOS, …)

- Flutter (Dart)
- React Native (JSX, HTML, native)
- Ionic (Angular/React, HTML) – based on Cordova
- Xamarin (C#, XML, allows native code)

{{% note %}}
- JSX is React's flavor of Javascript
- Xamarin requires to learn another XML
{{% /note %}}

---

#### SQL Databases

1. No database
1. SQLite – database in a single file, simplified
1. MySQL/Oracle/PostGreSQL/MS SQL Server – legacy, centralized, powerful, requires server

{{% note %}}
- SQL used to be standard but now one should ask if needed
- SQLite is local, so no centralized data
- need to run server
{{% /note %}}

---

#### NoSQL databases

Simpler, less powerful, cloud options available

- MongoDB - industry leader
- Firebase (Google) - easy for mobile apps
- Cassandra 
- CouchDB - Good for highly distributed systems

{{% note %}}
- Mongo and Firebase give small free allowance on cloud - get a database without running a server!
{{% /note %}}

---

#### Game Dev/Graphical

- Unity (C#/Javascript)
- Unreal Engine (C++/Blueprints)
- Godot (custom, Python-like language)
- GameMaker (custom language)
- Processing (Java)
- JS frameworks (PhaserJS, ...)

{{% note %}}
- Unity and Unreal are serious game dev environments used for industry games
- Godot is popular
{{% /note %}}

---

#### Online Servers

There are free or low-cost options

- Heroku - Completely free servers available, but can't host database for free
- Netlify/Github Pages - Free hosting of static web content
- Amazon Web Services (AWS) - 12-month free tier 
- Microsoft Azure - free tier 
- Altervista - Free PHP and MySQL server
