+++
title = "Technology Overview"
outputs = ["Reveal"]
weight = 3 # chapter number
+++

{{% reveal-titlepage figure="/softdev2-resources/images/technology.jpg" %}}

---

#### Getting out of your comfort zone

Forget: **Java**

{{% fragment %}} 
At least for now. Why?
- It's not the only language out there: [TIOBE Index](https://www.tiobe.com/tiobe-index/), [Github State of the Octoverse survey](https://octoverse.github.com/), and [StackOverflow Developer Survey of 2019](https://insights.stackoverflow.com/survey/2019)
- The more languages you are familiar with, the better chances for jobs
- Knowledge of imperative language like Java easily translates to several other languages (C#, Python, Javascript, C/C++, …)
- Java is not on the rise, but it's still very popular
- Web frameworks and languages have transformed application development landscape, especially **Javascript** (not Java)
{{% /fragment %}} 

---

#### What's the deal with Javascript?

{{% fragment %}} 

- Classical web architecture:

{{< figure src="/softdev2-resources/images/intro/web-arch-classic.svg" height=200 >}}

{{% /fragment %}} 

{{% fragment %}} 

- Javascript web architecture:

{{< figure src="/softdev2-resources/images/intro/web-arch-javascript.svg" height=200 >}}

{{% /fragment %}} 

---

#### Popular Javascript web frameworks

Major players; require Node.js on the server

1. [Angular](https://angular.io/) (Typescript) - a full framework, owned by Google
1. [React](https://reactjs.org/) (JSX) - only a library. Invented by Facebook, but open source now
1. [Vue.JS](https://vuejs.org/) (Javascript) - modeled after legacy AngularJS; lighter, independent, and open source

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

There are free or low-cost options:

- [Render](https://render.com/) - Free hosting of backend (Node.js, etc)
- [Netlify](https://www.netlify.com/)/[Github Pages](https://pages.github.com/) - Free hosting of only static web content
- [Amazon Web Services (AWS)](https://aws.amazon.com/free/) - 12-month free tier and some always free services
- [Microsoft Azure](https://azure.microsoft.com/en-us/free/students/) - free for student
- [Heroku](https://www.heroku.com/) - Was recently acquired by Salesforce and ceased free accounts
- [Altervista](https://en.altervista.org/) - Free PHP hosting and MySQL server. A bit slow.

---

### I'm lost! How to learn all of this?

{{% fragment %}}

We can't teach all technologies, and you need to get used to picking
them up faster in preparation for real jobs out there.

{{% /fragment %}}

{{% fragment %}}

#### Some advice:

- **Learn how to read!** (Literally) Always first go to the tool's _official website_ and follow their _latest_ documentation, examples, and tutorials. <!-- class="fragment" -->

{{% /fragment %}}

{{% fragment %}}
- **Practice a simpler project** Do not jump into modifying your inherited project without understanding the basics on a simpler toy project.
{{% /fragment %}}

{{% fragment %}}
- **Do not update everything at the beginning** This may go against the fast-paced update culture, but we first need to preserve the working conditions of an older project. You are almost **guaranteed to irreversibly break** a project if you blindly update all of its dependencies to the latest version.
{{% /fragment %}}

{{% fragment %}}
- **Do not watch those Youtube tutorials!** Yeah, old school person here, who doesn't understand the new generation. But, see next slide.
{{% /fragment %}}

---

### What's wrong with video tutorials?

- you can't copy-paste from a video
- they are almost always outdated (these tools update every 3 months or so)
- they usually show only a very specific solution that may not be a good fit for you
- you can't continue following if you get an error during a step
- you can't search keywords within a video
    

---

### How about some learning resources?

- [W3Schools](https://www.w3schools.com/) for HTML, CSS, Javascript, Python, etc.
- [LinkedIn Learning](https://www.linkedin.com/learning/): Videos, if you must.
- [O'Reilly/Safari Books](https://learning.oreilly.com/home/): Up-to-date books by actual industry experts and even authors of the very tools we are using. They also have those videos.
