+++
date = "2024-11-09T09:00:00Z"
lastmod = "2024-11-09T09:00:00Z"
publishdate = "2024-11-09T09:00:00Z"

title = "Portfolio Workshop"
description = "Building a personal portfolio site using a static site builder"
author = "Cengiz Gunay"

weight = 0

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

<img src="/softdev2-resources/images/jamstack/portfolio-workshop.svg" alt="Portfolio site QR code" 
     width="300" class="plain"
     style="float: right" />

### Building a personal portfolio<br> using a static site builder

Cengiz Gunay

{{% note %}} 
add logos here
{{% /note %}} 

---

## What is a static site???

From [JAMstack.WTF](https://JAMstack.WTF) :

<iframe src="https://jamstack.wtf/" style="" width="100%" height="600">
</iframe>

{{% fragment %}}
This presentation was also built on a static site.
{{% /fragment %}}

---

## Advantages of static sites

- Host easily:
    - by serving a folder on the internet without a *backend* process
    - Many free services for hosting:<br> 
    [Github Pages](https://pages.github.com/), [Netlify](https://www.netlify.com/), [Amazon S3 bucket](https://docs.aws.amazon.com/AmazonS3/latest/userguide/WebsiteHosting.html), [Gitlab Pages](https://docs.gitlab.com/ee/user/project/pages/)
- Use text and Markdown instead of writing HTML
- Use *many* existing templates

---

### Templates and Technologies

From [https://jamstackthemes.dev](https://jamstackthemes.dev/#ssg=jekyll&archetype=portfolio) :

<iframe src="https://jamstackthemes.dev/#ssg=jekyll&archetype=portfolio" style="" width="100%" height="600">
</iframe>

