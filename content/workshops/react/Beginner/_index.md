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
- It is an open-source, reusable component based front-end library
- In a Model View Controller (MVC) architecture, React is the "View" which is responsible for how 
  the app "looks and feels". However, more accurately, it is strictly not MVC and instead uses the [Flux pattern](https://www.infoq.com/news/2014/05/facebook-mvc-flux/).
- As of 2022, it is [one of the most popular](https://www.komododigital.co.uk/insights/9-reasons-why-react-is-still-popular-in-2021/) libraries for building Javascript libraries.
  
---
  
{{% section %}}

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

{{% /section %}}

---

### 

{{% section %}}

<h1>Getting started!</h1>
<h2>Install NodeJs</h2>
<a href="https://nodejs.org/en/" target="_blank">NodeJS download link</a>
<p>We wont be using nodeJS, but we will be downloading it for its packager tool (npm), to install 3rd party plugins</p>
<p> Every time we use npm, we are using NodeJs's packager tool</p>

---
###
<h1>Set up your environment (IDE)</h1>
<a href="https://code.visualstudio.com/download" target="_blank">Visual Studio Code download link</a>

{{% /section %}}

---

### Test your environment and create an app

- Open your command prompt/termianl prompt on Windows/Mac:
  ```bash
  $ node -v
  ```
  This is to see our version of Node.js on our device, if there's an error, it didnt succesfully download.
- Create your app:
  ```bash
  $ npx create-react-app first-react-app
  ```
  (`first-react-app` is the name of our project)
  If it works, congrats you've created your very first react app.
- Start VS Code to see its contents:
  ```bash
  $ cd first-react-app
  $ code src/App.js
  ```

---

### State vs Props

- **State**: is the data that changes over the lifetime of a specific instance in a react component.

- **Props** (short for properties): is an object of arbitrary inputs a React function accepts as the first argument.

---

{{% section %}}

### Diving Into Props

- Think of props as arguments to a function. React components are functions which return JSX (or more generally something that's renderable like React elements, null, a string, etc.).

- Typically when you have a piece of code that you would like to reuse, you can place that code into a function and any dynamic values that code used before can be accepted as arguments (for example const five = 2 + 3 could be extracted to a function and accept arguments like so const five = add(2, 3)).

---

### Diving Into Props

When we define (insert before App()):
```jsx
function Add(props) {
    return (
        <div>
            {props.n1} + {props.n2} = {props.n1 + props.n2}
        </div>
        )
}
```

Then, insert before `</header>`
```html
<Add n1={2} n2={3} />
```

Becomes:
```
2+3=5
```

{{% /section %}}

---

{{% section %}}

### How to use State

- State is what controls drawing of components
- React updates the UI only when state of a component changes
- Think of an input text box; it only changes state when someone enters text in it

---

### The useState function

Start by adding on the top:
```jsx
import { useState } from 'react';
```

We will add a button to flip a coin. Let's create state for the coin:
```jsx
const [coin, setCoin] = useState(0);
```

Here, `coin` becomes the variable holding the value and `setCoin` is
the function we will use to update the state. `useState(0)` sets the
initial value.

---

### Flip the coin with a button

To flip the coin, we need to call `setCoin()`:
```js
setCoin((coin + 1) % 2)
```

Put it in the `onClick` action of an HTML button as a **callback**:
```jsx
<button onClick={ () => setCoin((coin + 1) % 2) } > Flip </button>
```

---

### Final product with state

```jsx
function Flip() {
  const [coin, setCoin] = useState(0);
  return (
      <div>
      {coin}
      <button onClick={ () => setCoin((coin + 1) % 2) }
      > Flip </button>
      </div>
  )
}
```
and add a line to the `App()` function as well, below `<Add>`:
```jsx
<Flip />
```

You will get:

0 <button>Flip</button>

Clicking the button will flip the coin value between 0 and 1.

{{% /section %}}

---

### Routing

First install the [React Router](https://reactrouter.com/) in the console/terminal:
```bash
$ npm install react-router-dom
```

Then, follow [tutorial](https://reactrouter.com/en/main/start/tutorial). Some examples:

<div style="width: 30%; display: inline-block;">

```html
<Switch>
    <Route exact path="/">
        <Home />
    </Route>
    <Route path="/about">
        <About />
    </Route>
    <Route path="/dashboard">
        <Dashboard />
    </Route>
</Switch>
```

</div><div style="width: 55%; display: inline-block;">

```html
<Router>
    <div>
        <ul>
            <li>
                <Link to="/">Home</Link>
            </li>
            <li>
                <Link to="/about">About</Link>
            </li>
            <li>
                <Link to="/dashboard">Dashboard</Link>
            </li>
        </ul>
</Router>
```

</div>
