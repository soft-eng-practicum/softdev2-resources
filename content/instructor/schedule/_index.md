---
date: 2020-10-19T15:26:15Z
lastmod: 2020-12-20T15:26:15Z 
publishdate: 2019-11-23T15:26:15Z

title: Schedule
description: Schedule

weight: 1
---

<div class="content">
  <table class="schedule-table">
    <tr><th>#</th><th>On day</th><th>Module</th><th>Setup</th><th>Topic</th><th>Hands-on</th><th>Assignment</th></tr>
  </table>
</div>

<script>
  // Schedule as JSON
  var modules = [
    {name: "Semester overview and re-introduction to software engineering",
     setup: "Initialize LMS, archive and clear discussion area, post syllabus, post intro slides, set up entry quiz, make discussion posts for welcome message, <i>Message in a Bottle</i>, and <i>Introductions</i>. Post project ideas and potential clients.",
     topic: "Intro slides. Warning about self work. Go over success tips on LMS.",
     handson: "Entry quiz, answer the questions, and post resume.", module: 1, 
     assignment: "Post introductory resumes. Regiser with version control (Github) and chat/forum services (Discord, Reddit). Vote for project ideas.", days: 7},
    {name: "Technology overview, project/team selection, and requirements",
     setup: "Add everyone to LMS/version control/chat/discussion services. Post hackathon and local meetup schedules. Post requirements and Git lecture slides. Create team chat channels and code repositories with master branch force push protection.",
     topic: "Explain shortcut links on LMS for chat and discussion. Brief introduction to tools (e.g., Discord usage and channels).",
     handson: "Introduce and start assignment in class.", module: 1, 
     assignment: "Git+bash assignment; client meetings, read on Git and requirements.", days: 7},
    {name: "Markdown, team roles, technology overview",
     setup: "Post assignments and role presentation details on LMS. Schedule attending external meetup/hackathon event.",
     topic: "Announce project deadlines. Project setup help. Explain communication grading.",
     handson: "assignment, project set up, markdown", module: 1, 
     assignment: "Post team roles in Markdown README and Git branching homework. Read about Agile. Sign release waivers.", days: 7},
    {name: "Agile development, user stories, JIRA",
     setup: "post 1st iteration presentation deadline, and two JIRA assignments. Invitations for registering into JIRA, create JIRA project for practice assignment and one for each team. Add team managers as admin and tell them to add the rest of their teammates",
     topic: "JIRA, Trello, Zenhub. Estimation, burndown",
     handson: "register into JIRA and start homework.", module: 1, 
     assignment: "JIRA practice and entering project user stories. Prepare 1st iteration presentations.", days: 7}
    ];
	      
    // Read JSON and print out schedule table
    var moduleNum = 0;
    var startDay = 0;
    modules.forEach(item => {
      var row = document.createElement("tr");

      if (item.special) {
        row.innerHTML = "<td></td><td>"
          + startDay + "</td><td>"
          + item.special + "</td><td></td><td></td><td></td><td></td>";
      } else {
        moduleNum = moduleNum + item.module;
        row.innerHTML = "<td>" + (item.module?moduleNum:"") + "</td><td>"
		  + startDay + "</td><td>"
		  + item.name + "</td>"
          + item.setup + "</td><td>"
          + item.topic + "</td>" +
		  "<td>" + item.handson + "</td>" +
		  "<td>" + item.assignment + "</td>";
      }
      document.getElementsByClassName("schedule-table")[0].append(row);
      startDay = startDay + item.days;
    });
	      
</script>
