|[Return to TOC](/00-Table-of-Contents.md)|
|---|

---

# Introduction to Git

![](/assets/28.png)

_**Git:**_ is a _distributed_ version control system, which means that everyone working with a project in Git has a copy of the full history of the project, not just the current state of the files.

_**Version Control:**_ A _version control system_ is a software utility designed to keep track of the changes made to files over time.

Even if you’re working on your own, if you are editing text files, there are a number of benefits to using Git, including the following:

**The ability to undo changes**

* If you make a mistake, you can go back to a previous point in time to recover an earlier version of your work.

**A complete history of all the changes**

* If you ever want to see what your project looked like a day, week, month, or year ago, you can _check out_ a previous version of the project to see exactly what the state of the files was back then.

**Documentation of why changes were made**

* Often it’s hard to remember _why_ a change was made. With _commit messages_ in Git, it’s easy to document for future reference why you’re making a change.

**The confidence to change anything**

* Because it’s easy to recover a previous version of your project, you can have the confidence to make any changes you want. If they don’t work out, you can always get back to an earlier version of your work.

**Multiple streams of history**

* You can create different _branches_ of history to experiment with different changes to your content or to build out different features independently. You can then _merge_ those back into the main project history \(`master` branch\) once they’re done, or delete them if they end up not working out.

Working on a team, you get an even wider range of benefits when using Git to keep track of your changes. Some of the key benefits of Git when working with a team are:

**The ability to resolve conflicts**

* With Git, multiple people can work on the same file at the same time. Usually Git will be able to merge the changes automatically. If it can’t, Git will show you what the conflicts are and you will hopefully be able to easily resolve them.

**Independent streams of history**

* Different people working on the project can work on different branches, allowing them to work on separate features independently and then merge the features when they’re done.

**Review work in progress**

* By looking at the list of pull requests, you can see all of the different features that are currently being worked on; by clicking any given pull request you can see the latest changes and all of the discussions about the changes, check the status of an integration like a Continuous Integration \(CI\) server, or even add your own review to approve changes before they are accepted.

**See team progress**

* Skimming the _pulse_ or looking through the _commit history_ allows you to see what the team has been working on.

---

|[Next Topic](02_key_concepts.md)|
|---|
