+++
title = "Version Control"
outputs = ["Reveal"]
# chapter number
weight = 04
+++

### Version Control

#### ITEC 3870 Software Development II, <br> Anca Doloc-Mihu and Cengiz Günay

Licensed with [CC BY-SA 4.0](http://creativecommons.org/licenses/by-sa/4.0/)
    
[{{< figure src="/softdev2-resources/images/comics/version-control-comic-return-to-zero.png" >}}](https://www.eeworldonline.com/return-to-zero-binary-programming/)

---

## Why Version Control?

- It's a **must** in today's computing industry
  - [Mt. Gox, a company that don't use VC and lost almost a billion dollars…](https://www.wired.com/2014/03/bitcoin-exchange/)
  - [Another painful story without VC](http://www.troyhunt.com/2012/09/life-without-source-control-share-your.html)
  - challenge: find more horror stories!
- You can even version control documents, class files, financial files, …
- Also called source control, code management, concurrent versioning, revision control, …

{{% fragment %}}

Advantages:
- Track changes, keep logs of past development
- Automatic backups/safety net
- Concurrent versions: XP vs. Win8
- Allows teamwork

{{% /fragment %}}

---

### Teamwork on the same codebase: How?

{{< frag class="fade-in-then-out" c="Seriously, how?" >}}

---

### Teamwork: No control? Overwrite chaos!

{{< figure src="/softdev2-resources/images/version-control/version-control-why-cm-0.png" >}}

---

### Teamwork: Locking

{{< figure src="/softdev2-resources/images/version-control/version-control-why-cm-1.png" >}}

---

### Teamwork: Merging

{{< figure src="/softdev2-resources/images/version-control/version-control-why-cm-2.png" >}}

---

### Merging example

{{< figure src="/softdev2-resources/images/version-control/version-control-merge-example2.png" >}}

---

### Each commit increments version

[{{< figure src="/softdev2-resources/images/version-control/version-control-basic-numbering.png" height="400px">}}](http://betterexplained.com/articles/a-visual-guide-to-version-control/)

---

<section data-background-image="/softdev2-resources/images/version-control/github-mainpage.png"
    data-background-opacity=0.5>

### Github for version control

</section>

---

[{{< figure src="/softdev2-resources/images/version-control/github-linguist.png" height="100%">}}](http://git-scm.com/documentation)

---

<section data-background-image="/softdev2-resources/images/version-control/github-linguist-log.png"
    data-background-position="center"
    data-background-size="auto 100%"
    data-background-opacity=1>

</section>

---

<section data-background-image="/softdev2-resources/images/version-control/github-linguist-network.png"
    data-background-position="center"
    data-background-size="auto 100%"
    data-background-opacity=1>

</section>

---

<section data-background-image="/softdev2-resources/images/version-control/github-linguist-contrib.png"
    data-background-position="center"
    data-background-size="auto 100%"
    data-background-opacity=1>

</section>

---

### `git` is the program behind Github

Common usage scenario:

1. `git clone` gets **working copy** from repo
2. **Make changes** in local working copy
2. `git add <files...>` to **select** your changed files
3. `git commit` **saves** your changes into the version control history with a comment (Wash, rinse, and repeat step 2. Commit often!)
4. `git push` **publishes** your previous commits to remote repository (Github)
5. `git pull` **receives** latest changes from repo to **sync**

---

<slide data-background-image="/softdev2-resources/images/version-control/sherlock.jpg"
    data-background-position="right"
    data-background-size="auto 50%"
    data-background-opacity=0.5>

### Useful commands: Investigating the past

- `git diff` **shows your changes** from last repo version
- `git log [filename]` **lists all commits**, optionally those touching a `filename`
- `git diff <commit>` shows changes in version **labeled** as `<commit>`
- `git checkout <commit>` **rewinds** all files back to a version 

{{% fragment %}}

#### Challenge: How to find a bug

1. You have been messing with the code
2. Suddenly you realized you broke the program
3. How do you find **when** was the bug introduced?
{{% /fragment %}} 

{{% fragment %}}
> Hint: use `git checkout <commit>`
{{% /fragment %}}

</slide>

---

### Common issues with Git

Avoiding bloating and conflict hell:

- The `.gitignore` file: Add lines of file patterns to be kept out of your repo.

{{% fragment %}}
Mac vs PC guy: different line endings:

- Can create a lot of trouble when sending/receiving files between Mac/Linux and Windows
- Git has settings for it: [`core.autocrlf`](https://help.github.com/articles/dealing-with-line-endings/) will automatically convert for you!
{{% /fragment %}}

{{% fragment %}}
Removing already deleted files from your repo:

- `git add -u files...`
{{% /fragment %}}

{{% fragment %}}
Highly recommended **visual** interface:

- SourceTree
- Visual Studio Code plugin for Git

{{% /fragment %}}

---

### Git Resources

- [Download](https://git-scm.com/)
- [A simple Git guide](http://rogerdudler.github.io/git-guide/)
- [The Pro Git book](https://git-scm.com/book/en/v2)
- [Learn Git branching](https://learngitbranching.js.org/)

---

## Credits

- Opening comic from Return to Zero by EEworldonline.com
