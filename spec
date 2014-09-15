# tests for QuoteService
require_relative 'QuoteService'
require_relative 'FileQuoteSource'

describe QuoteService, "#call" do
   it "returns a valid rack result" do
      env = {"REQUEST_METHOD" => "GET", "PATH_INFO" => "/quote"} 
      quoteService = QuoteService.new
      response = quoteService.call(env)

      expect(response.length).to be 3      

      code = response[0]
      headers = response[1]
      content = response[2]      

      expect(code).to be 200
      expect(headers["Content-Type"]).to eq("text/plain")
      expect(headers["Content-Length"]).not_to be_empty
      expect(content.length).to be > 0
   end
end

describe QuoteService, "#call" do
   it "returns a bona-fide, valid quote" do
      env = {"REQUEST_METHOD" => "GET", "PATH_INFO" => "/quote"}
      quoteSource = FileQuoteSource.new
      quoteService = QuoteService.new
      quote = quoteService.call(env)[2][0]
      expect(quoteSource.IsQuoteInSource? quote).to be true
   end
end

describe QuoteService, "#call" do
   it "doesn't respond on POST" do
      env = {"REQUEST_METHOD" => "POST", "PATH_INFO" => "/quote"}
      quoteService = QuoteService.new
      quote = quoteService.call(env)[2][0]
      expect(quote).to eq("")
   end
end

describe QuoteService, "#call" do
   it "doesn't respond on other url" do
      env = {"REQUEST_METHOD" => "GET", "PATH_INFO" => "/quote123"}
      quoteService = QuoteService.new
      quote = quoteService.call(env)[2][0]
      expect(quote).to eq("")
   end
end

describe QuoteService, "#call" do
   it "does respond on GET and /quote" do
      env = {"REQUEST_METHOD" => "GET", "PATH_INFO" => "/quote"}
      quoteService = QuoteService.new
      quote = quoteService.call(env)[2][0]
      expect(quote.length).to be > 0
   end
end


