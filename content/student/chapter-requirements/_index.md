+++
title = "Requirements in Agile"
outputs = ["Reveal"]
weight = 3
+++

{{% reveal-titlepage figure="/softdev2-resources/images/requirements/requirements.png" %}}

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

<p align='left'> <b> Product requirements</b> - related to product behavior <br>
Example: Timing, performance, memory, reliability, portability, usability

<b>Organizational requirements</b> related to policies and procedures in the customer’s and developer’s organizations<br>
Example: Process requirements, implementation requirements, delivery requirements

<b>External requirements</b> related to factors externals to the system and the development process<br>
Example: Interoperability, legislation, ethics 
</p>

{{% fragment %}} {{< figure src="/softdev2-resources/images/requirements/nonfctrequirements.png" width=400 >}} {{% /fragment %}}

---

### How to test non-functional requirements

**It is important to be able to test/verify/check non-functional requirements**

{{% fragment %}} {{< figure src="/softdev2-resources/images/requirements/nonfctreqtest.png" width=500 >}} {{% /fragment %}}
    
---

### Requirement engineering

{{< figure src="/softdev2-resources/images/requirements/reqengineering.png" width=700 >}}

---

### Feasibility study

* It is done at first to decide whether or not the project is worthwhile

* Look at different perspectives: market analysis, financial, schedule, technical, resource, legal…

* Target is to make you aware of the risks

How to do the study

* Consult information sources: managers, software engineers, end users…

* Collect information from interviews, surveys, questionnaires…

Should be short (2-3 weeks)

---

### Feasibility study

* What if the system wasn’t implemented?

* What are current process problems?

* Do technical resources exist?

* What is the risk associated with the technology?

* Is new technology needed? What skills?

* How will the proposed project help?

* How does the proposed project contribute to the overall objectives of the organization?

* Have the benefits identified with the system being identified clearly?

---

### Feasibility study

* What will be the integration problems?

* What facilities must be supported by the system?

* What is the risk associated with cost and schedule?

* What are the potential disadvantages/advantages?

* Are there legal issues?

* Are there issues linked with the fact that this is an offshore project?

and more

---

### Requirements as user stories

{{< figure src="/softdev2-resources/images/comics/requirementsuserstory.jpg" width=700 >}}

---

### From requirements to user stories

{{< figure src="/softdev2-resources/images/requirements/reqtousecase.png" width=700 >}}

---


### Use-case Diagram

{{< figure src="/softdev2-resources/images/requirements/usecase.png" width=700 >}}

---

### From a “use case” to “user stories”

{{% fragment %}} <p align='left'> * Use case diagram shows <b>all things an actor can do </b> </p> {{% /fragment %}}

{{% fragment %}} <p align='left'> * Can be broken down to individual <b> user stories</b> </p> {{% /fragment %}}
    
   
