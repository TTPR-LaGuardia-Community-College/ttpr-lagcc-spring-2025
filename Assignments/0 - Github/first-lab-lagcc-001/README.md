---
tags: git, github, bash, command line, ironboard, tutorial
languages: bash
---

# Your First Lab

On Ironboard, labs are exercises you have to complete.

The goal of this lab is to practice the workflow to complete a lab and to see if you can make a new file or directory using terminal.

**Make sure you accept the invite on [Github](https://github.com/flatiron-school-ironboard) to the IronBoard team**

To complete this lab you will have to:

1. Fork the lab via github.
2. Clone your fork.
3. Create a new file.
4. Commit that file.
5. Push that commit to your fork.
6. Open a Pull Request for your fork.

Your first step is to scroll down to the bottom of the page, which will direct you to the lab on Github. You should see something like this:

![Ironboard](https://s3-us-west-2.amazonaws.com/readme-photos/ib-1.png)

## Forking from Github

Forking is a feature of github that creates a copy of a repository on your account. When you solve a lab, you'll be coding the solution not on the deployed copy of the lab that everyone has access too, but rather, on your copy, your fork.

### How to Fork

1. Click on the Fork Button

![Clicking on Fork](http://flatiron-videos.s3.amazonaws.com/ironboard/ironboard-tutorial/1-how-to-fork.png)

2. Fork it to your personal github account.

![Forking](http://flatiron-videos.s3.amazonaws.com/ironboard/ironboard-tutorial/2-how-to-fork.png)

3. Make sure you are on your fork of the lab.

![Your Fork](http://flatiron-videos.s3.amazonaws.com/ironboard/ironboard-tutorial/3-how-to-fork.png)

#### On Ironboard

You should see something like this, once you've forked the repository:

![Ironboard Fork](https://s3-us-west-2.amazonaws.com/readme-photos/ib-2.png)


## Cloning from Github

Cloning means bringing down a copy of a git repository from a remote source (like Github). It is creating another copy of a repository on your computer and allowing your local copy to communicate and update the copy on github.

### How to Clone

1. Copy your Clone URL, it should start with https://

![Your Fork Clone URL](http://flatiron-videos.s3.amazonaws.com/ironboard/ironboard-tutorial/1-how-to-clone.png)

2. From your terminal, from your home directory (you can `cd ~` to quickly jump there), type in: `git clone` and then paste the clone address you copied in step 1.

![git clone](http://flatiron-videos.s3.amazonaws.com/ironboard/ironboard-tutorial/2-how-to-clone.png)

3. Enter in your github credentials.

![github authentication](http://flatiron-videos.s3.amazonaws.com/ironboard/ironboard-tutorial/3-how-to-clone.png)

_Note: If you have 2-factor-authentication on github turned on this won't work. Turn it off from your [settings](https://github.com/settings/security)_

4. Your clone should now exist in a new directory named after the lab.

![All good](http://flatiron-videos.s3.amazonaws.com/ironboard/ironboard-tutorial/4-how-to-clone.png)

5. cd into the lab directory so you can get to work!

![All good](http://flatiron-videos.s3.amazonaws.com/ironboard/ironboard-tutorial/5-how-to-clone.png)

## Solving this Lab

Now that you have forked and cloned your fork, your goal is simple. Just create a new file within this lab.

1. You should be cd'd into this lab's directory. Confirm that your working directory in terminal is this lab: `pwd`

You should see something like: `/Users/avi/first-lab`

![1](http://flatiron-videos.s3.amazonaws.com/ironboard/ironboard-tutorial/1-solving-the-lab.png)

2. Simply create a file. It doesn't matter what you call it.

`touch my-new-file.txt`

![1](http://flatiron-videos.s3.amazonaws.com/ironboard/ironboard-tutorial/2-solving-the-lab.png)

3. Once you've done that, run `ironboard` on your terminal, which will run one test that's in the `spec/` folder. This test is looking to see that you've added a new file. If you have the test passing on your computer, you should see something like this on Ironboard, indicating the local build is passing:

![Local Build](https://s3-us-west-2.amazonaws.com/readme-photos/ib-3.png)

4. Add it to the repo, staging it for commit.

`git add my-new-file.txt`

![1](http://flatiron-videos.s3.amazonaws.com/ironboard/ironboard-tutorial/3-solving-the-lab.png)

5. Confirm that the file is staged for commit with `git status`

![1](http://flatiron-videos.s3.amazonaws.com/ironboard/ironboard-tutorial/4-solving-the-lab.png)

6. Commit the file.

`git commit -am "My first commit"`

![1](http://flatiron-videos.s3.amazonaws.com/ironboard/ironboard-tutorial/5-solving-the-lab.png)


7. Push that to your fork, up to github.

`git push origin master`

![1](http://flatiron-videos.s3.amazonaws.com/ironboard/ironboard-tutorial/6-solving-the-lab.png)


8. Go to github and confirm the push.

![1](http://flatiron-videos.s3.amazonaws.com/ironboard/ironboard-tutorial/7-solving-the-lab.png)

## Opening a Pull Request

Open the lab in github (the end of step 7 above).

1. Click on the branch comparison icon from the repository home.

![1](http://flatiron-videos.s3.amazonaws.com/ironboard/ironboard-tutorial/1-opening-pull-request.png)

2. Click Create Pull Request

![1](http://flatiron-videos.s3.amazonaws.com/ironboard/ironboard-tutorial/2-opening-pull-request.png)

3. Confirm the Create Pull Request

![1](http://flatiron-videos.s3.amazonaws.com/ironboard/ironboard-tutorial/3-opening-the-pull-request.png)

4. Look on Ironboard again and you should see a confirmation of that pull request being opened and a remote build passing:

![PR & Remote Build](https://s3-us-west-2.amazonaws.com/readme-photos/ib-4.png)
