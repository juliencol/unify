# Install Ruby on MacOS (with [rbenv](https://github.com/sstephenson/rbenv))
Skip this step if you already have ruby installed on your computer. </br>
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
Run this command, it will take a while (5-10 minutes).
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


## Install Postgresql
Skip this step if you already have ruby installed on your computer. </br>
Install postgresql
```bash
brew install postgresql
brew services start postgresql
```
Once you've done that, let's check if it worked:
```bash
psql -d postgres
```
If you enter a new prompt like this one, you're good!
```bash
psql (9.5.3)
Type "help" for help.
postgres=#
```
To quit it, type `\q` then `Enter`.

# Install Rails 
To install Rails, use the gem install command provided by RubyGems:
```bash
gem install rails
```
To verify that you have everything installed correctly, you should be able to run the following:
```bash
rails --version
```
If it says something like "Rails 5.0.0", you are ready to continue. </br>

If you have any trouble with the installation, refer to the documentation [here](https://guides.rubyonrails.org/v5.0/getting_started.html)
