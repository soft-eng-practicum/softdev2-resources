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

<section data-background-image="/softdev2-resources/images/version-control/version-control-dist.png"
    data-background-position="center"
    data-background-size="auto 100%"
    data-background-opacity=1>




</section>

---

### `git` is the program behind Github

Common usage scenario:

1. `git clone` gets **working copy** from repo
2. Make local changes in working copy
2. `git add <files...>` to select your changed files
3. `git commit` saves your changes into the version control history with a comment (Wash, rinse, and repeat step 2. Commit often!)
4. `git push` published your previous commits to remote repository (Github)
5. `git pull` gets latest changes from repo to **sync**

---

## Credits

- Opening comic from Return to Zero by EEworldonline.com
