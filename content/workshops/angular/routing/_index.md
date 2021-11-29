
+++
date = "2021-01-5T12:00:00Z"
lastmod = "2021-01-5T12:00:00Z"
publishdate = "2021-01-5T12:00:00Z"

title = "Angular Routing"
description = "This workshop will cover the basics of Routing in Angular"
author = "Roberto Salas Montoya"

weight = 2

outputs = ["Reveal"]

[reveal_hugo]
custom_css = "css/docker.css"
margin = 0.1
+++

## Angular Routing Workshop

Roberto Salas

<img src="/softdev2-resources/images/angular/angular-icon-logo.png" width="100" height="100" />

---

## Overview

Introduction, What is routing in Angular?

Creating a Project that includes the routing module or adding routing module.

Configure Route Module Check

{{% fragment %}}
#### Three step fundamental blocks

- Route paths
- Router outlet
- Routerlink and link active

{{% /fragment %}}

---
## What is Angular routing?

Routing in Angular is basically navigating between pages. The Router Module consists of directives and service to implement navigation. In more simple words you could describe it as the function behind the application that lets users move between different screen views.


---

## Create an Angular Project

In order to create Angular project we must first have Node installed in our system. You can download Node from [here](https://nodejs.org/en/).

Once Node is installed the next step is to open the terminal and run the next commands to install and create our Angular application.

```sh
$ npm install -g @angular/cli
```

The previous command installed Angular the next command is to create a Project and give it a name.

```sh
$ ng new RoutingDemo
```

---

## Accessing and opening our Project

The next command is to run and open our application

```sh
$ cd RoutingDemo
ng serve --open
```

In order to edit and modify our Angular Routing application we are going to use Visual Studio Code. Download and install [Visual Studio Code](https://code.visualstudio.com/).

We can open our project in Visual code using the following command in the Terminal.

```sh
$ code .
```

---

## PRE-CONFIGURING ROUTES 1.0

Assuming you have component views already created we will type the following code to configure our Routes in the *AppRoutingModule* file.

First import the components that will be routed. Use the following script to import each component at a time.

```sh
import {exampleComponent} from ‘./example/example/component’;
```

---

## PRE-CONFIGURING ROUTES 1.1

Now its time to import our *AppRoutingModule* into our *AppModule* *Note (skip this step if you created the app with routing this step should be already done)
Make sure you’re *AppModule* has the commented importation shown in the image if not add both statements.

<img src="/softdev2-resources/images/angular/ImportsAppModule.PNG" width="450" height="300" />

---

## PRE-CONFIGURING ROUTES 1.2

The last thing step before we start creating our route paths is making sure that our AppRoutingModule file has imported Router Module and Routes correctly.

The Angular CLI should have also set up the import and exports for @NgModule.
Please verify if not done so add the missing code.

<img src="/softdev2-resources/images/angular/ImportRouterModule.PNG" width="450" height="300" />

---

## Routes paths

In our *AppRoutingModule* there is a Routes array (const routes: Routes). Inside this array there is an object that contains two properties path and component. Path is just the URL path for the route and Component is used to tell Angular which component to use for the mentioned path.

---

## First Container

You can also try factoring very large numbers:
```txt
$ factor 12345678901010101010101010987654321
12345678901010101010101010987654321: 19 853 32069 398053 465067 128312953569637
```

or:
```sh
$ yes Dr. Gunay is awesome
Dr. Gunay is awesome
Dr. Gunay is awesome
Dr. Gunay is awesome
Dr. Gunay is awesome
...
```