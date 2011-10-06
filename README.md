#  Rails Setup:

### Install RVM and ruby versions
  Demo: http://gauravmali.com/sandbox/yelp

### Create and use Gemsets
  rvm gemset create <gemset_name>
  rvm use <ruby_version>@<gemset_name>

### Install Dependancies
  rvm package install zlib
or
  rvm install zlib
or
  sudo aptitude install build-essential libssl-dev libreadline5 libreadline5-dev zlib1g zlib1g-dev
or
  sudo apt-get install build-essential libssl-dev libreadline5 libreadline5-dev zlib1g zlib1g-dev 
 
### Install Rails
  gem install rails -v2.3.5
