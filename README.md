# Foreword
The following lines were written for future contributors to be able to pick up the project but any interested developer is welcome to read. If you are a recruiter lost on github, you should definitely hire me, or anyone else on the team.

# Description
Unify is an open source progressive web application to manage students events at ISEP. Among a lot of amazing features, it allows student clubs to create events and students to register to those events. 

# Stack
<table>
  <tr>
    <td>
       <a href="https://rubyonrails.org/">
        <img src="app/assets/images/rails_logo.png" alt="Rails logo" width='250px' />
      </a>
    </td>
    <td>
      <a href="https://www.postgresql.org/">
        <img src="app/assets/images/postgres_logo.png" alt="Postgreslogo" width='250px' />
      </a>
    </td>
    <td>
      <a href="https://sass-lang.com/">
         <img src="app/assets/images/sass_logo.png" alt="Sass logo" width='250px' />
      </a>
    </td>
    <td>
      <a href="https://getbootstrap.com/">
         <img src="app/assets/images/bootstrap_logo.png" alt="Bootstrap logo" width='250px' />
      </a>
    </td>
    <td>
       <a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript">
          <img src="app/assets/images/js_logo.png" alt="JS logo" width='250px' />
      </a>
    </td>
     <td>
       <a href="https://webpack.js.org/">
          <img src="app/assets/images/webpack_logo.png" alt="Webpack logo" width='250px' />
      </a>
    </td>
  </tr>
</table>

The stack is quite easy to learn but you will need to be familiar with the [MVC pattern](https://en.wikipedia.org/wiki/Model%E2%80%93view%E2%80%93controller). 

# Infrastructure
[![Build Status](https://travis-ci.com/juliencol/unify.svg?token=xbg5Xhr2ukhr4x5a4adb&branch=master)](https://travis-ci.com/juliencol/unify) </br>
Continuous integration powered by [Travis CI](https://travis-ci.com/) and [Heroku](heroku.com). 

<img src="app/assets/images/github_travis.png" alt="CI picture" width='300px' />

# Philosophy and core values
* Value user stories
* Make code reviews
* Seek for the highest performance
* Focus on security
* Code in english, write user ouputs in french
* Don't commit blocks of commented code
* Care about the end user
* Keep up dry code

# Style guide
* For the frontend, make use of Sass amazing features and write good looking ES6 JavaScript code following [Airbnb style guide](https://github.com/airbnb/javascript).
* For the backend, respect the [Rails doctrine](https://rubyonrails.org/doctrine/) and don't violate the MVC pattern.

# Setup for Rails and Postgres
If you don't have rails installed on your computer, click on your OS and follow the steps. If you're on Windows I would recommend either installing ubuntu in dual boot, running ubuntu in a VM or buying a [MacBook Pro](https://www.apple.com/fr/macbook-pro/?afid=p238%7Cs19SgiikC-dc_mtid_187079nc38483_pcrid_410429749888_pgrid_41257055459_&cid=aos-fr-kwgo-mac--slid---product-).
<table>
  <tr>
    <td>
      <a href="setup/macOS_setup.md">
        <img src="images/apple.png" alt="macOS" width='100px'/>
      </a>
    </td>
    <td>
      <a href="setup/ubuntu_setup.md">
        <img src="images/linux.png" alt="Ubuntu" width='100px' />
      </a>
    </td>
  </tr>
</table>

# Starting with Rails
[Documentation](https://guides.rubyonrails.org/getting_started.html) </br>
[Rails repository](https://github.com/rails/rails)

# Workflow
[Github flow](https://guides.github.com/introduction/flow/)

# Reviews
To review someone's code, fetch the latest changes and checkout to the feature's branch.
```bash
git fetch
git checkout sexy-feature
```
Then make sure everything works like expected and the code is clean. Comment the PR to discuss improvements and merge if it passes all the tests. Don't forget to delete the branch afterwards.

# HTML Structure
```
<div class="container-fluid spacer">
    <div class="row">
        <div class="col">
            <h1>Nouvelle page web</h1>
        </div>
    </div>
</div>
```

# Team resources
[Google drive](https://drive.google.com/drive/folders/1vc034GAaMxUp22WMZpV6nspGkFCAyoX9) </br>
[Trello](https://trello.com/b/KvPE3ned/unify) </br>
[Slack](https://app.slack.com/client/TKF4P6WH4/CKEPWD9AB) </br>
[Heroku pipeline](https://dashboard.heroku.com/pipelines/97f69283-1c1b-4766-8433-55ca17960a67) </br>
[Travis CI](https://travis-ci.com/github/juliencol/unify) </br>
[Database schema](https://dbdiagram.io/d/5e540720ef8c251a06188009) </br>
[Mockup](https://xd.adobe.com/view/cfcebeeb-5a2f-4d5f-6569-b2bfd69b0d98-b9ff/?fullscreen) </br>


