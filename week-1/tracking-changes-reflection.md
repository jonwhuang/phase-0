* How does tracking and adding changes make developers' lives easier?
  - Tracking and adding changes allows for developers to work on different files inside a local repository and be able to decide which ones to actually commit and merge back into the master. By tracking changes, the developer can look at the status of all the files the repository to see which changes were made, any new files that were added, and which changes were staged for a commit. Then, by adding changes, the developer can choose which changes they want to use. When committing, only the changes that are added will be submitted.

* What is a commit?
  - A commit is a collection of changes in the local repository that act as a snapshot of the most current version. The changes that are tracked and added can be submitted as a commit which can eventually be merged into the remote repository. Commits are generally submitted with a commit message to describe the changes in the collection of actions so that developers can easily understand what the differences were between each commit.

* What are the best practices for commit messages?
  - The best practices for commit messages are to capitalize the first word, make sure the message is short and concise, and to use the imperative form of verbs. The message should be less than 50 characters long to be a good concise length because it should only be a summary of the changes. The imperative form rather than the past tense of verbs is used because it will describe what the commit will be doing.

* What does the HEAD^ argument mean?
  - The HEAD^ argument references the last commit that was made. HEAD is the current commit and HEAD^ is the one before it. It can be referenced to change the files that are already in a commit using git reset.

* What are the 3 stages of a git change and how do you move a file from one stage to the other?
  - The first stage is where the changes are just made in the working directory and are labeled as untracked. When the changes are ready, they can be added using git add file_name to the staged changes. The staged changes are the ones that you want to keep and are ready for committing. To move the file back to untracked, git reset HEAD file_name can be used. To commit the staged changes to the last stage, git commit -m "commit message" is used. If you want to change the files in a commit, you would use git reset --soft "HEAD" to move the changes back to staged.

* Write a handy cheatsheet of the commands you need to commit your changes?
  - Make changes to the files
  - To move changes from untracked to staged: git add file_name
  - To move changes from staged to untracked: git reset HEAD file_name
  - To commit the changes in staged: git commit -m "commit message" or git commit -v
  - To make changes to the files in a commit: git reset --soft "HEAD"

* What is a pull request and how do you create and merge one?
  - A pull request is a request for the changes in a commit or multiple commits to be reviewed before the changes are merged to the remote branch. The pull request can be created using the commands "git push origin branch_name" to push the branch to GitHub. You go to the repository on GitHub and create the pull request. It can be reviewed first and if satisfactory, you click merge pull request. Once merged you can delete the local branch that was pushed as well as the one in the local computer.

* Why are pull requests preferred when working with teams?
  - Pull requests are preferred because they allow the members of the team to review each member's change submissions before they are applied to the master branch. This helps to reduce the amount of mistakes made if the master branch was updated without the possibility of a pull request.