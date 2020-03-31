<span style="color: red"> Everyone contributing to the project must read this</span>

# Description
Unify is a progressive web application to manage school events at ISEP. Our goal is to allow every student club to create and update events and every student to register to any event.

# Stack
We are using the [Model-View-Controller pattern](https://en.wikipedia.org/wiki/Model%E2%80%93view%E2%80%93controller) framework [Ruby on Rails](https://rubyonrails.org/), very easy to learn that handles both the frontend and the backend. The frontend is built in classic HTML, Sass, Bootstrap and Vanilla JavaScript. For the database we use PostgreSQL and the ORM [Active Record](https://guides.rubyonrails.org/active_record_basics.html) to handle SQL requests. 
Images are hosted on [cloudinary](https://cloudinary.com/). 

# Infrastructure
Our app is hosted on heroku under the domain name [unifyisep.com](https://www.unifyisep.com/).The staging environment allow us to simulate a production environment to test eveyrthing is fine before pushing code to production. We follow a continuous deployment workflow: every time a branch is merged to master or a commit is pushed to master, heroku automatically deploy the master branch to our staging environment. That means the master branch always have to be clean. Everyone in the team can access our heroku pipeline [here](https://dashboard.heroku.com/pipelines/36cfdc96-548e-4d63-ae8c-e7e241667257)

# App structure
In the MVC pattern, each model has an associated controller with a specific number of actions (i.e. functions / methods). Each action is associated to a view which is an html file displaying the content of a page. </br>
* Models are accessible in 'app/models'. </br>
* Controllers are accessible in 'app/controllers'. </br>
* Views are accessible in 'app/views'. </br>
* Build your CSS components in 'app/javascript/stylesheets/components'. </br>
* Build your CSS pages in 'app/javascript/stylesheets/controller_name/view_name.scss'. </br>
* Same for JavaScript. </br>

# Database
The database schema can be accessed [here](https://dbdiagram.io/d/5e540720ef8c251a06188009) or directly in 'db/schema.rb'.

# Philosophy 
* We don't write test (the app must be delivered in less than a month from now).
* We manage our development tasks on our [trello board](https://trello.com/b/KvPE3ned/unify).
* We make [code reviews](#Code-review) for every new feature. 
* We develop in a mobile first approach. Every page must be responsive and suits desktops, tablets and mobile devices. If you're not familiar with mobile first, I highly recommend watching this [series of videos](https://www.youtube.com/watch?v=PM3XW_1RAIs).
* We develop one feature at a time. 1 branch == 1 feature. We delete the branch when the feature is done. The number of current branches must be equals to the number of developers working on the project + the master branch (e.g. if we're 4 there must be 5 branches : one for each developer + the master branch).
* We focus on security. Every developer must be aware of the potential attacks. Whenever you use an implicit SQl request, use the '?' symbol to protect from SQL injections. 
* We code in english. Every variable and functions must be named in english. Every output must be in french.
* Only write comment when needed. Most of the time, explicit names are better than writing comments. 
* Never commit blocks of code commented. 

# Style guide
We only push performing readable code. </br>
* On the frontend, we make use of [Sass features](https://www.youtube.com/watch?v=Zz6eOVaaelI) (nested css, css variables), we allow the use of Bootstrap to code faster, we build CSS components in app/assets/stylesheets/components and we write ES6 JavaScript following [Airbnb style guide](https://github.com/airbnb/javascript).
* On the backend, we respect the the Model-View-Controller pattern and we follow [Ruby on Rails doctrine](https://rubyonrails.org/doctrine/).

# Setup
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

Clone the repository
```bash
git clone git@github.com:juliencol/unify.git
```

Create the .env file to store api keys (do this once)
```bash 
touch .env
echo  '.env*' >> .gitignore
``` 
You'll need to add the api keys in that file so ask me fore the credentials on slack.

Host a local server
```bash 
rails s
```
then open your browser and go to the url http://localhost:3000/

# Workflow
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

# Reviews
Every time someone codes a new feature (i.e. open a new PR), his code needs to be reviewed before merging it to the master branch. To review someone's code, switch to his branch: 
```bash
git checkout sexy-feature
```
Then run a local server to check the changes, make sure there is no bug and you're OK with everything. Check the code to make sure it's clean. If yes, merge the pull request on github. If not, explain why in comments of the PR. Whenever a branch is merged, follow the build on the heroku pipeline, check if it succeded and notice the team.
You can also simulate a production environment directly on the heroku pipeline when a PR is open. 

# HTML Structure
It is necessary and vital to respect a certain structure when writing HTML code since we are using [Bootstrap](https://getbootstrap.com/docs/4.0/layout/grid/). The outermost div must have a class `container-fluid spacer`. Inside the container, there must ONLY be divs with the class `row`. Inside the rows, there must ONLY be divs with the class `col`. Inside the cols is where you put whatever content you want. To sum up, you must respect this structure at all times:
```
<div class="container-fluid spacer">

    <div class="row">

        <div class="col">
        
            your content goes here...
        
        </div>

    </div>

</div>
```
