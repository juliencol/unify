#  <span style="color: red"> Everyone contributing to the project must read this</span>

# Project description
Unify is a progressive web application to manage school events at ISEP. Our goal is to allow every student club to create and manage events and every student to register to any event.

# Our stack
We are using [Ruby on Rails](https://rubyonrails.org/), an MVC framework very easy to learn that handles every aspect of the application. The backend is in ruby and the frontend is in HTML, Sass, Bootstrap and Vanilla JavaScript. For the database we use PostgreSQL and the ORM [Active Record](https://guides.rubyonrails.org/active_record_basics.html) to make SQL requests. The app is hosted on [heroku](https://heroku.com/) with a staging and a production environment. Refer to the [deployment section](#Deployment) for more information.

# Our workflow
* We don't write test (the app must be delivered in less than a month from now).
* We manage our development tasks on [trello](https://trello.com/b/KvPE3ned/unify).
* We make [code reviews](#Code-review). 
* We develop in a mobile first approach.
* We deploy every new feature. 

# Our style guide
We only commit performing readable code. </br>
* On the frontend, we make use of [Sass](https://www.youtube.com/watch?v=Zz6eOVaaelI) features (nested css, css variables), we allow the use of Bootstrap to code faster, we build CSS components in app/assets/stylesheets/components and we write ES6 JavaScript following [Airbnb style guide](https://github.com/airbnb/javascript).
* On the backend, we respect the the [MVC design pattern](https://en.wikipedia.org/wiki/Model%E2%80%93view%E2%80%93controller) and we follow [Ruby on Rails doctrine](https://rubyonrails.org/doctrine/).

# Rails installation 
If you don't have rails installed on your computer, click on your OS and follow the steps. If you're on Windows I recommend either install ubuntu in dual boot, run ubuntu in a VM or follow the ubuntu configuration using [cmder](https://cmder.net/).  
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

# Project setup

Clone the repository
```bash
git clone git@github.com:juliencol/unify.git
```

Create the .env file to store api keys (do this once)
```bash 
touch .env
echo  '.env*' >> .gitignore
``` 

Host a local server
```bash 
rails s
```
then open your browser and go to the url http://localhost:3000/

# Development workflow
Steps to follow when you code a feature.
1. Make sure every aspect of your feature is crystal clear. If not ask the team for more information on it.</br>

2. Make sure your git status is clean and your local repo is up to date.
```bash 
git status
git pull origin master
``` 

3. Create a new git branch with the name of your feature. We follow the workflow where 1 branch == 1 feature.
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

6. Make sure the database is up to date. </br>
```bash
rails db:seed
rails db:schema:load
```
If it's the first time you're working on the project you'll have to create the database by running 
```bash
rails db:create
```

7. Take the time to code your feature. Then push your branch to github. Don't hesitate to commit many times.
```bash
git add .
git commit -m "sexy feature added"
git push origin sexy-feature
```

8. Open a pull request on github. Don't forget to add a description message to explain your changes. </br>

9. Wait for someone on the team to review and merge your code. Then, delete the branch. 
```bash
git checkout master
git pull origin master
git branch -d sexy-feature
```
10. Take a break and be proud of yourself. You're the best! 

# Code review
Everytime someone codes a new feature (i.e. push a new branch), his code needs to be reviewed before merging it to the master branch. To review someone's code, make sure your git status is clean, then switch to his branch: 
```bash
git fetch
git checkout sexy-feature
```
Then run a local server to check the changes, make sure there is no bug and you're OK with everything. If yes, merge the pull request on github and notice the team. If no, explain why in comments of the PR. 

# Deployment
Our app is host on [heroku](https://heroku.com) under the domain name [unifyisep.com](https://www.unifyisep.com/). To make sure we don't crash the app in production, we created a staging environment to test if everything works fine before deploying the code. We try to follow a continous deployment workflow by deploying every new feature. That means we push the code in production evrytime a PR is merged to the master branch. </br>
To deploy in staging environment:
```bash
git push heroku master --app unifyisep-staging
```
To deploy in production (!!! ONLY IF EVRYTHING WORKS IN STAGING !!!): 
```bash
git push heroku master --app unifyisep-production
```
Most of the time, you'll get a lot of errors when deploying to staging. To identify those errors, run
```bash 
heroku logs --tail 
```  
Refer the documentation [here](https://devcenter.heroku.com/articles/logging#types-of-logs).


