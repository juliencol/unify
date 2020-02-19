# Project description
Unify is a web application for isep students. Its main goal is to manage school events.

# Rails installation 
You can skip this step if you're working in a environment with already Rails setup.
<table>
  <tr>
    <td>
      <a href="setup/macOS_setup.md">
        <img src="images/apple.png" alt="macOS" />
      </a>
    </td>
    <td>
      <a href="setup/ubuntu_setup.md">
        <img src="images/linux.png" alt="Ubuntu" />
      </a>
    </td>
  </tr>
</table>

# Project setup

### Clone the repository
```bash
git clone git@github.com:juliencol/unify.git
```

### Create the .env file to store api keys (do this once)
```bash 
touch .env
echo  '.env*' >> .gitignore
``` 

### Host a local server
```bash 
rails s
```
then open your browser and go to the url http://localhost:3000/

# Team workflow
Steps to follow when developing a new feature.
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

4. Make sure all your gems, packages and the database are up to date. </br>
```bash
bundle install
yarn install
rails db:create db:migrate
```

5. Take the time to code your feature. Then push your branch to github. Don't hesitate to commit many times.
```bash
git add .
git commit -m "sexy feature added"
git push origin sexy-feature
```

6. Open a pull request on github. Don't forget to add a description message to explain your changes. </br>

7. Wait for someone on the team to review and merge your code. Then, delete the branch. 
```bash
git checkout master
git pull origin master
git sweep
```
8. Take a break and be proud of yourself. You're the best! 