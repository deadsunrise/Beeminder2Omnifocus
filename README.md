Beeminder2Omnifocus
===================

A simple script to send beeminder emergency goals to a project in Omnifocus 2

TODO: convert to gem with executable, add more information

##Instalation

Clone the repository 

Put your beeminder token in a dot file in your home folder:

`echo "BEEMINDER_TOKEN" > ~/.beeminder`

###Install gems + Otask

`cd Beeminder2Omnifocus
bundle install 
gem install Otask`

##Use

Create a project in Omnifocus "Beeminder goals" (or similar)

Run the script `ruby Beeminder2OF.rb`
