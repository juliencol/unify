The following lines were written for future contributors to be able to pick up the project really fast but any interested developer is welcome to read. If you are a recruiter lost on github, you should definitely hire me, or anyone else on the team.

# Description
Unify is an open source progressive web application to manage school events at ISEP. Among a lot of amazing features, it allows every student club to create and update events and every student to register to events. 

# Stack
Backend: [Ruby on Rails](https://rubyonrails.org/) </br>
Frontend: HTML, [Sass](https://sass-lang.com/), [Bootstrap](https://getbootstrap.com/) and ES6 JavaScript compiled with [Webpack](https://webpack.js.org/)</br>
Database: Postgres with [Active Record ORM](https://guides.rubyonrails.org/active_record_basics.html) </br>
Management: Trello and Slack </br>

If you want to contribute, the stack is very easy to learn but you will need to be familiar with the [MVC pattern](https://en.wikipedia.org/wiki/Model%E2%80%93view%E2%80%93controller). 

# Infrastructure
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

# Setup
If you don't have rails installed on your computer, click on your Operating System and follow the steps. If you're on Windows I recommand either install ubuntu in dual boot, run ubuntu in a VM or buy a [MacBook Pro](https://www.apple.com/fr/macbook-pro/?afid=p238%7Cs19SgiikC-dc_mtid_187079nc38483_pcrid_410429749888_pgrid_41257055459_&cid=aos-fr-kwgo-mac--slid---product-).
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

Clone the repository
```bash
git clone git@github.com:juliencol/unify.git
```

Create the .env file to store api keys and make git ignore it
```bash 
touch .env
echo  '.env*' >> .gitignore
``` 
You'll need to add the api keys in that file, ask me privately for the credentials.

Host a local server
```bash 
rails s
```
Then open your browser and go to http://localhost:3000/

# Workflow
Steps to follow when you code a feature.
1. Make sure the user story is crystal clear. If not ask for more information.</br>

2. Make sure your git status is clean and your local repo is up to date.
```bash 
git status
git pull origin master
``` 

3. Create a new branch with the name of your feature.
```bash 
git checkout -b sexy-feature
```

4. Make sure all your packages are up to date. </br>
```bash
yarn install
```

5. Make sure all your gems are up to date. </br>
```bash
bundle install
```

6. Make sure the latests migrations were run and the database is up to date. </br>
```bash
rails db:migrate
rails db:seed
```
If it's the first time you're working on the project you'll have to create the database by running 
```bash
rails db:create
```

7. Take the time to code your feature then push your branch and write a pull request. Don't hesitate to make several commits for the same feature. 
```bash
git add .
git commit -m "sexy feature added"
git push origin sexy-feature
```

8. Wait for someone on the team to review and merge your code and don't forget to delete the branch once it's merged.
```bash
git checkout master
git pull origin master
git branch -d sexy-feature
```

9. Be proud of yourself. I'm sure your feature is awesome and you're to! 

10. Let's code another feature? 

# Reviews
To review someone's code, fetch the latest changes and checkout to the feature's branch.
```bash
git fetch
git checkout sexy-feature
```
Then run a local server to observe the changes, make sure everything works like expected. Check the code to make sure it's clean and then merge the pull request on github. If the feature is incomplete or the code is not clean, explain why in comments of the PR. Please be nice and offer help.

# HTML Structure
When it comes to writing HTML it is important to respect the following structure since we are using a lot of [Bootstrap](https://getbootstrap.com/). Exceptions can be made for partials and components.
```
<div class="container-fluid spacer">

    <div class="row">

        <div class="col">
        
            your content goes here...
        
        </div>

    </div>

</div>
```
