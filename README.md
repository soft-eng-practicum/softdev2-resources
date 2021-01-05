# Intermediate Agile Software Development Textbook Resources

This textbook is intended for an intermediate-level software
development course at the undergraduate level that teaches software
engineering principles and practice following the Agile philosophy.

The textbook provides resources for both the instructor and their
students. Course preparation materials are provided for the instructor
and class presentation slides, assignments, and take-home exams are
provided for students.

However, instructor could email the authors (cgunay or adolocm at gmail.com) to get access to hidden materials such as quizzes.

## Publishing technology

The content is rendered and published using a static site generator
(or [Jamstack](https://jamstack.org/)) system
called [Hugo](https://gohugo.io/). It is primarily built by combining
two Hugo
themes, [Techdoc](https://themes.gohugo.io/hugo-theme-techdoc/)
and [reveal-hugo](https://themes.gohugo.io/reveal-hugo/). Techdoc
provides the documentation-style browsing of book chapters and
reveal-hugo provides the capability of online accessible chapter
presentations using the [reveal.js](https://revealjs.com/) technology.

The generated site can then be hosted on any static host (such
as [Github Pages](https://pages.github.com/)
or [Netlify](https://www.netlify.com/)). The original repository is
rendered and hosted on Github Pages and it is automatically generated
at each push by
using [Github's Actions](https://github.com/features/actions)
feature. You can see it in action in
[this example](https://soft-eng-practicum.github.io/softdev2-resources/).

## How to adopt this book and customize for your class

You can _fork_ this repository on Github and customize the chapters and
slides. See the links above to learn more about the different
technologies used.

Once you fork this repository, Github will carry over the Github
Actions instructions needed for automatic deployment, but you would
need to click on the "Actions" tab and enable them again in the
fork. After this, you should see the "Hugo" action listed, which will
be executed after each of your commits. The action will run Hugo and
write its output to the root of the `gh-pages` branch.

To enable Github Pages render this output, you need to go to the
Settings tab, scroll down and select to produce the pages from the
root folder of the `gh-pages` branch.

Don't forget to edit the `config.toml` file for changing variables
such as `baseURL`, `github_repository`, `github_doc_repository`,
`author`, `course`, and `google_analytics_id`.

## Reveal-Hugo customizations

In the class presentations, the `author` and `course` front-matter
variables will take precendence over the values in the `config.toml`
file. They are used in the following
custom
[Hugo shortcodes](https://gohugo.io/content-management/shortcodes/)
that we defined:

- `reveal-titlepage`: Puts the chapter title, course name (`course` 
  parameter in page or in `config.toml` file), authors (`author` 
  parameter), and links to previous and next chapters (automatically 
  determined), with an option to display a cover
  image. The default format for the title page and its contents, such
  as authors can be changed in
  `layouts/shortcodes/reveal-titlepage.html`. It accepts the following
  optional parameters with the regular HTML syntax `param="value"`:
  - `figure`: Displays the cover image specified at given
    URL. If you create an image `/static/images/image.jpg`, you can
    refer to it with the base URL like this:
    `figure="/softdev2-resources/images/image.jpg"`.
  - `height`: Change the default height of `"300px"`.
  - `class`: Change CSS `class` of the `figure` tag.
  - `link`: Make the figure a link to this URL.
  - `alt`: Provide an alternate text to image.
  - `title`: Create a `<figcaption>` tag under the image.
  - `caption`: Set `alt` and also write it under the `figcaption`.
  - `attr`: Attribution text, shows up after caption.
  - `attrlink`: Link for the attribution.
