# tests for QuoteService
require_relative 'QuoteService'
require_relative 'FileQuoteSource'

describe QuoteService, "#call" do
   it "returns a valid rack result" do
      env = [] # test does not use env, so we set it empty
      quoteService = QuoteService.new
      response = quoteService.call(env)

      expect(response.length).to be 3      

      code = response[0]
      type = response[1]
      content = response[2]      

      expect(code).to be 200
      expect(type).to eq({"Content-Type"=>"text/plain"})
      expect(content.length).to be > 0
   end
end

describe QuoteService, "#call" do
   it "returns a bona-fide, high quality, Ricky Gervais quote" do
      env = [] # test does not use env, so we set it empty
      quoteSource = FileQuoteSource.new
      quoteService = QuoteService.new
      quote = quoteService.call(env)[2][0]
      expect(quoteSource.IsQuoteInSource? quote).to be true
   end
end
