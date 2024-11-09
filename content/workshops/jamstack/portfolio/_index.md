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

<iframe src="https://jamstack.wtf/" style="" width="100%" height="400">
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
- Use *many* existing templates for portfolios, documentation sites, shopping, blogs, etc.

**First let's select a template!**


---

{{% section %}}

### Recommended templates (next page down)

https://jekyllthemes.io/theme/automatic-app-landing-page :
<iframe src="https://jekyllthemes.io/theme/automatic-app-landing-page" style="" width="100%" height="600">
</iframe>

---

https://jekyllthemes.io/theme/agency-jekyll-theme :
<iframe src="https://jekyllthemes.io/theme/agency-jekyll-theme" style="" width="100%" height="600">
</iframe>

---

https://jekyllthemes.io/theme/minimal-mistakes :
<iframe src="https://jekyllthemes.io/theme/minimal-mistakes" style="" width="100%" height="600">
</iframe>

---

### More templates

From [https://jamstackthemes.dev](https://jamstackthemes.dev/#ssg=jekyll&archetype=portfolio) :

<iframe src="https://jamstackthemes.dev/#ssg=jekyll&archetype=portfolio" style="" width="100%" height="600">
</iframe>

{{% /section %}}

--- 

{{% section %}}

### Once you select a Jekyll template

- Fork the Github repository
- Optional: Rename the repository to make it your profile page
- Enable Github Pages from Settings
- Find the URL for your site
- Make a change!

---

### Updating your site

- Once you save and commit a file, **Github Actions** will run
- Two actions will run, make sure they both complete (may take 2-3 minutes)
- If there are errors, go back and fix your changes

---

### Changing the configuration

- `config.yaml` file has basic info about site (title, author, etc)
- [YAML format](https://www.cloudbees.com/blog/yaml-tutorial-everything-you-need-get-started), make sure indentation is not broken
- Otherwise will get Jekyll errors

---

### Editing content on your site

- Use [Markdown format](https://www.markdownguide.org/) in `.md` files

{{% /section %}}

---

### More resources for [Github Pages](https://pages.github.com/)

We will go step-by-step, but here are overall steps:
- Create a [new repository on Github](https://docs.github.com/en/pages/quickstart)
- Create a [site with the default processor, _Jekyll_](https://docs.github.com/en/pages/setting-up-a-github-pages-site-with-jekyll/creating-a-github-pages-site-with-jekyll)
- Github supports Jekyll automatically, but you have to stay within [their versions](https://pages.github.com/versions/)

--- 
