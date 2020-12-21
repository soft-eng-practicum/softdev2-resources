---
date: 2020-10-19T15:26:15Z
lastmod: 2020-12-20T15:26:15Z 
publishdate: 2019-11-23T15:26:15Z

title: Assgn 2b
description: Assgn 2b

---

## Assgn 2b (individual): Git branching & merging

**Instructor Instructions**: 
* For this assignment students submit directly on Github repo. Instructor needs to have this repo available for the students and to replace our repo link at Step 4 of the previous exercise (Assgn 2a).
* Suggested time: 7 days

**Posting for Students**:

**Practice assignment for Git+Bash**

# Git Practice #2: Checkout and branch

**Note:** Always prefer the [official Git documentation](https://git-scm.com/doc) and its [reference manual](https://git-scm.com/docs) to learn about the git commands rather than following random, outdated, and misleading tutorials from the web. If you don't remember syntax of a specific git command, try the `--help` option (e.g., `git commit --help`). Two exceptions I will recommend are [the simple git guide](http://rogerdudler.github.io/git-guide/) and [Learn Git Branching](http://learngitbranching.js.org/) - a testing environment for you to play around branches.

## Part I: Parallel universes

This exercise will make changes in one file in two parallel branches. 

1. Go back to your clone of [`bash_basics`](https://github.com/cengique/bash_basics) on your computer.
2. Pick _any_ one of the numbered Bash scripts. Run it using `sh "name of script"` in your Git Bash to see what it does, and then do the exercise described in the comment section at its end by adding new commands to the file. You can look inside the `basics.sh` file to get some hints, or use the [Conquering the Command Line book](http://conqueringthecommandline.com/).
3. Add and commit your edited file, and push back to your own Github fork like last time (_Note_: If you're committing to a new branch `name`, make sure to `git push --set-upstream origin "name"`, like we did in the previous assignment).
4. Now, we will look into the history to see a suitable place to travel back in time before our last commit. Use the `git log` command (or the commit lists in the UIs) to find the ID# of your _first_ commit from last assignment. Press "q" to quit from the git log command.
5. The actual time travel is achieved by using the `git checkout "ID#"`command, using the "ID#" from the previous step,  which will transform your code back to that commit. Do `git log` again to confirm that it shows on the top of the list. The point of this is to go back to that time, but we will not do anything with the file you created last time.
6. To create the parallel universe, create a new branch `git branch "name"` and then switch to that branch with `git checkout "name"` (OR you can do the two in one step with `git checkout -b "name"`). Notice the dual use for the `git checkout` command.
7. Re-do steps 2-3, which will be happening on the new branch, that is in the parallel universe. Make sure you pick and edit the _same_ file and _around the same lines_ in it, but this time do it slightly differently. This will result in having changes to the same file in two parallel branches of the repository.
8. Now you should have two branches: `master`, and the new one you created. Look on Github under Insights->Network to study your branches and the different commits in each (alternatively, view them locally using the `git log --graph --all` command). Take a screenshot of your "two-branches" graph and add this file into your repository. Don't forget to add/commit/push.
9. Congratulations, now you can move onto part II.

## Part II: U.N. conflict resolution

We will now reconcile the two separate parallel universes into one.

1. On your local copy, make sure you're on the master branch (use `git status` to check and `git checkout "branch name"` to switch between branches). Then, run `git merge "branch_name"` to _merge_ the changes from your new branch into the master branch. You will get a conflict, OMG!
2. Use `git status` to get a recommendation from git. When in trouble, always ask for `status`.
3. Do not proceed to commit without resolving the conflict! Open the file you edited and observe how git changed it. It should have added marks <<< === >>> to indicate parts changed in the two branches.
4. Pick the parts you like to keep, and delete the rest and the marks added by git. _Make sure your script still works_.
5. _Add_ and _commit_ to mark the conflict resolved. Consult `git status` to confirm. Push to set it in stone.
6. Look on Github under Graph->Network again to see how your branches were merged together. There should be an arrow that merges them into a single branch. Take a screenshot of your "after-merging" graph and add this file into your repository also. Don't forget to add/commit/push.
7. Create a Pull Request against my repository to submit, like in the previous assignment. If you already have an outstanding pull request, your commits will just show up in there. So you don't need to create a new one.

