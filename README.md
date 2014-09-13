Practice: Rack Middleware
=========================

A practice designed to learn more about Rack middleware and
[Ricky Gervais Quotes](http://www.rickygervaisquotes.com/).


### Goal

Rack is a minimal and modular interface for developing web applicatons.
Rack middleware is a extension that sits between an HTTP request and an
application, thus the middleware term. You goal is to create a Rack
middleware that serves random quotes. The middleware, when complete, can
be inserted into an existing application to provide a fun set of quotes.
A sample fixture has been added for quotes by
[Ricky Gervais](http://www.rickygervaisquotes.com/).


### Expectations

* Use Bundler for gem dependencies
* Adhere to the standards of Rack and middleware
* Code is tested with RSpec
* Quotes come from examples in fixtures directory


### Request/Response

    Request: /quote

    Response Body: -example quote-

    Format: text/plain


### Testing

As mentioned, write all tests with the Rspec framework. A testing harness
should execute using the following command.

    $ rspec spec

_Do not test with an HTTP web interface, only test the library methods
and how they would respond if embedded in a web application._


### Links / Dependencies

These links are provided as a helper to find information. These are not the
only sources, so look for more if they do not give a full explanation.

[Bundler](http://bundler.io/)

[Rack](http://rack.github.io/)

[RSpec](http://rspec.info/)


### Extra credit ideas

* Setup continuous integration with Magnum CI, Travis CI, or Semaphore
* Integrate quotes via an online API
