+++
title = "Project Management with JIRA"
outputs = ["Reveal"]
weight = 5
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
### Project Step 4: Identify risks and develop backup plans

{{% fragment %}} Projects always involve an **amount of uncertainty (risk)** that may lead to problems and surprises during the project development. {{% /fragment %}} 
{{% fragment %}} As a professional you will be required to help get the job done. You must learn how to deal with surprises and adversity, and not be pushed around by them. {{% /fragment %}}

{{% fragment %}} Risk management is important as it helps the team accomplish the project with as little trouble as possible, and could be very complex.{{% /fragment %}}

{{% fragment %}} One simple idea is to identify the risks for each task and build a backup plan to help keep you on schedule.
{{< figure src="/softdev2-resources/images/pm/taskrisk.png" height=150 >}}
{{% /fragment %}}

---
{{% slide notes="As an AGILE TEAM MEMBER, if you are waiting on a team member to accomplish a task and they are behind, it is your responsibility to help them in any way you can. If you cannot help them, you must make sure they get the help to accomplish their task. Any excuse makes you look like you are not a team player." %}}

### Project Step 5: Develop a schedule

Develop a schedule that includes the tasks, people responsible for these tasks, and a timeline.

{{< figure src="/softdev2-resources/images/pm/gantt-schedule.png" height=300 >}}

---
### Project Step 6: Execute the schedule

During this stage, the project manager is responsible for coordinating, though group members should communicate among themselves as required. 

Each team member should document their activities during this step. 

---
### Project Step 7: Finish the project and assessing performance 

After the goals have been achieved, it is good practice to evaluate the performance of the project team. We call this **retrospective session**.

{{% fragment %}} To review the team's performance we will use **Burndown** ([see](../chapter-agiledevelopment/chapter-scrum/#/11)) and **Velocity** charts. {{% /fragment %}}

{{% fragment %}} Velocity is the amount of work a team can handle during a set period of time (sprint). {{% /fragment %}}
{{% fragment %}} The velocity chart is a visual representation of the project’s progress. {{% /fragment %}}

{{% fragment %}} Managers use velocity to measure the rate at which an Agile development team delivers value to a business.
{{< figure src="/softdev2-resources/images/scrum/sprintburndownchartstudents.png" height=200 >}}
{{% /fragment %}}

---
### Project Management in Our Case

{{% fragment %}} * We are using AGILE during the semester, with the project being split int 3 main phases ([see](../chapter-project-design/) for details on each phase). Thus, Steps 1-7 need to be implemented for each of these phases. {{% /fragment %}}

{{% fragment %}} * To help the project management process and the team build up a schedule and keep track of the tasks, we will be using a project management tool called [Jira](https://www.atlassian.com/software/jira) 

{{< figure src="/softdev2-resources/images/pm/jira.png" height=300 >}}
{{% /fragment %}}

---
## Jira

{{% reveal-prevnext-links %}}
