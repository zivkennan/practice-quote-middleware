class FileQuoteSource
   def initialize
      @@quotes = []
      begin
         Dir.glob("fixtures/*.txt").each do |filename|
            f = File.open(filename, "r")
            f.each_line do |line|
               @@quotes.push line.strip
            end
            f.close
          end
      rescue
          puts "Quote source file(s) not found, or read error, defaulting to boring single quote."
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
