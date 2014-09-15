# file based quote source - reads from files that match this relative pattern: "fixtures/*.txt"
class FileQuoteSource
   def initialize
      # read a set of quotes from fixtures directory - assume one quote per line
      # the eassumption here is that the source is initalized once, otherwise caching would need to be used as we would not want to do I/O
      # every time we need a quote - we are also assumeing all quotes will fit into memory
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

   # used to actually get a quote
   def GetRandomQuote
      return @@quotes[rand(@@quotes.length)].strip
   end
    
   # used to check if a quote exists within a source
   def IsQuoteInSource? quote
      @@quotes.include?(quote.strip)
   end
end
