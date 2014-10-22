Beeminder2Omnifocus
===================

A simple script to send beeminder emergency goals to a project in Omnifocus 2

TODO: convert to gem with executable, add more information

##Installation

Clone the repository 

Put your beeminder token in a dot file in your home folder. Get it from here: https://www.beeminder.com/api/v1/auth_token.json

`echo "BEEMINDER_TOKEN" > ~/.beeminder`

###Install gems + Otask

`  cd Beeminder2Omnifocus
  bundle install 
  gem install Otask`

##Use

Create a project in Omnifocus "Beeminder goals" (or similar)

Run the script `ruby Beeminder2OF.rb`
