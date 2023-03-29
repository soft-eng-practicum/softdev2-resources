+++
title = "Github Social Computing"
outputs = ["Reveal"]
# chapter number
weight = 3
+++

{{% reveal-titlepage figure="/softdev2-resources/images/version-control/githubsocial.jpg" %}}

---

<section>

### GitHub usage pattern example: 2048

[{{< figure src="/softdev2-resources/images/version-control/github-2048-orig.png" height=600 >}}](http://gabrielecirulli.github.io/2048/)

---

### So many variants!

[{{< figure src="/softdev2-resources/images/version-control/github-2048-doge.png" height=600 >}}](http://doge2048.com/)

---

[{{< figure src="/softdev2-resources/images/version-control/github-2048-3D2.png" height=600 >}}](http://baiqiang.github.io/2048-3d/)

</section>

---

<section>

### 2048 GitHub page

[{{< figure src="/softdev2-resources/images/version-control/github-2048-gabri-0.png" height=600 >}}](https://github.com/gabrielecirulli/2048)

---

### 2048 GitHub page

[{{< figure src="/softdev2-resources/images/version-control/github-2048-gabri-1.png" height=600 >}}](https://github.com/gabrielecirulli/2048)

---

### What's *forking* ??

{{% fragment %}}
{{< figure src="/softdev2-resources/images/version-control/fork-plate-spagetti.jpg" height=200 >}}
Stealing from their plate?
{{% /fragment %}}

{{% fragment %}}
{{< figure src="/softdev2-resources/images/version-control/forkintheroad.jpg" height=200 >}}
More like a fork in the road.
{{% /fragment %}}

</section>

---

<section>

### GitHub encourages *social computing*

Common GitHub usage pattern: **fork & modify**

1. Fork (clone) someone's project into your account
1. Modify and make it your own
1. Share with original project through “pull requests”

{{% fragment %}}
Our GitHub usage pattern: **push & pull**

1. Several users collaborate on same repo
1. Open GitHub account and we associate you with private project repos
1. Install local client `git` on Windows, Mac, Linux 
1. Clone the repo on your local computer (don't fork on GitHub!)
1. Modify, then push and pull
1. Communicate your pushes with your teammates!
1. (Optional) Make branches and switch between them
{{% /fragment %}}

---

### Our Git workflow is *centralized*

{{< figure src="/softdev2-resources/images/version-control/git-scm-workflow-centralized.png" height=400 >}}
[Chacon & Straub's Pro Git book: 5.1 Distributed Git - Distributed Workflows](http://git-scm.com/book/en/v2/Distributed-Git-Distributed-Workflows)

</section>

---

<section>

### An improved Git workflow: Integration Manager

{{< figure src="/softdev2-resources/images/version-control/git-scm-workflow-integ-mgr.png" height=400 >}}

---

### Can we adopt features from integration manager?

{{% fragment %}}

Yes!

- Use branches
- Send pull requests (PRs) within the same repo
- Have someone to review code and accept PR

{{% /fragment %}}

</section>

---

### Ultimate Git workflow: Benevolent Dictator

{{< figure src="/softdev2-resources/images/version-control/git-scm-workflow-benevolent-dictator.png" height=400 >}}

---

<section>

<div style="width: 100%; height: 700px; overflow: scroll; position: absolute; top: 0">

### A branching model: *gitflow*

[<img src="/softdev2-resources/images/version-control/git-branching-model-1.png" 
         style="width: 100%; max-height: initial; ">](http://nvie.com/posts/a-successful-git-branching-model/)
</div>

---

### Gitflow references

Original article: [“A successful Git branching model” by Vincent Driessen (2010)](http://nvie.com/posts/a-successful-git-branching-model/) and more recent [Using git-flow to automate your git branching workflow (2010)](https://jeffkreeftmeijer.com/git-flow/)

Or simply use the [GitFlow](https://github.com/nvie/gitflow) extension to git

Atlassian Tutorial: [Comparing Workflows: Centralized, Feature Branch, Gitflow, Forking Workflows](https://www.atlassian.com/git/tutorials/comparing-workflows)

</section>
