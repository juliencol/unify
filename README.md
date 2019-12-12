# Description
Unify is a web application for isep students. Its main goal is to promote school clubs. 

# Get the repository
```bash
git clone git@github.com:juliencol/unify.git
cd unify
```

# Adding the .gitignore file (do this once)
```bash 
touch .env
echo  '.env*' >> .gitignore
``` 

# Team workflow
1. Choose a feature and assign your name on trello </br>

2. Understand every aspect of your feature. Ask questions if everything is not crystal clear. </br>

3. Make sure your git status is clean and updated
```bash 
git status
git pull origin master
``` 

4. Create a new git branch with the name of your feature
```bash 
git checkout -b sexy-feature
```

5. Assure you have everything set up and code your feature locally </br>
```bash
bundle install
yarn install
rails db:create db:migrate
```

6. Push your feature
```bash
git add .
git commit -m "sexy feature added"
git push origin sexy-feature
```

7. Create a pull request on github </br>

8. Drag and drop your feature case in the Code Review part on trello </br>

9. Message tech channel in slack to say you completed your feature and Harass everyone until your feature is reviewed and merged to master branch

10. Once your pull request has been merged, retrieve the latest changes from master and delete your git branch 
```bash
git checkout master
git pull origin master
git sweep
```
