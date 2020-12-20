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
    <tr><th>Week#</th><th>Module</th><th>Setup</th><th>Topic</th><th>Hands-on</th><th>Assignment</th></tr>
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
     topic: "JIRA, Trello, Zenhub. Estimation, burndown charts.",
     handson: "Register into JIRA and start homework. Stand up meeting practice.", module: 1, 
     assignment: "JIRA practice and entering project user stories. Prepare 1st iteration presentations.", days: 14},
    {name: "Requirements phase presentations",
     setup: "Post midterm",
     topic: "Object-oriented programming patterns, software licensing and intellectual property",
     handson: "Class presentations", module: 1, 
     assignment: "Take-home midterm, voting and feedback for recorded presentations", days: 7},
    {name: "Register for semester-end symposium, presentation schedule",
     setup: "Close sprints in JIRA. Post article and tool topics to select from.",
     topic: "Coding workshops and guest speakers. Mid-term exam review.",
     handson: "", module: 1, 
     assignment: "Project summary, select individual presentation topic", days: 14},
    {name: "Github social computing",
     setup: "Post individual presentation schedule",
     topic: "Git branching and workflows",
     handson: "", module: 1, 
     assignment: "Mid-term evaluation, burndown chart, license and intellectual property agreement draft", days: 7},
    {name: "Client checkpoint phase deadline",
     setup: "",
     topic: "Individual article and tool presentations",
     handson: "", module: 1, 
     assignment: "Partially functional demo to client", days: 7*4},
    {name: "Final stretch phase deadline",
     setup: "Post flyers and project descriptions on website and on symposium site. Ask final feedback from clients.",
     topic: "Final technical presentations in class and user testing sessions in symposium",
     handson: "Symposium attendance", module: 1, 
     assignment: "Take-home final exam", days: 7}
    ];
	      
    // Read JSON and print out schedule table
    var moduleNum = 0;
    var startDay = 0;
    modules.forEach(item => {
      var row = document.createElement("tr");

      if (item.special) {
        row.innerHTML = "<td>"
          + (startDay/7 + 1) + "</td><td>"
          + item.special + "</td><td></td><td></td><td></td><td></td>";
      } else {
        moduleNum = moduleNum + item.module;
        row.innerHTML = 
          "<td>"
		  + ( startDay/7 + 1) + "</td><td>"
		  + item.name + "</td><td>"
          + item.setup + "</td><td>"
          + item.topic + "</td>" +
		  "<td>" + item.handson + "</td>" +
		  "<td>" + item.assignment + "</td>";
      }
      document.getElementsByClassName("schedule-table")[0].append(row);
      startDay = startDay + item.days;
    });
	      
</script>
