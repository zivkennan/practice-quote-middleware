Quotes Middleware
=================

- Ziv Kennan (zivkennan@gmail.com)
- 2014-9-14
- *Rack/Rspec Practice Learning Project*

Intro
------

This middleware allows your Rack app to serve randomized quotes on GET "/quote" requests

Refer to INSTRUCTIONS.md for specs for this project; and to the rspec file for tests.

It is just a demo, and would require some revision for me to feel comfortable with it being used on real systems (refer to todo)

**Completed:**

- Add rack middleware class
- Add bundler dependencies 
- Add rspec spec
- Implement middleware functionality, deps, and basic spec
- Read any text file i.e. fixtures/*.txt
- Restrict behavior to only respond to request on /quote
- Comply with rack specification when app is in middle of stack

**Todo:**

- More tests & reduce duplication in current tests
	- Test interaction with multiple rack apps
	- Remove environment hash duplication
	- Add test to generate quote file and make sure quotes make it to source output
	- Etc...
- Add additional quote providers (i.e. API based, etc)
- Add CI / build integration / hosting
- Add more error and exception handling esp. around quote reading
- Add logging

Running
-------

run `bundle exec rackup config.ru`

Testing
-------

run `bundle exec rspec spec`

Adding Quotes
--------------

Modify any text file in `fixtures/`, or add your own file with a .txt extension; one quote per line
