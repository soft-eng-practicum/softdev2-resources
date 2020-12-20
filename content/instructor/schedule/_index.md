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
     setup: "Initialize LMS, archive and clear discussion area, post syllabus, post intro slides, set up entry quiz, make discussion posts for welcome message, <i>Message in a Bottle</i>, and <i>Introductions</i>",
     topic: "Intro slides. Warning about self work. Go over success tips on LMS.",
     handson: "Entry quiz, answer the questions, and post resume.", module: 1, 
     assignment: "Post introductory resumes. Regiser with version control (Github) and chat/forum services (Discord, Reddit).", days: 7},
    ,
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
