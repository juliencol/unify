The following lines were written for future contributors to be able to pick up the project really fast but any interested engineer is welcome to read. If you are a recruiter lost on github, you should definitely hire me, or anyone else on the team.

# Description
Unify is an open source progressive web application to manage school events at ISEP. Among a lot of amazing features, it allows every student club to create and update events and every student to register to events.

# Stack
Everything is handled with the [Model-View-Controller](https://en.wikipedia.org/wiki/Model%E2%80%93view%E2%80%93controller) framework [Ruby on Rails](https://rubyonrails.org/), very easy to pick up. The frontend is built in classic HTML, Sass, Bootstrap and Vanilla JavaScript. The database is Postgres and requests are handled with the ORM [Active Record](https://guides.rubyonrails.org/active_record_basics.html). Images are hosted on [cloudinary](https://cloudinary.com/). A couple of API are involved like [Mapbox](https://www.mapbox.com/) and [Geocoder](https://github.com/alexreisner/geocoder). Concerning management and communication, Trello and Slack are highly valued.

# Infrastructure
The app is hosted on heroku under the domain name [unifyisep.com](https://www.unifyisep.com/). The staging environment simulates a production environment to test eveyrthing before pushing code to production. We follow a continuous deployment workflow automated with the master branch. The heroku pipeline can be accessed [here](https://dashboard.heroku.com/pipelines/36cfdc96-548e-4d63-ae8c-e7e241667257).

# App structure
In the MVC pattern, each model has an associated controller with a specific number of actions (i.e. functions / methods). Each action is associated to a view which is an html file displaying the content of a page. </br>
* Models are accessible in 'app/models'. </br>
* Controllers are accessible in 'app/controllers'. </br>
* Views are accessible in 'app/views'. </br>
* To compile with webpack the javascript and stylesheets components are accessible in 'app/javascripts'

# Database
The database schema can be accessed [here](https://dbdiagram.io/d/5e540720ef8c251a06188009) or directly in 'db/schema.rb'.

# Philosophy and values
* Value user stories.
* Make code reviews. 
* Seek for the highest performance.
* Focus on security and be aware of the potential attacks.
* Code in english, write user ouputs in french.
* Don't commit blocks of commented code. 
* Care about the end user.

# Style guide
Only push performing readable code. </br>
* On the frontend, make use of Sass feature and write ES6 JavaScript following [Airbnb style guide](https://github.com/airbnb/javascript).
* On the backend, respect the the Model-View-Controller pattern and follow [Ruby on Rails doctrine](https://rubyonrails.org/doctrine/).
* Keep up dry code and always refactor. 

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

7. Take the time to code your feature then push your branch and write a pull request. Don't hesitate make several commits for the same feature. 
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
It is necessary and vital to respect the following structure when writing HTML code since we are using a lot of [Bootstrap]. Exceptions can be made for partials and components.
```
<div class="container-fluid spacer">

    <div class="row">

        <div class="col">
        
            your content goes here...
        
        </div>

    </div>

</div>
```
