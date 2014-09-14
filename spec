# tests for QuoteService
require_relative 'QuoteService'

describe QuoteService, "#call" do
   it "returns a witty quote" do
      env = []
      quoteService = QuoteService.new
      quote = quoteService.call(env)
      expect(quote).not_to be_empty
   end
end
