+++
title = "Project Management with JIRA"
outputs = ["Reveal"]
weight = 05
+++

{{% reveal-titlepage figure="/softdev2-resources/images/comics/dilbert-pm.png" %}}

---
### Project Management (PM)

What is Project Management?

{{% fragment %}} **Project management** is the process of matching a project's goals, tasks, and resources to accomplish a goal considering also constrains like limited time, money, and resources (people and tools) with which to accomplish the goal. {{% /fragment %}}

{{% fragment %}} {{< figure src="/softdev2-resources/images/pm/projectpm.png" width=600 >}} {{% /fragment %}}

---
### Project Step 1: Defining the goals of the project

- entire team must participate
- each team member must understand these goals
- step ends with a list of goals and a statement of success

Defining success is necessary to make sure there is no ambiguity as to whether the goal has been accomplished or not. It also prevents teams from performing unnecessary
iteration and improvement on a goal which has been sufficiently accomplished.

---
### Project Step 2: Define project tasks/activities

Each goal or sub-set of goals should be matched to the tasks required to accomplish them. Team should agree on the tasks that will define the success of each goal.

{{< figure src="/softdev2-resources/images/pm/goaltasks.png" height=400 >}}

---
### Project Step 3: Determine and verify resource requirements

{{% fragment %}} **The most important here is to be realistic**, meaning to determine what resources you need (like people, time, money, space, computers, software, etc.) to get the job done correctly, on time, and on budget. {{% /fragment %}}

{{% fragment %}} * Most common mistake is to underestimate the amount and type of resources required, which leads to projects that run over budget and fall behind schedule. 

DO NOT:
  • Squeeze a project into a shorter time frame to please your boss
  • Cut corners to minimize resource requirements
  • Plan on a best-case basis, i.e. "If everything goes correctly, we will finish on time." 
{{% /fragment %}}

{{% fragment %}} * A good idea is to build in a safety margin of 20% in terms of time and budget, which will give additional time to deal with unexpected occurrences.{{% /fragment %}}

{{% fragment %}} * Once the requirements have been set, it is important to make sure that the team has access to them to minimize risk.{{% /fragment %}}

---
### Project Step 4: : Identify risks and develop backup plans

{{% fragment %}} Projects always involve an amount of uncertainty (risk) that may lead to problems and surprises during the project development. {{% /fragment %}} 
{{% fragment %}} As a professional you will be required to help get the job done. You must learn how to deal with surprises and adversity, and not be pushed around by them. {{% /fragment %}}

{{% slide notes="As an AGILE TEAM MEMBER, if you are waiting on a team member to accomplish a task and they are behind, it is your responsibility to help them in any way you can. If you cannot help them, you must make sure they get the help to accomplish their task. Any excuse makes you look like you are not a team player." %}}

{{% fragment %}} Risk management is important as it helps the team accomplish the project with as little trouble as possible, and could be very complex.{{% /fragment %}}
{{% fragment %}} One simple idea is to identify the risks for each task and build a backup plan to help keep you on schedule.

{{< figure src="/softdev2-resources/images/pm/taskrisk.png" height=300 >}}
{{% /fragment %}}

---
## Jira

{{% fragment %}} <p align='left'> * Originally proposed by Jeff Sutherland in 90s, then improved by Schwaber and Beedle </p> {{% /fragment %}}

{{% fragment %}} <p align='left'> * In 1993, J. Sutherland borrowed term ‘scrum’ from Takeuchi and Nonaka, “The New Product Development Game”, Havard Business  Review, 1986 </p> {{% /fragment %}}

{{% fragment %}} <p align='left'> * Takeuchi and Nonaka compare high-performing, cross-functional teams to the scrum formation used by Rugby teams. </p> {{% /fragment %}} 

{{< figure src="/softdev2-resources/images/scrum/scrumrugby.jpg" height=400 >}}

---

### Scrum

{{% fragment %}} <p align='left'> * In rugby scrum is the power struggle between two teams to advance on the field </p> {{% /fragment %}}

{{% fragment %}} <p align='left'> * It requires complete team work, hard work, and strength. That meaning translates to software development </p> {{% /fragment %}}


{{< figure src="/softdev2-resources/images/scrum/scrumrugby.jpg" width=400 >}}

See original article from [Scrum Alliance](https://www.scrumalliance.org/why-scrum) 

---

### Scrum and Agile

{{% fragment %}} Scrum is one of several agile frameworks.{{% /fragment %}}

{{% fragment %}} **Scrum is the most popular agile framework.**

{{< figure src="/softdev2-resources/images/agilestatus-methods.png" width="600" >}}
{{% /fragment %}}

---

### Scrum Definition

**Scrum: An [agile] framework within which people can address complex adaptive problems, while productively and creatively delivering products of the highest possible value.**

{{% fragment %}} Scrum refers to a lightweight framework that is used in every industry to deliver complex, innovative products and services that truly delight customers. It is **simple to understand, but difficult to master**.{{% /fragment %}}

{{% fragment %}} Scrum fulfils the vision of the Agile Manifesto by helping individuals and businesses organize their work to 
* maximize collaboration, 
* minimize errors, 
* deliver frequently, and 
* create multiple opportunities to inspect and adapt.
{{% /fragment %}}
 
[Scrum Guide, November 2017 version](https://www.scrumalliance.org/about-scrum/definition)

---

### How Scrum works

**Scrum works by delivering large projects in small chunks of the product that a team can begin and complete in one, short timeboxed iteration called sprint.**

{{% fragment %}} Scrum is also both **iterative** and **incremental**.{{% /fragment %}}
 
---

### Scrum Framework

**People are the focus of Scrum.**

{{% fragment %}} **Scrum Teams** include people with diverse skillsets; each team has all of the capabilities necessary to deliver a piece of functionality from idea to delivery. {{% /fragment %}}

{{% fragment %}} **Sprint** is a short (one to four weeks long) timeframe during which the team works on some chunks of the product. 
{{% /fragment %}}

---

### Scrum Team

Scrum Team includes three roles: **Scrum Master, Product Owner, and Development Team**. 

{{% fragment %}} The **Scrum Master** helps the Scrum Team perform at their highest level. They also protect the team from both internal and external distractions. Scrum Masters hold the Scrum Team accountable to their working agreements, Scrum values, and to the Scrum framework itself.
{{% /fragment %}}

{{% fragment %}} The **Product Owner** defines the what--as in what the product will look like and what features it should contain. Product Owner helps build and clarify the product backlog and ensures that everyone knows the priorities.
{{% /fragment %}}

{{% fragment %}} The **Development Team** decides how to accomplish the work set forth by the Product Owner. Development Teams are structured and empowered to organize and manage their own work.
{{% /fragment %}}
 
---

### Sprint

{{% fragment %}} **Sprint** is a short (one to four weeks long) timeframe during which the team works on some chunks of the product. 
{{% /fragment %}}

{{% fragment %}} * Each sprint begins with a plan followed by building and then testing the code, and ends with a review of the work completed and an additional review of the way in which the team worked together (retrospectives). 
{{% /fragment %}}

{{% fragment %}} * During each sprint, the team completes one or more increments of the project. Each completed increment must be fully tested and fully approved by the end of the sprint (potentially deliverable).{{% /fragment %}}

 {{< figure src="/softdev2-resources/images/scrum/sprint.png" width=500 >}}
 
 
---

### Scrum Values

{{% fragment %}} **Commitment**: Scrum teams work together as a unit, members trust each other to follow through on what they say they are going to do. 
{{% /fragment %}}

{{% fragment %}} **Courage**: Scrum teams must feel safe enough to say no, to ask for help, and to try new things. 
{{% /fragment %}}

{{% fragment %}} **Focus**: It means that whatever Scrum teams start they finish. 
{{% /fragment %}}

{{% fragment %}} **Openness**: Scrum teams consistently seek out new ideas and opportunities to learn. 
{{% /fragment %}}

{{% fragment %}} **Respect**: Scrum team members respect each other’s ideas, give each other permission to have a bad day once in a while, and recognize each other’s accomplishments. They show respect to one another, to the product owner, to stakeholders, and to the ScrumMaster. 
{{% /fragment %}}

---

### Scrum Artifacts

{{% fragment %}} The **Product Backlog** is an ordered list of everything that is known to be needed in a product. 
{{% /fragment %}}

{{% fragment %}} The **Sprint Backlog** is a list of everything that the team commits to achieve in a given Sprint. Once created, no one can add to the Sprint Backlog except the Development Team. If an item needs to be dropped from the Sprint Backlog, they must negotiate it with the Product Owner. 
{{% /fragment %}}

{{% fragment %}} At the end of every Sprint, the team must complete a **potentially releasable product increment** meaning that it is done as agreed upon. 
{{% /fragment %}}

---

### Tracking Progress

**Burndown Chart** Sprint burndowns are a graphical way of showing how much work is remaining in the sprint, typically in terms of task hours.
As the work progresses, the amount of work remaining should steadily decrease and should trend toward being complete on the last day of the sprint. 

{{% fragment %}} {{< figure src="/softdev2-resources/images/scrum/sprintburndownchart.png" width=300 >}} {{% /fragment %}}
{{% fragment %}} {{< figure src="/softdev2-resources/images/scrum/sprintburndownchartstudents.png" width=300 >}} {{% /fragment %}}

---

### Daily Scrum

<div style="width: 50%">
{{< youtube kKIc1NFO-AU >}}
</div>
    
---

### Daily Scrum

What do you see in the clip?

{{% fragment %}} * **Scrum Team** 
Members stand up in circle facing everyone. Also, someone else just "observing". Meeting is less than 15 minutes long. 
{{% /fragment %}} 

{{% fragment %}} * **Scrum Master** 
Scrum Master starts the meeting. Makes sure everyone talks in order from left to right. 
{{% /fragment %}}

{{% fragment %}} * Each member answers to **3 questions** regarding meeting the sprint goal: 
{{% /fragment %}}

{{% fragment %}}       1. What did I worked on since last meeting? 
{{% /fragment %}}

{{% fragment %}}       2. What I am working on now? 
{{% /fragment %}}

{{% fragment %}}       3. Do I see any impediments? 
{{% /fragment %}}

---

### Now ... Scrum

Bonus scrum meeting [Sillicon Valey]: 
<div style="width: 70%">
{{< youtube Ps4nSgyieIw >}}
</div>

---

### Now ... Scrum

{{< figure src="/softdev2-resources/images/scrum/wescrum.png" width=700 >}}

