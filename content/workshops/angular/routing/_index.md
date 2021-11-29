
+++
date = "2021-01-5T12:00:00Z"
lastmod = "2021-01-5T12:00:00Z"
publishdate = "2021-01-5T12:00:00Z"

title = "Angular Routing"
description = "This workshop will cover the basics of Routing in Angular"
author = "Roberto Salas Montoya"

weight = 2

outputs = ["Reveal"]

[reveal_hugo]
custom_css = "css/docker.css"
margin = 0.1
+++

## Angular Routing Workshop

Roberto Salas

<img src="/softdev2-resources/images/angular/angular-icon-logo.png" width="100" height="100" />

---

## Overview

Introduction, What is routing in Angular?

Creating a Project that includes the routing module or adding routing module.

Configure Route Module Check

{{% fragment %}}
#### Three step fundamental blocks

- Route paths
- Router outlet
- Routerlink and link active

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
ng serve --open
```

In order to edit and modify our Angular Routing application we are going to use Visual Studio Code. Download and install [Visual Studio Code](https://code.visualstudio.com/).

We can open our project in Visual code using the following command in the Terminal.

```sh
$ code .
```

---

## PRE-CONFIGURING ROUTES 1.0

Assuming you have component views already created we will type the following code to configure our Routes in the *AppRoutingModule* file.

First import the components that will be routed. Use the following script to import each component at a time.

```sh
import {exampleComponent} from ‘./example/example/component’;
```

---

## PRE-CONFIGURING ROUTES 1.1

Now its time to import our *AppRoutingModule* into our *AppModule* *Note (skip this step if you created the app with routing this step should be already done)
Make sure you’re *AppModule* has the commented importation shown in the image if not add both statements.

<img src="/softdev2-resources/images/angular/ImportsAppModule.png" width="450" height="300" />

---

## PRE-CONFIGURING ROUTES 1.2

The last thing step before we start creating our route paths is making sure that our AppRoutingModule file has imported Router Module and Routes correctly.

The Angular CLI should have also set up the import and exports for @NgModule.
Please verify if not done so add the missing code.

<img src="/softdev2-resources/images/angular/ImportRouterModule.png" width="450" height="300" />

---

## Routes paths

In our *AppRoutingModule* there is a Routes array (const routes: Routes). Inside this array there is an object that contains two properties path and component. Path is just the URL path for the route and Component is used to tell Angular which component to use for the mentioned path.


## First Container

You can also try factoring very large numbers:
```txt
$ factor 12345678901010101010101010987654321
12345678901010101010101010987654321: 19 853 32069 398053 465067 128312953569637
```

or:
```sh
$ yes Dr. Gunay is awesome
Dr. Gunay is awesome
Dr. Gunay is awesome
Dr. Gunay is awesome
Dr. Gunay is awesome
...
```

---

## First Container

To quit, run the command `exit`. Since `bash` (PID 1) was the initial process used to start the container, once it exits, the container stops.

Because we used the `--rm` option, Docker should delete the container once it exits which you can verify by typing
```sh
$ docker container ls -a
```
however the Ubuntu image should still be saved locally:
```txt
$ docker image ls
REPOSITORY        TAG           IMAGE ID       CREATED       SIZE
ubuntu            latest        f63181f19b2f   12 days ago   72.9MB
```

---

## Running Python

As another example, you can also try running Python instead of bash:
```txt
$ docker run -it --rm python:slim

Python 3.9.1 (default, Jan 12 2021, 16:56:42)
[GCC 8.3.0] on linux
Type "help", "copyright", "credits" or "license" for more information.

>>> a = 5
>>> print(a + 2)
7

>>> exit()
```

---

## Running Python 2.7

You can also create containers for different versions of Python:
```txt
$ docker run -it --rm python:2.7-slim

Python 2.7.18 (default, Jan 12 2021, 16:56:42)
[GCC 8.3.0] on linux
Type "help", "copyright", "credits" or "license" for more information.

>>> a = 5
>>> print a+2
7

>>> exit()
```

---

## Dockerfiles

Say you'd like to slightly customize an image available on Docker Hub. If you're trying to run a Python application you could start off with the image `python:slim`, add your application and install any dependencies to create an image specific to your app. This is done using a Dockerfile.

{{% fragment %}}
A Dockerfile is just a text file containing a list of commands used to build an image. The default filename is just `Dockerfile`. Dockerfiles must begin with a `FROM` instruction which specifies a parent image, such as `python:3.9` or `node:15.7`.
{{% /fragment %}}

---

## Common Dockerfile Commands

* `COPY <src> <dest>`\
Copies files on the host at `<src>` to the container at the path `<dest>`

* `RUN <command>`\
Executes the command once inside the image

* `ENV <key>=<value>`\
Sets the environment variable `<key>` to `<value>`

* `ENTRYPOINT <command>`\
Executes `<command>` whenever the container starts

You can read more about all the different commands [here](https://docs.docker.com/engine/reference/builder/).

---

## Python Dockerfile

Create the file `hello.py` somewhere on your computer with the following lines:
```py
import os

name = input('What is your name? ')
print(f'Hello {name}!')

print(os.environ.get('GOODBYE'))
```

{{% fragment %}}
But what if you don't have Python installed? That's perfectly fine! With Docker you can download a Python image to run the code without actually installing Python on your host computer.
{{% /fragment %}}

---

## Python Dockerfile

In the same folder as `hello.py`, create the file `Dockerfile` and add:
```Dockerfile
FROM python:3.9-slim

ENV GOODBYE=adios

# You can also add comments :0
COPY hello.py .

ENTRYPOINT python hello.py
```

{{% fragment %}}
Once you've saved the file, open a command prompt in that directory and run
```sh
$ docker build -t hello .
```
which builds the image and tags it with the name `hello`. You should be able to see the image by typing
```txt
$ docker image ls
REPOSITORY        TAG           IMAGE ID       CREATED          SIZE
hello             latest        50b4f80bd32a   13 seconds ago   114MB
```
{{% /fragment %}}

---

## Running Your Image

Use the following command to run your image:
```txt
$ docker run -it --rm hello
What is your name? bob
Hello bob!
adios
```

After entering your name, the container should print a greeting, a closing, and then exit. Because of the ` --rm` option, the container should be deleted.

---

{{% section %}}

## How Docker Works

On Linux, Docker utilizes two technologies of the Linux kernel to achieve this containerization:
- [Namespaces](https://en.wikipedia.org/wiki/Linux_namespaces) are used to isolate kernel resources such as mounted file systems, hostnames, process IDs, and user IDs. A single container will have a namespace for each of these resources.

- [cgroups](https://en.wikipedia.org/wiki/Cgroups) (control groups) are used to isolate system resources such as CPU, memory, disk I/O, and networking.

Click the down arrow for more information!

---

## How Docker Works

Essentially, whenever a process tries to access kernel resources, the kernel uses the process's allocated namespace to determine which resource to provide.

For example, in a container's PID namespace Apache might be running with process ID 1, but it might have process ID 650 in the initial ("root") PID namespace that was created when the computer started. From the root PID namespace's perspective, Apache is just another process along with all the other processes running on the operating system, however from Apache's perspective, it looks like it's running alone with possibly a few additional processes used in the container.

---

## How Docker Works

Other resources can also be containerized in this way. In one container the path `/bin/bash` could point to the Bourne Again Shell executable while in another container the file might not exist. This determination is made at the kernel level and completely transparent to the processes running inside the container.

While a technical understanding of the technologies mentioned above isn't necessary to effectively use Docker, it often helps in understanding the "why" component. For details on how containers can be implemented, check out this [video](https://www.youtube.com/watch?v=8fi7uSYlOdc) where a simple version of Docker is written using Go.

{{% /section %}}