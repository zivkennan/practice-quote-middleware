class FileQuoteSource
   def initialize
      @@quotes = []
      begin
         f = File.open("fixtures/rickygervais.txt", "r")
            f.each_line do |line|
               @@quotes.push line.strip
            end
         f.close
       rescue
          puts "Quote source file not found, or read error, defaulting to boring single quote."
          @@quotes.push "Boring quote."
       end
   end

   def GetRandomQuote
      return @@quotes[rand(@@quotes.length)].strip
   end

   def IsQuoteInSource? quote
      @@quotes.include?(quote.strip)
   end
end
