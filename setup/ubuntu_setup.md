## Install Ruby on Ubuntu (with [rbenv](https://github.com/sstephenson/rbenv))

First we need to clean up any previous Ruby installation you might have:
```bash
rvm implode && sudo rm -rf ~/.rvm
# If you got "zsh: command not found: rvm", carry on. It means `rvm` is not
# on your computer, that's what we want!

rm -rf ~/.rbenv
```

Then in the terminal, run:

```bash
sudo apt install -y build-essential tklib zlib1g-dev libssl-dev libffi-dev libxml2 libxml2-dev libxslt1-dev libreadline-dev
sudo apt clean
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
```

**Close your terminal and open it again** (Alt+F4 and restart it). If you get a warning, just **ignore** it from now (Ruby is not installed yet).


Now, you are ready to install the latest ruby version, and set it as the default version.

Run this command, it will **take a while (5-10 minutes)**

```bash
rbenv install 2.6.5
```

Once the ruby installation is done, run this command to tell the system
to use the 2.6.5 version by default.

```bash
rbenv global 2.6.5
```

Then **restart** your Terminal again (close it and reopen it).

```bash
ruby -v
```

You should see something starting with `ruby 2.6.5p`.

# Install Postgresql
```
sudo apt install -y postgresql postgresql-contrib libpq-dev build-essential
sudo -u postgres psql --command "CREATE ROLE `whoami` LOGIN createdb;"
```

# Install rails
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
