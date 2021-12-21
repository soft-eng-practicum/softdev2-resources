
+++
title = "React for Beginners"
outputs = ["Reveal"]
weight = 1 # chapter number
author = "Alex Abraham"
+++

{{< reveal-titlepage figure="/softdev2-resources/images/react/1280px-React-icon.svg.png" width="100" height="100" >}}

---
### What is React Js?

 A JavaScript library for building user interfaces
  For web as well as mobile applications
 Developed by a team at Facebook in 2011
 <ul>
<li>It is an open-source, reusable component based front-end library</li>
<li>In a model view controller architecture, react is the "view" which is responsible for how 
  the app looks and feels"</li>
<li>Currently one of the most popular libraries for building Javascript libraries"</li>
</ul>

  
---
  


### Components
<h2>-A piece of the Ui-</h2>
<p>Independent, isolated, and reuable components, which become the building blocks to 
a more complex user interface.</p>
<p>In react, webpages are just the combination of many children components</p>

---
### App
<h2>-Root Component-</h2>
<p>Every React application has at least one component known as the Root Component (Most of the time named the App component)</p>
<p>This component represents the entire application and is where all the child components are displayed</p>

---

###
<table>
  <tr>
    <td>
 <img src="/softdev2-resources/images/react/React-Components-Example-1024x556.jpg" width="500" height="500"/>
      </td>
    <td style ="vertical-align: middle;">
 <p>Here we see several components</p>
 <ul>
  <li>NavBar</li>
  <li>Feed</li>
  <li>Who to Follow</li>
  <li>Profile dashboard</li>
  <li>Trends</li>
</ul>
      </td>
    </tr>
  </table>
 
 ---
 ###
 <h2>Twitter Site</h2>
 <p>Take a look at all the <strong>components</strong> (which are all the rectangles with red borders)</p>
 <p><strong>The App (or root component) Component</strong> is the page itself that is displaying all the components</p>

<table>
  <tr>
    <td>
 <img src="/softdev2-resources/images/react/twitterpage.jpg" width="400" height="350"/>
      </td>
    <td>
 <img src="/softdev2-resources/images/react/twitter-components.png" width="400" height="350"/>
      </td>
</tr>
</table>

---

### 
<h1>Getting started!</h1>
<h2>Install NodeJs</h2>
<a href="https://nodejs.org/en/" target="_blank">NodeJS download link</a>
<p>We wont be using nodeJS, but we will be downloading it for its packager tool (npm), to install 3rd party plugins</p>
<p> Every time we use npm, we are using NodeJs's packager tool</p>

---
###
<h1>Set up your environment (IDE)</h1>
<a href="https://code.visualstudio.com/download" target="_blank">Visual Studio Code download link</a>



---
- Open your command prompt/termianl prompt on Windows/Mac
  ```bash
  $ node -v
  ```
  This is to see our version of nodeJs on our device, if there's an error, nodeJs didnt succesfully download
- Create your app:
  ```bash
  $ npx create-react-app first-react-app
  ```
  (`first-react-app` is the name of our project)
  If it works, congrats you've created your very first react app.
- Start VS Code to look at the code:
  ```bash
  code .
  ```


 
