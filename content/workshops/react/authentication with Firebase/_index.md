+++
date = "2021-01-5T12:00:00Z"
lastmod = "2021-01-5T12:00:00Z"
publishdate = "2021-01-5T12:00:00Z"

title = "React Authentication with Firebase Workshop"
description = "This workshop will authentication with React and Firebase"
author = "Keyvan Shabani"
video = "VPpqHXfASO4"

weight = 2

outputs = ["Reveal"]

[reveal_hugo]
custom_css = "css/docker.css"
margin = 0.1
+++

{{< reveal-titlepage figure="/softdev2-resources/images/react/authentication with Firebase/react.png" width="100px" >}}

---

## Note:

To follow instructions in video, clone this [starter repo](https://github.com/soft-eng-practicum/react-auth-firebase-workshop) 

Example:
```sh
git clone https://github.com/soft-eng-practicum/react-auth-firebase-workshop.git
```

---
## What is React?
React.js is an open-source JavaScript library that is used for building user interfaces specifically for single-page applications. It’s used for handling the view layer for web and mobile apps. React also allows us to create reusable UI components. React was first created by Jordan Walke, a software engineer working for Facebook. React first deployed on Facebook’s newsfeed in 2011 and on Instagram in 2012.

{{% fragment %}}
#### Why to use React?

ReactJS is just simpler to grasp right away. The component-based approach, well-defined lifecycle, and use of just plain JavaScript make React very simple to learn, build a professional web (and mobile applications), and support it. React uses a special syntax called JSX which allows you to mix HTML with JavaScript. This is not a requirement; Developer can still write in plain JavaScript but JSX is much easier to use.

{{% /fragment %}}

---
## What is Firebase?

Firebase is a Backend-as-a-Service (Baas). It provides developers with a variety of tools and services to help them develop quality apps, grow their user base, and earn profit. It is built on Google’s infrastructure.
Firebase is categorized as a NoSQL database program, which stores data in JSON-like documents.

#### What are the key features?
1. Authentication
2. Realtime database
3. Hosting
4. Notifications

---
### Now it is time to create a React project

In order to create a react app, you must have Node installed on your device. If you do not have Node, download from **[here](https://nodejs.org/en/download/)**.

If you **cloned the starter repo**, open a terminal and do:
```sh
cd react-auth-firebase-workshop
npm install
npm start
```
(it may give a few [errors](https://stackoverflow.com/questions/69692842/error-message-error0308010cdigital-envelope-routinesunsupported) and open a blank web page)

If you **did NOT clone the starter repo**, open a terminal and create a new React app:
```sh
npm create-react-app authentication
```
Once the app is created, enter the following command in your terminal.
```sh
cd authentication
npm start
```

---

## Let's set up a firebase project

- Go to **[Firebase](https://firebase.google.com)** and create an account.
- Click on "Go to console" on the top right corner.
- Click on "Add project" to create a project, and simply follow the steps on website.

---

## OPTIONAL: Login to firebase and install

- Then, open your terminal in the project root and install the Firebase command-line interface (CLI):
```sh
npm install -g firebase-tools
```
Mac and Linux users would need to prepend this command with `sudo`.

- Once the Firebase CLI is installed on your computer, you should be able run:
  ```sh
  firebase login
  ```
- Run this command to view all of your firebase projects:
  ```sh
  firebase projects:list
  ```
- If you see the project you just created, then you are ready to go

---

## Initialize Firebase App

- These are already done for you in the **starter app**:
  - Under src folder, create a new folder called "firebase"
  - Inside the firebase folder, create a file called "config.js"
- But you need to do this: 
  - go to your project in firebase website
  - go to the "Project settings", 
  - click on "Create App" and select "Web app", 
  - copy its project configuration.

---

- It should look something like this.
```sh
// Import the functions you need from the SDKs you need
import { initializeApp } from "firebase/app";
import { getAnalytics } from "firebase/analytics";
// TODO: Add SDKs for Firebase products that you want to use
// https://firebase.google.com/docs/web/setup#available-libraries

// Your web app's Firebase configuration
// For Firebase JS SDK v7.20.0 and later, measurementId is optional
const firebaseConfig = {
  apiKey: "AIzaSyAeNL3vYTqEkQ4SjY2wCZI0tVt__ZLkPIk",
  authDomain: "test-55b83.firebaseapp.com",
  projectId: "test-55b83",
  storageBucket: "test-55b83.appspot.com",
  messagingSenderId: "226842485528",
  appId: "1:226842485528:web:e18496f2f84e11d188346d",
  measurementId: "G-GJG1R0XZHL"
};

// Initialize Firebase
const app = initializeApp(firebaseConfig);
const analytics = getAnalytics(app);
```
- Paste the code inside the `config.js` file

---

## Firebase Authentication Setup
- In firebase website, click on "Authentication"
- then click on "Sign-in method" and enable "Email/Password"
- This is going to allow you to sign up and sign in users with email and password.

---

### Additional packages

- We will be using routing in your application so we included
  `react-router-dom` in the starter repo. **If you have not cloned it**,
  you must install:

```sh
npm install react-router-dom@5.2.0 --save
```
- You can use later version of router DOM but this is what we are using for this workshop

- I am also using **[Semantic Ui](https://semantic-ui.com/introduction/getting-started.html)** classes for the UI. See the documentation on how to install or simply do (**skip for now if doesn't work**):

```sh
npm install semantic-ui --save
```

---

## Signup component
- Let's create a signup component so the user can sign up
- Before writing any code, install react hook form which is a library I will be using to handle the forms and submittions.
```sh
npm install react-hook-form@5.7.2
```
- Read **[React Hook Form](https://react-hook-form.com)** documentation for more information.

---

- Under src folder, create a folder called `pages`
- Inside pages, create a file called `Signup.js`
- Paste the following code in `Signup.js`
```sh
import React, { useState } from 'react';
import { useForm } from 'react-hook-form';
import { signup } from '../firebase/auth';
import { Link } from 'react-router-dom';

function Signup(props) {
  const { register, handleSubmit, reset } = useForm();
  const [isLoading, setLoading] = useState(false);

  const onSubmit = async (data) => {
    let newUser;
    setLoading(true);
    try {
      newUser = await signup(data);
      reset();
    } catch (error) {
      console.log(error);
    }

    if (newUser) {
      props.history.push(`/profile/${newUser.uid}`);
    } else {
      setLoading(false);
    }
  };

  const formClassName = `ui form ${isLoading ? 'loading' : ''}`;

  return (
    <div className="login-container">
      <div className="ui card login-card">
        <div className="content">
          <form className={formClassName} onSubmit={handleSubmit(onSubmit)}>
            <div className="two fields">
              <div className="field">
                <label>
                  First Name
                  <input
                    type="text"
                    name="firstName"
                    placeholder="First Name"
                    ref={register}
                  />
                </label>
              </div>
              <div className="field">
                <label>
                  Last Name
                  <input
                    type="text"
                    name="lastName"
                    placeholder="Last Name"
                    ref={register}
                  />
                </label>
              </div>
            </div>
            <div className="field">
              <label>
                Email
                <input
                  type="email"
                  name="email"
                  placeholder="Email"
                  ref={register}
                />
              </label>
            </div>
            <div className="field">
              <label>
                Password
                <input
                  type="password"
                  name="password"
                  placeholder="Password"
                  ref={register}
                />
              </label>
            </div>
            <div className="field actions">
              <button className="ui primary button login" type="submit">
                Signup
              </button>
              or
              <Link to="/login">Log In</Link>
            </div>
          </form>
        </div>
      </div>
    </div>
  );
}

export default Signup;

```

---

## Adding Style
- Paste the following CSS code inside of App.css
```sh
body {
  background-color: #f9f9f9 !important;
  font-size: 15px;
  font-family: 'Titillium Web', sans-serif !important;
}

a {
  text-decoration: none;
}

.ui.button,
.ui.input,
.ui.form input {
  font-family: 'Titillium Web', sans-serif !important;
}

header {
  height: 50px;
  background: #1a2129;
  position: fixed;
  top: 0px;
  width: 100%;
  z-index: 1;
}

header h2 {
  color: #fff;
  margin: 0;
  padding: 10px;
  position: absolute;
  left: 10px;
}

.app {
  margin-top: 100px;
}

.login-container {
  display: flex;
  align-items: center;
  justify-content: center;
}

.ui.card.login-card {
  width: 450px;
}

.ui.form input[type='text'],
.ui.form input[type='password'],
.ui.form select {
  margin-top: 10px;
}

.logout {
  float: right;
  position: relative;
  top: 4px;
  right: 15px;
}

.actions {
  text-align: right;
}

.actions button {
  margin-right: 5px;
}

.actions a {
  margin-left: 5px;
}
```

---

## create a new route for signup
- In App.js import the following
```sh
import Signup from './pages/Signup';
import { Route, Switch, BrowserRouter, Redirect } from 'react-router-dom';
```
- Add the following code inside of the return
```sh
<BrowserRouter>
        <Header></Header>
        <div className="app">
          <div className="ui grid container">
            <Switch>
              <Route exact path="/signup" component={Signup} />
              </Route>
            </Switch>
          </div>
        </div>
      </BrowserRouter>
```

---

## create signup function
- Create a new file inside firebase folder and call it "auth.js"
- write a sign up function which alllows the user to sign up with email and password
```sh
import firebase from 'firebase/app';
import 'firebase/auth';

export const signup = async ({ firstName, lastName, email, password }) => {
  const resp = await firebase
    .auth()
    .createUserWithEmailAndPassword(email, password);
  await resp.user.updateProfile({ displayName: `${firstName} ${lastName}` });
};
```
- Now we are able to signup new users and store their data in the firebase.

---

## Displaying the users data
- Now that we have a user, it is time to create a profile page and display their information.
- Inside the pages folder, create a new file and call it "Profile.js" and include the following code
```sh
import React from 'react';
import { useSession } from '../firebase/UserProvider';

const Profile = () => {
  const { user } = useSession();

  if (!user) {
    return null;
  }

  return (
    <div>
      <p>Name: {user.displayName}</p>
      <p>Email: {user.email}</p>
      <p>ID: {user.uid}</p>
      </div>
  );
}

export default Profile;
```

---

- We also have to create a route for the Profile.js, so inside App.js paste the following code
```sh
import Profile from './pages/Profile';
```
```sh
<Route exact path="/profile/:id" component={Profile} />
```
- Now if we navigate to the following route, we see the user information if a user session exists.
```sh
http://localhost:3000/profile/
```

---

## Implementing logout

- Now we have to create a logout function so the logged in user is able to logout.
- Under the src folder, create a file and call it "Header.js" and paste the following code in it
```sh
import React from 'react';
import { logout } from './firebase/auth';
import { useHistory } from 'react-router-dom';
import { useSession } from './firebase/UserProvider';

function Header() {
  const history = useHistory();
  const { user } = useSession();

  const logoutUser = async () => {
    await logout();
    history.push('/login');
  };

  return (
    <header>
      <h2>GGC</h2>
      {!!user && (
        <button className="ui secondary button logout" onClick={logoutUser}>
          LOGOUT
        </button>
      )}
    </header>
  );
}

export default Header;
```

---

- Now that we have a header with a logout button, we must give the functionality to the button.
- Inside the auth.js file, create a new function called logout
```sh
export const logout = () => {
  return firebase.auth().signOut();
};
```

---

## Implementing login
- Inside pages folder, create a new file and call it "Login.js"
- Paste this code in Login.js
```sh
import React, { useState } from 'react';
import { useForm } from 'react-hook-form';
import { login } from '../firebase/auth';
import { Link } from 'react-router-dom';

function Login(props) {
  const { register, handleSubmit, reset } = useForm();
  const [isLoading, setLoading] = useState(false);

  const routeOnLogin = async (user) => {
      props.history.push(`/profile/${user.uid}`);
  };

  const onSubmit = async (data) => {
    let user;
    setLoading(true);
    try {
      user = await login(data);
      reset();
    } catch (error) {
      console.log(error);
    }

    if (user) {
      routeOnLogin(user);
    } else {
      setLoading(false);
    }
  };

  const formClassName = `ui form ${isLoading ? 'loading' : ''}`;

  return (
    <div className="login-container">
      <div className="ui card login-card">
        <div className="content">
          <form className={formClassName} onSubmit={handleSubmit(onSubmit)}>
            <div className="field">
              <label>
                Email
                <input
                  type="email"
                  name="email"
                  placeholder="Email"
                  ref={register}
                />
              </label>
            </div>
            <div className="field">
              <label>
                Password
                <input
                  type="password"
                  name="password"
                  placeholder="Password"
                  ref={register}
                />
              </label>
            </div>
            <div className="field actions">
              <button className="ui primary button login" type="submit">
                Login
              </button>
              or
              <Link to="/signup">Sign Up</Link>
            </div>
            <div>
              <Link to="/forgotpassword">Forgot Password?</Link>
            </div>
          </form>
        </div>
      </div>
    </div>
  );
}

export default Login;
```
---

- Inside the auth.js file, create a new function called login
```sh
export const login = async ({ email, password }) => {
  const resp = await firebase
    .auth()
    .signInWithEmailAndPassword(email, password);

  return resp.user;
};
```
- We still need to handle the routing for login so inside App.js, create a new route for login
```sh
import Login from './pages/Login';
```
```sh
<Route exact path="/login" component={Login} />
```

---

## Implementing forgot password
- Inside the pages folder, create a new file called "ForgotPassword.js" and paste the following
```sh
import React, { useState } from 'react'
import { Link } from 'react-router-dom';
import { useForm } from 'react-hook-form';
import { passwordReset } from '../firebase/auth';



function ForgotPassword() {
  const { register, handleSubmit, reset } = useForm();
  const [isLoading, setLoading] = useState(false);

  const onSubmit = async (data) => {
    setLoading(true);
    try {
      await passwordReset(data);
      reset();
      console.log("Please check your email address!");
    } catch (error) {
      console.log(error);
    }
    setLoading(false);
  }


  const formClassName = `ui form ${isLoading ? 'loading' : ''}`;

  return (
    <div className="login-container">
      <div className="ui card login-card">
        <div className="content">
          <form className={formClassName} onSubmit={handleSubmit(onSubmit)}>
            <div className="field">
              <label>
                Email
                <input
                  type="email"
                  name="email"
                  placeholder="Email"
                  ref={register}
                  required
                />
              </label>
            </div>
            <div className="field actions">
              <button className="ui primary button login" type="submit">
                Reset Password
              </button>
              or
              <Link to="/login">Login</Link>
            </div>
          </form>
        </div>
      </div>
    </div>
  );
}

export default ForgotPassword;
```

---

- Inside the auth.js file, create a new function called passwordReset
```sh
export const passwordReset = async ({email}) => {
  return await firebase.auth().sendPasswordResetEmail(email);
};
```
- We still need to handle the routing for ForgotPassword so inside App.js, create a new route for ForgotPassword
```sh
import ForgotPassword from './pages/ForgotPassword';
```
```sh
<Route exact path="/forgotpassword" component={ForgotPassword} />
```

---

## fixing route issues
- Before wrapping up on authentication, we still need to fix some issue. Currently even when we have a logged in user session, we are still able to navigate to login, signup and forgot password page. In order to fix this issue, we need to create a file called "ProfileRedirect" inside on a folder called "router"

---

- Paste this code inside of the ProfileRedirect.js
```sh
import React from 'react';
import { Route, Redirect } from 'react-router-dom';
import { useSession } from '../firebase/UserProvider';

const ProfileRedirect = ({ component: Component, ...rest }) => {
  const { user } = useSession();

  return (
    <Route
      {...rest}
      render={(props) =>
        !user ? (
          <Component {...props} />
        ) : (
          <Redirect
            to={{
              pathname: `/profile/${user.uid}`,
              state: { from: props.location },
            }}
          />
        )
      }
    />
  );
};

export default ProfileRedirect;
```

---

- Import ProfileRedirect in the App.js
```sh
import ProfileRedirect from './router/ProfileRedirect';
```
- Now in the App.js, change the Route of login, signup and forgotpassword to ProfileRedirect.
```sh
<ProfileRedirect exact path="/signup" component={Signup} />
<ProfileRedirect exact path="/login" component={Login} />
<ProfileRedirect exact path="/forgotpassword" component={ForgotPassword} />
<Route exact path="/">
    <Redirect to="/login" />
</Route>
```
- This is going to fix the issue we had with routing and is going to block the logged in user to try to navigate to these pages.

---

## securing users profile
- Even though we have a secure authentication system now, there is still one last issue that we need to fix. Currently if a user is logged in, they are able to navigate to another user's profile page as long as they have a user's UID. In order to fix this issue, we need to create a new file called "PrivateRoute.js" inside the router folder.
```sh
import React from 'react';
import { Route, Redirect } from 'react-router-dom';
import { useSession } from '../firebase/UserProvider';

const PrivateRoute = ({ component: Component, ...rest }) => {
  const { user } = useSession();

  return (
    <Route
      {...rest}
      render={(props) => {
        const id = props.match.params.id;

        if (!!user && (user.uid === id)) {
          return <Component {...props} />;
        } else {
          return <Redirect to="/login" />;
        }
      }}
    />
  );
};

export default PrivateRoute;
```

---

- Second thing we need to do is to change the route of profile page. Therefore, inside the App.js file change the route to the following
```sh
import PrivateRoute from './router/PrivateRoute';
```
```sh
<PrivateRoute exact path="/profile/:id" component={Profile} />
```
- This is going to avoid the user to navigate to a profile page if the user's UID does not match with the ID in our props. This means that the users is authorize to see that profile page, because it does not belong to them.

---

## Summary
This bring us to the end of Authentication with React and Firebase, I hope this is going to be useful for you when creating your own react project.

The code for this tutorial can be found in my **[Github](https://github.com/keyvan1996)**

Create by: Keyvan Shabani



