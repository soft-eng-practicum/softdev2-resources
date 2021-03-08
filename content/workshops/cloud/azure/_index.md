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

- We will create a Linux virtual machine
- Optionally, you could also create Windows and Mac
- Follow [tutorial](https://docs.microsoft.com/en-us/azure/virtual-machines/linux/quick-create-portal) to get started
- Use Git Bash to run the `ssh -i` line
- At the end of the tutorial, you will have a static site host

---

#### Installing a node-based web server

- Log back into the server using `ssh`
- Follow instructions for [installing a MEAN stack application](https://docs.microsoft.com/en-us/learn/modules/build-a-web-app-with-mean-on-a-linux-vm/)
- Skip the VM setup as we had already done it
- You can also skip setting up MongoDB if you will not use it
- Alternatively, use instructions for [Node.js and Express](https://docs.microsoft.com/en-us/learn/modules/build-web-api-nodejs-express/)

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

---

### Create a simple serverless backend for your static site

- Go back to your static site, and add a call to a function so that you can calculate something dynamically
- For instance, you can add a persistent counter to your website
- Follow [instructions](https://docs.microsoft.com/en-us/learn/modules/create-serverless-logic-with-azure-functions/) to create your serverless function on Azure
- Choose between Javascript or Powershell

{{% /section %}}
