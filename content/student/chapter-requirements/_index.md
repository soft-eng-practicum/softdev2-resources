+++
title = "Requirements in Agile"
outputs = ["Reveal"]
weight = 03
+++

### Requirements in Agile

#### ITEC 3870 Software Development II, <br> Anca Doloc-Mihu and Cengiz Günay

(License: [CC BY-SA 4.0](http://creativecommons.org/licenses/by-sa/4.0/))
    
{{< figure src="/softdev2-resources/images/requirements/requirements.png" width=500 >}}

---

## What is a Requirement? 

{{% fragment %}} **Requirements are the descriptions of the services provided by a system and its operational constraints** {{% /fragment %}}

{{% fragment %}} <p align='left'> * It is about <b>WHAT</b> not HOW </p> {{% /fragment %}}
 
{{% fragment %}} <p align='left'> * It varies greatly. It may range from a high level abstract statement to a detailed mathematical specification </p> {{% /fragment %}}

{{% fragment %}} <p align='left'> * It may be as complex as a 500 pages of description </p> {{% /fragment %}}


{{< figure src="/softdev2-resources/images/requirements/requirements2.png" width=400 >}}

---

### Why we need requirements?

**Advantages of a complete set of documented requirements**

{{% fragment %}} <p align='left'> * Ensures the user (not the developer) drives system functionalities </p> {{% /fragment %}}

{{% fragment %}} <p align='left'> * Helps avoiding confusion and arguments </p> {{% /fragment %}}

{{% fragment %}} <p align='left'> * Helps minimizing the changes which reduces the cost </p> {{% /fragment %}}

{{% fragment %}} <p align='left'> <b>Changes in requirements are expensive.</b> </p> {{% /fragment %}}

---

### Costs of changing the requirements

{{% fragment %}} <p align='left'>  3 x as much during the design phase </p>
{{% /fragment %}}

{{% fragment %}} <p align='left'> 5-10 x as much during implementation </p>
{{% /fragment %}}

{{% fragment %}} <p align='left'> 10-100 x as much after release </p>

[Code Complete, p30](https://learning.oreilly.com/library/view/code-complete-second/0735619670/)
{{% /fragment %}}

---

### Requirements help reduce errors

**A careful requirements process doesn’t mean there will be no changes later**

{{% fragment %}} Average project experiences about 25% changes in the requirements 
{{% /fragment %}}

{{% fragment %}} This accounts for 70-80% if the rework of the project 
[Code Complete, p40](https://learning.oreilly.com/library/view/code-complete-second/0735619670/)
{{% /fragment %}}

{{% fragment %}} Important to plan for requirements changes 
{{% /fragment %}}

{{% fragment %}} <p align='left'> Example: the case of critical applications </p>
{{% /fragment %}}

---

### Different levels of abstraction

**Abstract level: User requirements**

{{% fragment %}} <p align='left'> * Usually the first attempt for the description of the requirements <br>
* Includes services and constraints of the system <br>
* Given in natural language or diagrams <br>
* Readable by everybody, i.e. understandable by the user <br>
* Serve business objectives <br>
</p> {{% /fragment %}}

{{% fragment %}} <p align='left'> <em>Example of User requirement:</em> <br>
As a user who found a new job announcement, I want to add a new position to the website so s/he can start working on doing the initial research and apply to it.</p>
{{% /fragment %}}
 
---

### Different levels of abstraction

**Not abstract level: System requirements**

{{% fragment %}} <p align='left'> * Includes services and constraints of the system in detail <br>
* Useful for the design and development <br>
* Precise and cover all cases <br>
* Structured presentation <br>
</p> {{% /fragment %}}

{{% fragment %}} <p align='left'> <em>Example of System requirement:</em> <br>
A registered user on the academic jobs website should be able to add a new position listing with the name of the school and academic unit, date of posting, date of expiry, application deadline, and contact and application details. The interaction fails if: the position is already listed, the application deadline is in the past, position announcement is expired, or the contact information is missing. If fails, point mistakes to user and ask the user to fix and resubmit. </p>
{{% /fragment %}}

---

### Types of requirements

{{% fragment %}} <p align='left'> <b> Functional requirements </b><br>
* Services the system should provide <br>
* What the system should do or not do in reaction to particular situations <br></p>
{{% /fragment %}}


{{% fragment %}} <p align='left'> <b> Non-functional requirements  </b><br>
* Constraints on the services or functions offered by the system <br>
* Examples: Timing constraints (e.g., one semester), constraints on the development process (CASE, language, development method…), standards etc<br></p>
{{% /fragment %}}
    
    
{{% fragment %}} <p align='left'> <b>  Domain requirements </b><br>
* From the application domain of the system <br>
* May be functional or non-functional <br>
Examples: Medicine, library, physics, chemistry <br></p>
{{% /fragment %}}
    
{{% fragment %}} Note: You can have all of user/system functional/nonfunctional requirements. 
{{% /fragment %}}
 
---

### Problems with user requirements

*Can you think of any issues?*

{{% fragment %}} <p align='left'> * Lack of clarity - ambiguous language </p> {{% /fragment %}}

{{% fragment %}} <p align='left'> * Confusion - design information are not distinguished between functional and non-functional requirements  </p> {{% /fragment %}}
    
{{% fragment %}} <p align='left'> * Several requirements are defined as a single one </p> {{% /fragment %}}
    
{{% fragment %}} <p align='left'> * Incompleteness – requirements may be missing </p> {{% /fragment %}}

{{% fragment %}} <p align='left'> * Inconsistency – requirements may contradict themselves </p> {{% /fragment %}}
 
---

### Guideline to minimize issues with user requirements

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

### Collecting Requirements

## The Client Meeting 
**next**
{{< figure src="/softdev2-resources/images/requirements/clientmeeting.jpg" width=700 >}}

