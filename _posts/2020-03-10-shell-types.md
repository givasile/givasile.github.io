---
layout: distill
title: Shell vs Terminal vs Login
description: A fast 
date: 2021-03-10

authors:
  - name: givasile
    url: "https:givasile.github.io"
    affiliations:
      name: ATHENA Research Center

# Below is an example of injecting additional post-specific styles.
# If you use this post as a template, delete this _styles block.
_styles: >
  .fake-img {
    background: #bbb;
    border: 1px solid rgba(0, 0, 0, 0.1);
    box-shadow: 0 0px 4px rgba(0, 0, 0, 0.1);
    margin-bottom: 12px;
  }
  .fake-img p {
    font-family: monospace;
    color: white;
    text-align: left;
    margin: 12px 0;
    text-align: center;
    font-size: 16px;
  }

---

#### What happens when a user logs in

We interact with the system as a specific user. This means that after a system boots, it waits for users to connect with it, with the log-in process. The login process sets for the user some environmental variables like <d-code language="bash">$SHELL, $USER, $GROUPS</d-code> and creates a login shell. In ubuntu systems the convention about user and group ids is the following:

* <d-code language="python">0</d-code> id of the root user
* <d-code language="python">1-99</d-code> legacy ids, not used so much any more
* <d-code language="python">100-999</d-code> ids of non-human users (services etc.)
* <d-code language="python">1000-...</d-code> ids of human users

We can check the ids of all users (human and non-human) of the system with <d-code language="bash">cat /etc/passwd</d-code>

#### Interactive vs non-interactive shell 

We interact with the shell, through an interactive or a non-interactive session. At an interactive session we attach the session to a terminal (tty,pty) and the shell waits for commands to enter a REPL loop. At a non interactive session the shell executes a banch of commands at once. For example <d-code language="bash">sh script.sh</d-code>

#### Login vs non-login shell

A login-shell is typically the top-level shell in the tree of processes invoked by the init processes <d-footnote>the first process after system start</d-footnote>, for interacting with the kernel. Normally the login shell is created automatically when we enter the system (after login). If we are using a desktop linux version (with X) enabled, the login shell is created at the background. If we login without X system, we will automatically enter a login shell. All shells created afterwards will be sub-shells of this initial shell and they inherit the properties of the parent (login) shell, such as the environmental variables.

In the following cases we can enforce the creation of a login shell<d-footnote>there is no limitation in the login shells can coexist</d-footnote>

* access a computer remotely via ssh (if sshd is installed, try <d-code language="shell">ssh [username]@localhost</d-code>)
* <d-code language="bash">bash -l</d-code>simulates (enforces) login shell
* <d-code language="bash">sudo -i</d-code> simulates login shell for a root
* <d-code language="bash">sudo -u [username] -i</d-code> simulates login shell for non-root user
* <d-code language="bash">sudo login</d-code> switching user
* <d-code language="bash">xterm -ls</d-code> simulates login shell from x environment

In all other cases, we interact with the shell through a non-login shell.

We can determine whether we use a login or non-login shell by typing <d-code language="bash">echo $0</d-code> in the terminal. If the output starts with an - (e.g. -bash) then it is a login shell, otherwise non-login.

#### Possible states of a shell session

Therefore a shell session can be in four possible states; interactive/non-interactive and login/non-login. Depending on the session state, a different shell initialization process is followed according to the following diagram.

<div class="fake-img l-body">
  <img class="img-fluid rounded z-depth-1" src="{{ site.baseurl }}/assets/img/posts/Screenshot.png">
</div>
