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
      <li><b><em>npm install -g @angular/cli</b></em> to install all Angular CLI</li>
        <ul><li>NOTE: The command above installs all necessary dependancies </ul></li>
      <li>Type <b><em>ng version</b></em> to check the version of Angular CLI</li>
    </ul>
  <br>
  <li>We will use <a href="https://code.visualstudio.com/download">VSCode</a> and 
    <a href="https://git-scm.com/downloads">Gitbash</a> for this workshop</li>
</ul>

---
## Download content 
<ul> <li>git clone https://github.com/KidLanz/SID.git</li> 
 <br>
  <li>Command Prompt/Terminal: </li> 
 <br>
 <ul>
    <li>cd Desktop/demo/SID</li>
    <li>code .</li>
      <ul><li>NOTE:this command is to open VSCode through the command line/terminal</li></ul>
    <li><b><em>npm install</b></em> then <b><em>npm install -g npm</b></em></li>
       <ul><li>NOTE:this command is to install npm and get the latest version into the folder you have cloned from the repositoty</li></ul>
    <li>ng serve -o</li>
       <ul><li>NOTE:this command is to open the html to the browser</li></ul>
 </ul>
</ul>

<br>(still need picture...)

---
## Why is this code wrong?
<ul>
  <li>D.R.Y. - Don't Repeat Yourself</li>
    <ul>
      <li>Making copies of the code can use up a lot of memory</li>
      <li>Revisiting multiple classes to change the same code can be time consuming</li>
    </ul>
  <li>Modeling - grabbing and Manipulation of Data</li>
    <ul>
      <li>Thhis is where we interact with the database/communicate with the controller</li>
    </ul>
</ul>


---
## Angular Service Information
<ul>
   <li>It is a class that focuses on a specific purpose.</li>
   <li>Its purpose is to: </li>
      <ul>
        <li>share data through many components at once.</li>
        <li>use as a backend in angular to test code.</li>
        <li>give the possibility to connect to a database if needed</li>
      </ul>
</ul>


---
## Lets get started 
<ul>
  <li>Making a student.service.ts file (picture needed...)</li>
  <ul><li>in order to provide the student data, we need the service to handle that<br>
          aspect of the code.</li></ul>
  <li>Making a "Server" using the Http Request and an Obseervable</li>
  <ul><li>You will "get" an http request to the "server" to then return as <br>
          an observable to <em>student.service.ts</em> and to the list <br> 
          and details components.</li></ul>
</ul>
