+++
title = "Angular for Beginners"
outputs = ["Reveal"]
weight = 01 # chapter number
author = "Christopher Martinez"
+++

{{< reveal-titlepage figure="/softdev2-resources/images/angular/angular-icon-logo.png" width="100" height="100" >}}
  
---

## Welcome to Angular for beginners!!!

 <img src="/softdev2-resources/images/angular/angular-icon-logo.png" width="200" height="200">
by Christopher Martinez
 
---
## Prerequisite
<ul>
  <li>Install <a href="https://nodejs.org/en/">NodeJS</a></li>
  <br>
  <li>Command Prompt/Terminal</li>
    <ul>
      <li>Check node version using the <b><em>node –v</em></b> command</li>
      <li>To check if you have npm run the <b><em>npm –v</b></em> to see if it is installed</li>
      <li><b><em>npm install -g @angular/cli</b></em> to install Angular CLI</li>
      <li>Type <b><em>ng version</b></em> to check the version of Angular CLI</li>
    </ul>
  <br>
  <li>We will use <a href="https://code.visualstudio.com/download">VSCode</a> and 
    <a href="https://git-scm.com/downloads">Gitbash</a> for this workshop</li>
</ul>

---
## Download content 


---

## Why is this code wrong?
the code works!! but not efficient...<br><br>
<ul> 
  <li>DRY - Don't Repeat Yourself!</li>
    <ul>
      <li>Making copies of code</li>
      <li>Revisiting multiple classes for the same code</li>
    </ul>
  <br><br>
  <li>Modeling - grabbing and manupulation of data</li>
    <ul><li>This is where we interact with the database/communicates with controller</li></ul>
</ul>


---
## Picture of components

(to be added soon...)

---

## Angular Service Information
<ul>
  <li>It is a category that focus a value or feature an application needs.</li>
   <li>It can be used:</li>
    <ul>
      <li>to share data through many components at once.</li>
      <li>as a backend in angular to test code.</li>
      <li>to connect to a database.</li>
    </ul>
</ul>

---

## Let get started
<ul>
<li>Make a student.service.ts file</li>
  <ul><li>In order to provide the student data we need the service to handle that aspect of the code (picture here...)</li></ul>
<br>
<li>Make a “Server” using a Http Request and an observable</li>
  <ul><li>Get  an http request to the “server” to then return as an observable to student.service.ts and to the list and details.</li></ul>
</ul>

(Picture here...)




---

## Http Client
<ul>
  <li>Add import <b><em>{ HttpClientModule } from '@angular/common/http';</em></b> in the <em>app.module.ts</em> </li>
  <li>Add <b><em>HttpClientModule</em></b> under <em>imports</em> </li>
  <li>Add <b><em>StudentService</em></b> under <em>providers</em></li>
</ul>

(picture here...)


---
