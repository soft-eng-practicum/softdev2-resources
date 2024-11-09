
+++
date = "2021-01-05T12:00:00Z"
lastmod = "2021-01-05T12:00:00Z"
publishdate = "2021-01-05T12:00:00Z"

title = "Angular Routing"
description = "This workshop will cover the basics of Routing in Angular"
author = "Roberto Salas Montoya"

weight = 3

outputs = ["Reveal"]

[reveal_hugo]
custom_css = "css/docker.css"
margin = 0.1
+++

{{% reveal-titlepage figure="/softdev2-resources/images/angular/angular-icon-logo.png" %}}

---

## Overview

Introduction, What is routing in Angular?

Creating a Project that includes the routing module or adding routing module.

Configure Route Module Check

{{% fragment %}}
#### Three step fundamental blocks

- Route paths
- Routerlink and link active
- Router outlet

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
$ ng serve --open
```

In order to edit and modify our Angular Routing application we are going to use Visual Studio Code. Download and install [Visual Studio Code](https://code.visualstudio.com/).

We can open our project in Visual code using the following command in the Terminal.

```sh
$ code .
```

---

## Creating Components for Route Demo

For the purpose of demonstrating the route configuration we will create two components professorList and studentList. We will use the following two commands to create each component at a time in the Angular CLI.

```sh
$ ng generate component professorList
```

And 

```sh
$ ng generate component studentList
```

---

{{% section %}}

## PRE-CONFIGURING ROUTES 1.0

Assuming you have component views already created we will type the following code to configure our Routes in the *AppRoutingModule.ts* file.

First import the components that will be routed. Use the following script to import each component at a time.

```sh
import {exampleComponent} from ‘./example/example/component’;
```

---

## PRE-CONFIGURING ROUTES 1.1

Now its time to import our *AppRoutingModule.ts* into our *AppModule.ts* *Note (skip this step if you created the app with routing this step should be already done)
Make sure you’re *AppModule.ts* has the commented importation shown in the image if not add both statements.

```sh
import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { StudentListComponent } from './student-list/student-list.component';
import { ProfessorListComponent } from './professor-list/professor-list.component';

@NgModule({
  declarations: [
    AppComponent,
    StudentListComponent,
    ProfessorListComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
```

---

## PRE-CONFIGURING ROUTES 1.2

The last thing step before we start creating our route paths is making sure that our *AppRoutingModule.ts* file has imported Router Module and Routes correctly.

```sh
The Angular CLI should have also set up the import and exports for @NgModule.
Please verify if not done so add the missing code.

import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';

const routes: Routes = [];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
```

{{% /section %}}

---


## Routes paths

In our *AppRoutingModule.ts* there is a Routes array (const routes: Routes). Inside this array there is an object that contains two properties path and component. Path is just the URL path for the route and Component is used to tell Angular which component to use for the mentioned path.

```sh
const routes: Routes = [
  { path: 'professorList-component', component: ProfessorListComponent },
  { path: 'studentList-component', component: StudentListComponent },
];
```

---

## Add routerlink and linkactive

In the previews step we defined the routes of each component now its time to add the links to both components. In our AppComponent.html we will list our likes in the following html form.

```sh
<h1>Angular Router App</h1>
<nav>
  <ul>
    <li><a routerLink="/professorList-component" routerLinkActive="active">First Component </a></li>
    <br>
    <li><a routerLink="/studentList-component" routerLinkActive="active">Second Component</a></li>
  </ul>
</nav>
```

---

## Add route outlet

The next step to display our component view is to add the router outlet in *AppComponent.html*. This is key concept in Angular since our html from the components we have define previous will take the place of these tags once the selected route component is clicked.

```sh
<router-outlet></router-outlet>
```

---

## Wildcard Routes

Sometimes users navigate to URLs that do not exist this is when wildcards come in handy. Wildcards are used to redirect users to the correct view. To set this up we will use the following line of code in *AppRoutingModule.ts*.

```sh
{ path: 'professorList-component', component: ProfessorListComponent },
{ path: 'studentList-component', component: StudentListComponent },
{ path: '**', component:  }, // Wildcard route
```

After *component:* we would type the name of the component we want the user to go to instead of the wrong URL address that they tried to access.

---

{{% section %}}

## Displaying a 404 page

Display a page 404 can be useful to let the user know that what they are looking for was not found or miss typed. First thing we need to do to create a page 404 is create a new Angular component. After this we will proceed to add the path and route like the previous components. This is done in *AppRoutingModule.ts*.

```sh
const routes: Routes = [
  { path: 'professorList-component', component: ProfessorListComponent },
  { path: 'studentList-component', component: StudentListComponent },
  { path: '**', component: PageNotFoundComponent },  // Wildcard route for a 404 page
];
```

---

## 404 Page

Lets creat a Component to display our 404 message using the Angular CLI.

```sh
$ ng generate component pageNotFound
```

Now with our component created add a nice html body message for the user. Add this to *PageNotFoundComponent.html*.

```sh
<p>ERROR 404 PAGE NOT FOUND!!!</p>
```

{{% /section %}}
