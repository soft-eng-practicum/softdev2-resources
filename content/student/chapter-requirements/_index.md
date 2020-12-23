+++
title = "Requirements in Agile"
outputs = ["Reveal"]
weight = 03
+++

### Requirements in Agile

#### ITEC 3870 Software Development II, <br> Anca Doloc-Mihu and Cengiz Günay

(License: [CC BY-SA 4.0](http://creativecommons.org/licenses/by-sa/4.0/))
    
{{< figure src="/softdev2-resources/images/requirements/requirements.png" width=500 >}}

Some slides courtesy of Joan Smith, Eugene Agichstein, and the Internets.

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

### Problems with user requirements

*Can you think of any issues?*

{{% fragment %}} <p align='left'> * Lack of clarity - ambiguous language </p> {{% /fragment %}}

{{% fragment %}} <p align='left'> * Confusion - design information are not distinguished between functional and non-functional requirements  </p> {{% /fragment %}}
    
{{% fragment %}} <p align='left'> * Several requirements are defined as a single one </p> {{% /fragment %}}
    
{{% fragment %}} <p align='left'> * Incompleteness – requirements may be missing </p> {{% /fragment %}}

{{% fragment %}} <p align='left'> * Inconsistency – requirements may contradict themselves </p> {{% /fragment %}}
 
---

### Guideline to minimize issues with user requirements

{{% fragment %}}  <p align='left'> * Separate functional and non-functional requirements </p> {{% /fragment %}}

{{% fragment %}}  <p align='left'> * Requirements must be clearly identified by a number </p> {{% /fragment %}}

{{% fragment %}}  <p align='left'> * Include a rationale for each requirement – this helps clarify reasoning behind the requirements and may be useful for evaluating potential changes in the requirements</p> {{% /fragment %}}

{{% fragment %}}  <p align='left'> * Team should decide to use a standard form/template </p> {{% /fragment %}}

{{% fragment %}}  <p align='left'> * Have a clear way to establish and distinguish requirements priorities </p> {{% /fragment %}}

{{% fragment %}}  <p align='left'> * Write test cases; requirements must be testable </p> {{% /fragment %}}

{{% fragment %}}  <p align='left'> * Deliverables </p> {{% /fragment %}}

---

### System requirements

{{% fragment %}}  <p align='left'> * Elaborate the user requirements to get a precise, detailed and complete version of them </p> {{% /fragment %}}

{{% fragment %}}  <p align='left'> * Used by designers and developers </p> {{% /fragment %}}

{{% fragment %}}  <p align='left'> * Write system requirements using natural language </p> {{% /fragment %}}

{{% fragment %}}  <p align='left'> * Forms/templates and logic are used to bring some rigor, but make sure everyone understands them </p> {{% /fragment %}}

{{% fragment %}}  <p align='left'> <em> Example: If sales for current month are below target sales, then report is to be printed unless difference between target sales and actual sales is less than half of difference between target sales and actual sales in previous month, or if difference between target sales and actual sales for the current month is less than 5%. </em></p> 
{{% /fragment %}}

{{% fragment %}}Problems: * Difficult to read * Ambiguity: 5% of what? * Incomplete: what if sales are above target sales? 
{{% /fragment %}}

---

### Types of requirements

{{% fragment %}} <p align='left'> <b> Functional requirements </b><br>
* Services the system should provide <br>
* What the system should do or not do in reaction to particular situations <br></p>
{{% /fragment %}}


{{% fragment %}} <p align='left'> <b> Non-functional requirements  </b> - might be more critical than functional ones <br>
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

### Non-functional requirements categories

**Product requirements** - related to product behavior

Example: Timing, performance, memory, reliability, portability, usability

**Organizational requirements** related to policies and procedures in the customer’s and developer’s organizations

Example: Process requirements, implementation requirements, delivery requirements

**External requirements** related to factors externals to the system and the development process

Example: Interoperability, legislation, ethics

{{% fragment %}} {{< figure src="/softdev2-resources/images/requirements/nonfctrequirements.png" width=300 >}} {{% /fragment %}}

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

