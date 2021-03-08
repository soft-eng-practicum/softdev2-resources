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

### First tutorial: create a virtual machine

- We will create a Linux virtual machine
- Optionally, you could also create Windows and Mac
- Follow [tutorial](https://docs.microsoft.com/en-us/azure/virtual-machines/linux/quick-create-portal) to get started
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

### Azure App Service: running without a VM

- Cloud systems are getting simpler
- Virtual machines are heavy and require maintenance
- App Service is available at all major cloud providers
- Allows running a specific software stack without managing an underlying VM
- Can choose between Node, .Net, Java, Python, Ruby, and PHP on Azure

---

### 

{{% /section %}}
