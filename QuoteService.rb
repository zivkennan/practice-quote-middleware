# rack middleware conformant object that implements quote serving on /quotes for GET requests
require_relative 'FileQuoteSource'

class QuoteService
   # app is set to nil by default since this could be the first/only app in the stack, in which case there will be no passed in app
   def initialize(app = nil)
      @quoteSource = FileQuoteSource.new
      @app = app
   end
   
   # actual quote serving is done here
   def call(env)
     # check if we actually care about this request - i.e. it has to be a GET on /quote
     if (env["REQUEST_METHOD"] == "GET" && env["PATH_INFO"].downcase == "/quote")
        # get quote
        quote = @quoteSource.GetRandomQuote
     else
        # pass the request on with no addendum
        quote = ""
     end
      
     # if needed, call other middleware
     if (@app != nil)
        status, headers, response = @app.call(env)
     else
        status, headers, response = 200, {"Content-Type" => "text/plain"}, []
     end
     
     # form appropriate response based on other middleware results
     response_body = ""
     response.each { |part| response_body += part }
     response_body += quote

     headers["Content-Length"] = response_body.length.to_s
     
     # return response
     [status, headers, [response_body]]
   end 
end
