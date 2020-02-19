# Project description
Unify is a web application for isep students. Its main goal is to manage school events.

# Rails Setup
### Install Ruby (on MacOS)
Make sure you have homebrew. If not install it [here](https://brew.sh/). </br>
Now let's get rbenv and ruby-build packages from Homebrew, they'll be useful.
```bash
brew uninstall --force rbenv ruby-build 
```
Then quit all your opened terminal windows (Cmd + Q) and restart one. Then run:
```bash
brew install rbenv 
```
Again, quit all your terminal windows and restart. </br>
Now, you are ready to install the latest ruby version, and set it as the default version. </br>
Run this command, it will take a while (5-10 minutes)
```bash
rbenv install 2.6.5 
```
Once the ruby installation is done, run this command to tell the system to use the 2.6.5 version by default.
```bash
rbenv global 2.6.5     # tell your system to use the 2.6.5 version by default
```
Then restart your Terminal again (close it and reopen it).
```bash
ruby -v     # check if it worked well 
```

### Get the repository
Make sure you're in the folder where you want the repo to be.
```bash
git clone git@github.com:juliencol/unify.git
```

### Adding the the hidden folder for safety (do this once)
```bash 
touch .env
echo  '.env*' >> .gitignore
``` 

### Host a local server
Make sure you're in the unify repo
```bash 
rails s
```
then open your browser and go to the url http://localhost:3000/

# Team workflow
IMPORTANT: Everyone must complete all these steps to complete a feature. Our workflow will lead us to success, don't ever destroy it. 

1. Choose a feature, assign your name on it in the [glo board](https://app.gitkraken.com/glo/board/XftSI3ieeQAQ582N) and drag and drop it in the Doing section </br>

2. Understand every aspect of your feature. Ask questions in slack if everything is not crystal clear. </br>

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

6. Assure your feature answers everything we want, then push it
```bash
git add .
git commit -m "sexy feature added"
git push origin sexy-feature
```

7. Create a pull request on github </br>

8. Drag and drop your feature case in the Code Review part in the [glo board](https://app.gitkraken.com/glo/board/XftSI3ieeQAQ582N) </br>

9. Message [tech channel](https://app.slack.com/client/TKF4P6WH4/CKF69AQMC) in slack to say you completed your feature and Harass everyone until your feature is reviewed and merged to master branch

10. Once your pull request has been merged, retrieve the latest changes from master and delete your git branch 
```bash
git checkout master
git pull origin master
git sweep
```
