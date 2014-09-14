class QuoteService
   # app is set to nill be default since this could be the first/only app in the stack, in which case there will be no passed in app
   def initialize(app = nil)
     @app = app
   end
   
   # actual quote serving is done here
   def call(env)
      puts "Sending quote out..."
      [200, {"Content-Type" => "text/plain"}, ["Witty Quote Goes Here..."]]
   
      # to allow actual rack behavior where multiple middleware can respond, need to call this and also
      # append other middleware's responses - TODO 
      #@app.call(env)
   end 
end
