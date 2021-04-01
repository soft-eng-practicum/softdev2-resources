+++
title = "Angular for Beginners"
outputs = ["Reveal"]
weight = 01 # chapter number
author = "Christopher Martinez"
+++

{{< reveal-titlepage figure="/softdev2-resources/images/angular/angular-icon-logo.png" width="100" height="100" >}}

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

(picture needed...)


---
## HTTP
<ul>
  <li>add <b>import { HttpClientModule } from '@angular/common/http';</b></li>
  <li>Add <b>HttpClientModule</b> under <em>imports</em></li>
  <li>Add <b>StudentService</b> under <em>providers</em></li>
</ul>

<br><br>
(picture needed...)


---
## Declaring Dependencies for Service
<ul>
  <li>in the <em>student.service.ts</em> under the constructor's parameter, type<br>
      <b>private http: HttpClient</b> and the import.</li>
      <ul><li>This uses the local variable http to reference the HttpClient</li></ul>
  <li>Make a get request</li>
       <ul><li>This will help when having a URL to get the data from the database. Since we <br>
               don't have a server we will make one in Angualr using JSON.</ul></li>
</ul>
<br><br>
(Picture here...)

---
## Data Folder
<ul>
  <li>Under <b>asset</b> make a <b>data</b> folder and make a JSON file name <b>students.json</b></li>
  <li>After that copy and paste the data below and delete the one from <br>
      student-list & student-details</li>
</ul>

(picture here...)

---
## Make a URL
<ul>
  <li>Making this URL will direct it to the JSON file in the data folder</li>
  
</ul>


---
## Observable
<ul>
  <li>if you hover over the get() method it returns an observable so we need to be<br>
      casted to match an array of students format in order for it to work. </li>
  <ul><li>create an interface named <b>student.ts</b> and add the code below.</li></ul>
</ul>
<br>
export interface StuInterface {<br>
    id: number;<br>
    name: string;<br>
    age: number;<br>
}<br>

<ul>
<li>going back to the <b>student.service.ts</b> add the <b>StuInterface[]</b> to the <br>
    get and the <b>getStudents()</b> will return an observable of <b>Stuinterface[]</b>.</li>
</ul>
<br>
(picture here...)


---
## Subscribe
<ul>
  <li>We need to subscribe to the data so that we can retrieve it.</li>
  <ul>
      <li>add <b>private _studentService: StudentService</b> in the constructor parameters</li>
      <li>Add <b>this._studentService.getStudents().subscribe(data => this.students = data);</b><br>
          in ngOnInit().</li>
      <li>This goes for both <em>student-list</em> and <em>student-details</em> html.</li>
  </ul>
</ul>

(Picture here....)

---
## Conclusion
<ul><li>As we see if we add something to the json file, it should add it to both pages amd there<br>
        is no need for repeating code.</li>
</ul>
     
(Picture here...)
