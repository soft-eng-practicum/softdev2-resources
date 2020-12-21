---
date: 2020-10-19T15:26:15Z
lastmod: 2020-12-20T15:26:15Z 
publishdate: 2019-11-23T15:26:15Z

title: Assgn 2a
description: Assgn 2a

---

## Assgn 2a (individual): Git and Bash

**Instructor Instructions**: 
* For this assignment students submit directly on Github repo. Instructor needs to have this repo available for the students and to replace our repo link at Step 4 of the exercise.
* Suggested time: 7 days

**Posting for Students**:

**Practice assignment for Git+Bash**

## Overview
1. Download Git from https://git-scm.com/ 
2. Start “Git Bash” (or "Git Shell") on Windows, or open a Terminal on Mac
3. Configure username, email, and editor in git
4. Fork repo https://github.com/cengique/bash_basics on Github
5. Clone your repo to your local computer in Git Bash
6. Make changes: Create a folder with your name, add a Bash script that prints your name
7. Add your file to git
8. Commit changes
9. Push changes
10. Create pull request

## Step by step instructions

### Step 1 & 2: Download Git and start a shell

All Git downloads can be found on https://git-scm.com/downloads

- On Mac, open a terminal and type `git` to check if you have it already installed. Otherwise, you have two options, (1) install XCode from the App Store, but note that it is a large download; or (2) download the package from the link above. The rest of the assignment can be performed in the terminal console.
- On Windows, download the package from the above link. During installation it will ask you to choose a text editor. DO NOT SKIP THIS STEP! Pause the installation and install one of the editors on the list (Atom, Sublime Text, Notepad++, etc). Otherwise, you will have to set this up manually in the steps below, which is much harder. After installation completes, start the “Git Shell” from Programs. Note that inside the bash shell the folder separators will be forward slashes (/) instead of backslashes (\\).

### Step 3: Configure username, email, and editor in git

- `git config --global user.name "Your Name"`
- `git config --global user.email "<Your Email>"` 
  (Make sure email matches Github account, or simply add one more email to Github)
- `git config --list` 
  (Shows current configuration so you can verify)
- If you have NOT selected an editor during installation (see above), then you must do:<br>
 `git config --global core.editor "Full path to text editor"`
  (Editor is used by git for adding commit/merge messages. 
    - On Windows: use forward slashes (/) and quote the whole thing like '"this"' (Note the two sets of quotes: single quote outside and double quotes inside). 
    Example: `git config --global core.editor '"/c/Program Files/Notepad++/Notepad++.exe"'`. The regular Notepad doesn't work for this purpose, so use a better editor like `NotePad++`, `Atom` ([instructions](https://help.github.com/articles/associating-text-editors-with-git/)), or `gitpad`.
    - On a Mac: Install Atom or Sublime Text and use full path to program. Example: `git config --global core.editor "/Applications/Atom/MacOS/.../atom --wait"` (you can use the tab key to complete the path)
- And make sure it works by testing it with: `git config --global -e`

### Step 4: Fork my Github repo

- Click on https://github.com/cengique/bash_basics 
- Click “Fork” on top-right corner
- This will make a copy of the project in your Github account

### Step 5: Clone your Github repo into your local computer

- Browse to your newly forked project on Github
- Click on “Clone & Download” 
- Copy the URL for your repo
- Open the terminal, and navigate to a proper folder to put your code using the cd command
  (See the bash_basics.sh file in the repo for help)
- Run: `git clone (paste the URL here)`
  (This will create a folder with the repo's name in the current folder and download all files.)

### Step 6: Make changes

- Open the `basics.sh` file *with a text editor* and read its contents to learn about general Bash commands to achieve desired result. You can try these commands in the Git Bash shell or Mac terminal. 
- Either using command line or your file browser, make a copy of `01-read_input.sh` with a new name
- Edit the new file with a text editor (not with Notepad, but with Notepad++, Atom, etc.) and follow its formatting to make a new script
  (You only the need the first line that indicates that it's a Bash script, and the first echo line that prints out the welcome message)
- Modify the echo line to include your name
- Make it executable by running `chmod +x (your file here)`. Then, test it by running it on your command line like `./(your file here)` or `sh (your file here)`.

### Step 7: Add your file to git

- Git will usually tell you what's the most logical next step when you run: `git status`
- To add your file, run: `git add (your filename)`
- Run `git status` again to see what's the next step

### Step 8 & 9: Commit and push your changes

- Run: `git commit -m "your change message"`
  (Make sure to always put a meaningful message, but you don't have the explain the details since they will be obvious in the code itself)
- Optionally, set up a SSH key-pair to log into Github without a password. Otherwise you'll have to type your password every time you pull/push. Follow this [article](https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/).
- To publish your changes back online to Github, run: `git push --set-upstream origin master`. Once you do this once, next time you can simply run: `git push`
- Then you can go to your Github page and click “commits” to see your changes

### Step 10: Create a pull request to me on Github

- You made changes in your own repo, but my original repo is not affected. If you want me to publish your changes, you need to send me a “pull request” – meaning that I should pull your changes and merge into my own repo.
- To do this, go to your Github repo and click on “New pull request”. Then select my repo (not Dr Tacksoon Im's repo!) and then make sure to click on "Create pull request". You will need to name it and submit.
- Make sure your request shows up on the outstanding requests [here](https://github.com/cengique/bash_basics/pulls?utf8=%E2%9C%93&q=is%3Apr+is%3Aopen+)
- I will grade you on completing all these steps.

