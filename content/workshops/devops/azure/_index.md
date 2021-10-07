+++
date = "2021-03-07T12:00:00Z"
lastmod = "2021-03-07T12:00:00Z"
publishdate = "2021-03-07T12:00:00Z"

title = "Azure Cloud Workshop"
description = "Starting a virtual machine and App Service"
author = "Cengiz Gunay"

weight = 1

outputs = ["Reveal"]
+++

{{< reveal-titlepage figure="/softdev2-resources/images/azure/Azure.png" height="100px">}}

---

### Azure has a student pack

- $100 credit
- Also monthly free allotment for many services
- Including virtual machines, database, app service, and functions
- Sign up at [Azure for Students](https://azure.microsoft.com/en-us/free/students/)

---

{{% section %}}

### Tutorial #1: create a virtual machine

- The most classic usage of cloud
- Create a copy of a real computer, virtually
- Similar to running a VM on the side on your laptop
- We will create a Linux virtual machine
- Optionally, you could also create Windows and Mac
- Continue onto page below

---

### Start Azure tutorial to create a VM and then follow here

- Start with this [tutorial](https://docs.microsoft.com/en-us/learn/modules/intro-to-azure-virtual-machines/), but keep this page open for modifications
- Your Azure sandbox will expire in 1 hour
- After your search in the Marketplace:
  - Instead of **"Ubuntu Server 18.04 LTS"**, select **"20.04"**
- Under "Networking" tab, select the **NIC network security group** to **None**
- Stop at the end of the page after creating the VM
- Note the public IP address from Overview tab on Azure Portal

---

### Connect to your VM

- Connect to your VM via SSH:
  - On MacOS, just open a terminal and type (replace `username` and `IP` with yours):
  ```sh
  ssh username@IP
  ```
  - On Windows, download [Putty](https://www.chiark.greenend.org.uk/~sgtatham/putty/) and follow [instructions](https://www.ssh.com/ssh/putty/windows/) (enter only IP address and it will prompt for the username)
- Once you are connected, follow below in the *remote* terminal (stop if you fail and ask for help)

---

### Install Node.js on VM

- Install Node.js using APT package manager on Ubuntu:
  ```sh
  $ sudo apt update
  $ sudo apt install nodejs
  $ sudo apt install npm
  ```
- Test your Node version:
  ```sh
  $ node -v
  ```
- OPTIONAL: Add the Ubuntu PPA set up for up-to-date Node.js packages (will take couple of minutes):
  ```sh
  $ curl -sL https://deb.nodesource.com/setup_16.x -o nodesource_setup.sh
  $ sudo bash nodesource_setup.sh
  ```

---

### Run a Node.js project

- Try any of these, but **set port to 8080**:
  - Example [Express Hello World](https://expressjs.com/en/starter/hello-world.html)
  - Example [React projects](https://reactjs.org/community/examples.html)
  - Example [Angular projects](https://angular.io/guide/example-apps-list)
- Once you run the server process, open a browser to `public IP address:8080`
- If you see the output of your server, **you are done!**
- Some more optional info below

---

#### Other tutorials: Installing a node-based web server

- If above instructions didn't work for you, read on
- There is an older tutorial: [installing a MEAN stack application](https://docs.microsoft.com/en-us/learn/modules/build-a-web-app-with-mean-on-a-linux-vm/) 
- You can skip setting up MongoDB if you will not use it
- But, it uses an ancient Ubuntu 16.04 installation with Node version 4 (currently we're at 16)

---

#### Other uses of a VM: Node.js or your own project

- To start a blank VM with a web server, you can follow this [tutorial](https://docs.microsoft.com/en-us/azure/virtual-machines/linux/quick-create-portal) 
- Use Git Bash to run the `ssh -i` line
- At the end of the tutorial, you will have a static site host
- Before going further, first [stop/uninstall nginx](https://phoenixnap.com/kb/nginx-start-stop-restart), which is hogging the web port 80
- Then, follow instructions for [Node.js and Express](https://docs.microsoft.com/en-us/learn/modules/build-web-api-nodejs-express/) site

{{% /section %}}

---

{{% section %}}

### Tutorial #2 Azure App Service: 
#### Running without a VM

- Cloud systems are getting simpler
- Virtual machines are heavy and require maintenance
- App Service is available at all major cloud providers
- Allows running a specific software stack without managing an underlying VM
- All you have to do is push the source code
- Can choose between Node, .Net, Java, Python, Ruby, and PHP on Azure

---

### Node.js example on App Service

- Start with instructions for [hosting a web application on App Service](https://docs.microsoft.com/learn/modules/host-a-web-app-with-azure-app-service/)
- But choose Node.js instead of .Net
- Connect your Github account or simply initialize an empty project

{{% /section %}}

---

{{% section %}}

### Tutorial #3 Azure Static Web Apps: 
#### free web hosting without a backend

- Even lighter than App Service, this service does not even execute anything
- Like [Github Pages](https://pages.github.com/) or [Netlify](https://www.netlify.com/)
- Host any files on the web
- But no backend service (such as Python, Java, .Net, etc)
- Good for Javascript-based front-end frameworks (such as Angular, React, Vue, etc.)
- Also known as single-page applications (SPA)
- Or simply upload HTML files

---

### Publish a single-page application 

- Follow [instructions](https://docs.microsoft.com/en-us/learn/modules/publish-app-service-static-web-app-api/) to set up Azure Static Web Apps
- Select from Angular, React, Svelte, or Vue.JS
- Can also push one of your current projects
- For Angular, you can select one of [these examples](https://angular.io/guide/example-apps-list)

{{% /section %}}

---

{{% section %}}

### Tutorial #4: Azure Functions:
#### Serverless computing

- Static Web Apps miss benefits of backend computing and databases
- Serverless computing is the answer to that
- Allows simple functions to execute on demand and access data
- MongoDB or Firebase can be seen as a serverless solution

{{% note %}}
TODO: Connect this to tutorial #3
{{% /note %}}

---

### Create a simple serverless backend for your static site

- Go back to your static site, and add a call to a function so that you can calculate something dynamically
- For instance, you can add a persistent counter to your website
- Follow [instructions](https://docs.microsoft.com/en-us/learn/modules/create-serverless-logic-with-azure-functions/) to create your serverless function on Azure
- Choose between Javascript or Powershell

{{% /section %}}
