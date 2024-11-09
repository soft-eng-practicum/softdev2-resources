+++
date = "2021-01-05T12:00:00Z"
lastmod = "2021-01-05T12:00:00Z"
publishdate = "2021-01-05T12:00:00Z"

title = "Bootstrap Workshop"
description = "This workshop will cover the Bootstrap CSS framework"
author = "Ryan Cosentino"

weight = -3

outputs = ["Reveal"]

[reveal_hugo]
custom_css = "css/docker.css"
margin = 0.1
+++

<style type="text/css">
	.bg-primary { background-color: #007bff; }
	.bg-secondary { background-color: #6c757d; }
	.bg-success   { background-color: #28a745; }
	.bg-danger    { background-color: #dc3545; }
	.bg-warning   { background-color: #ffc107; }
	.bg-info      { background-color: #17a2b8; }
	.bg-white     { background-color: #fff;    }
	.bg-light     { background-color: #f8f9fa; }
	.bg-dark      { background-color: #343a40; }

	.text-primary { color: #007bff; }
	.text-secondary { color: #6c757d; }
	.text-success   { color: #28a745; }
	.text-danger    { color: #dc3545; }
	.text-warning   { color: #ffc107; }
	.text-info      { color: #17a2b8; }
	.text-white     { color: #fff;    }
	.text-light     { color: #f8f9fa; }
	.text-dark      { color: #343a40; }

	div[class^="bg-"] {
		border-radius: .25rem;
		padding: 15px 0;
	}
</style>

## Welcome to the Bootstrap Workshop

Ryan Cosentino

<img src="/softdev2-resources/images/jquery/logo.png" alt="jQuery and Bootstrap" width="700" class="plain"/>

---

## Goal

The goal of this workshop is to use Bootstrap and jQuery to create a form that can add or remove courses from a table:

<img src="/softdev2-resources/images/bootstrap/form-4.png" width="400" style="border: none;"/>

---

## What is Bootstrap?

**Bootstrap** is a widely used CSS framework that can be used to easily and consistently style HTML elements using CSS and (optionally) JavaScript. Bootstrap contains styled components for buttons, cards, dropdowns, input groups, navigation bars, tooltips, and many others, along with utility classes for common CSS properties.

**Bootstrap** was originally developed at Twitter for their internal web applications but was eventually released to the public as an open source project in 2011.

Bootstrap's documentation can be found [here](https://getbootstrap.com/docs/5.0/getting-started/introduction/)
and their source code (GitHub) [here](https://github.com/twbs/bootstrap).

---

## "Installing" Bootstrap

Similar to jQuery, while Bootstrap can be downloaded and used locally, it is commonly accessed via a CDN (content delivery network).

Visit the following [link](https://www.w3schools.com/tryit/tryit.asp?filename=tryhtml_default) and replace the default HTML in the editor with the following:

```html
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<title>Add Courses to Table</title>

	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
</head>

<body class="container-fluid">

	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

	<script>
		// Your Code
	</script>
</body>
</html>
```

---

## "Installing" Bootstrap

Clicking the "Run" button will load your HTML.

The `<link>` tag downloads the Bootstrap CSS styles. Note that some components need JavaScript and require an additional script tag, however we won't we using those components here.

---

## Spacing Classes

One of the most helpful Bootstrap utility CSS classes are those made for setting padding and margins. They are named using the format:

`{property}{sides}-{size}`

Where `property` can be:

* `m` - to set margin
* `p` - to set padding

---

## Spacing Classes

`{property}{sides}-{size}`

Where `sides` can be:

* `t` - top
* `b` - bottom
* `l` - left
* `r` - right
* `x` - left and right
* `y` - top and bottom
* blank - sets all 4 sides

---

## Spacing Classes

`{property}{sides}-{size}`

Where `size` can be:

* `0` - set value to `0`
* `1` - set value to `spacer * .25`
* `2` - set value to `$spacer * .5`
* `3` - set value to `$spacer`
* `4` - set value to `$spacer * 1.5`
* `5` - set value to `$spacer * 3`
* `auto` - set value to `auto`

---

## Spacing Classes

Examples include

* `m-0` sets all margins to 0
* `mb-2` sets a medium bottom margin
* `pl-5` sets a large left padding
* `px-1` sets a small left and right padding

These can be used to easily add padding and margins to elements without inline CSS or having to define rules in an additional style sheet.

---

## Bootstrap Colors

There are a set of main colors that can be applied to many Bootstrap components:

<div style="display: grid; grid-template-columns: repeat(2, 1fr); gap: 10px;">
<p class="text-primary">primary</p>
<p class="text-secondary">secondary</p>
<p class="text-success">success</p>
<p class="text-danger">danger</p>
<p class="text-warning">warning</p>
<p class="text-info">info</p>
<p class="text-white">white</p>
<p class="text-light">light</p>
<p class="text-dark">dark</p>
</div>

---

## Bootstrap Colors

For example, the background utility classes are:

<div style="display: grid; grid-template-columns: repeat(2, 1fr); gap: 15px;">
<div class="bg-primary text-white">.bg-primary</div>
<div class="bg-secondary text-white">.bg-secondary</div>
<div class="bg-success text-white">.bg-success</div>
<div class="bg-danger text-white">.bg-danger</div>
<div class="bg-warning text-dark">.bg-warning</div>
<div class="bg-info text-white">.bg-info</div>
<div class="bg-white text-dark">.bg-white</div>
<div class="bg-light text-dark">.bg-light</div>
<div class="bg-dark text-white">.bg-dark</div>
</div>

---

## Bootstrap Colors

Lets give our page a light gray background:

```html {hl_lines=["1"]}
<body class="container-fluid bg-light">

	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

	<script>
		// Your Code
	</script>
</body>
```

---

{{% section %}}

## Cards

Now let's move on to Bootstrap components which are physical elements displayed on the page.

A **card** is a flexible and extensible container with rounded borders. Add the following to the top of your body, where we're creating a card with a medium margin and padding:

```html {hl_lines=["3-5"]}
<body class="container-fluid bg-light">

	<div class="card m-3 p-3">
		hello
	</div>

	...
</body>
```

---

## Cards

After pressing Run, you should see something like this:

<img src="/softdev2-resources/images/bootstrap/card.png" width="800" style="border: none;"/>

{{% /section %}}

---

{{% section %}}

## Form Text Fields

In this card we'll make a form that creates courses. Replace the text `hello` with the following:

```html {hl_lines=["2-7"]}
<div class="card m-3 p-3">
	<legend class="border-bottom mb-4">Add Course</legend>
	<div class="form-group">
		<label>Subject</label>
		<input type="text" class="form-control" id="subject">
		<small class="form-text text-muted">Course's Subject</small>
	</div>
</div>
```

Here, the `legend` tag acts like a title and we're giving it a bottom border and large bottom margin. The `input` element will be stylized since it has the `form-control` Bootstrap class.

---

## Form Text Fields

After pressing Run, you should see something like this:

<img src="/softdev2-resources/images/bootstrap/form-1.png" width="800" style="border: none;"/>

{{% /section %}}

---

{{% section %}}

## Form Text Fields

Now lets add an input for the course number and title:

```html {hl_lines=["8-17"]}
<div class="card m-3 p-3">
	<legend class="border-bottom mb-4">Add Course</legend>
	<div class="form-group">
		<label>Subject</label>
		<input type="text" class="form-control" id="subject">
		<small class="form-text text-muted">Course's Subject</small>
	</div>
	<div class="form-group">
		<label>Number</label>
		<input type="text" class="form-control" id="number">
		<small class="form-text text-muted">Course's Number</small>
	</div>
	<div class="form-group">
		<label>Title</label>
		<input type="text" class="form-control" id="title">
		<small class="form-text text-muted">Course's Title</small>
	</div>
</div>
```

---

## Form Text Fields

After pressing Run, you should see something like this:

<img src="/softdev2-resources/images/bootstrap/form-2.png" width="700" style="border: none;"/>

{{% /section %}}

---

{{% section %}}

## Form Buttons

Now lets add two buttons for creating and deleting courses:

```html {hl_lines=["8-12"]}
<div class="card m-3 p-3">
	...
	<div class="form-group">
		<label>Title</label>
		<input type="text" class="form-control" id="title">
		<small class="form-text text-muted">Course's Title</small>
	</div>
	<div>
		<button id="add-course" type="submit" class="btn btn-primary">Add Course</button>
		<button id="delete-course" type="button" class="btn btn-danger">Delete Last Course</button>
	</div>
</div>
```

Here, the `btn` class activates the Bootstrap styles and the `btn-color` class colors the button, where `color` can be any of the previously mentioned colors. 

---

## Form Buttons

After pressing Run, you should see something like this:

<img src="/softdev2-resources/images/bootstrap/form-3.png" width="600" style="border: none;"/>

{{% /section %}}

---

## Tables

Now lets create a table under the form which will list our courses:

```html {hl_lines=["5-10"]}
<div class="card m-3 p-3">
	...
</div>

<div class="card m-3">
	<table id="courses" class="table table-striped mb-0">
		<thead><tr><th>Subject</th><th>Number</th><th>Title</th></tr></thead>
		<tbody></tbody>
	</table>
</div>
```

Here, the `table` class activates the Bootstrap styles and the `table-striped` class makes the rows alternate between a white and gray background. 

---

## JavaScript

The only thing left is to program our "Add Course" and "Delete Last Course" buttons. To do this we'll use jQuery.

In the last script tag (the one with a comment), add the following:

```html
<script>
	table = $("table#courses > tbody")
</script>
```

---

## JavaScript - Add

For the first button, we need to read all three input fields and use their values to construct a table row, then add the row to the end of the table:

```html {hl_lines=["3-9"]}
<script>
	table = $("table#courses > tbody")
	$("button#add-course").click(function() {
		table.append(`<tr>
			<td>${$("#subject").val()}</td>
			<td>${$("#number").val()}</td>
			<td>${$("#title").val()}</td>
		</tr>`);
	});
</script>
```

---

## JavaScript - Delete

For the second button, we need to delete the last row in the table:

```html {hl_lines=["10-12"]}
<script>
	table = $("table#courses > tbody")
	$("button#add-course").click(function() {
		table.append(`<tr>
			<td>${$("#subject").val()}</td>
			<td>${$("#number").val()}</td>
			<td>${$("#title").val()}</td>
		</tr>`);
	});
	$("button#delete-course").click(function() {
		table.children().last().remove();
	});
</script>
```

---

## Result

<img src="/softdev2-resources/images/bootstrap/form-4.png" height="500" style="border: none;"/>

{{% reveal-prevnext-links %}}
