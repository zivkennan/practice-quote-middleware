Quotes Middleware
Ziv Kennan (zivkennan@gmail.com), 2014-9-14
*Rack/Rspec Practice Learning Project*

Intro
-----
This middleware allows your Rack app to serve randomized quotes on GET "/quote"
Refer to INSTRUCTIONS.txt for specs for this project; and to the rspec file for tests.

Completed:
-Add rack middleware class
-Add bundler dependencies 
-Add rspec spec
-Implement middleware functionality, deps, and basic spec

Todo:
-Read any text file i.e. fixtures/*.txt
-Restrict behavior to only respond to request on /quote
-Comply with rack specification when app is in middle of stack

Running
-------
bundle exec rackup config.ru

Testing
-------
run 'bundle exec rspec spec'

Adding Quotes
--------------
Modify any text file in fixtures/, or add your own file with a .txt extension; one quote per line
