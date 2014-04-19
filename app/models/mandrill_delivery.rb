require 'mandrill'
mandrill = Mandrill::API.new ENV["MANDRILL_PASSWORD"]
message = {  
 :subject=> "Hello from the Mandrill API",  
 :from_name=> "Your name",  
 :text=>"Hi message, how are you?",  
 :to=>[  
   {  
     :email=> "jdspiral@gmail.com",  
     :name=> "Recipient1"  
   }  
 ],  
 :html=>"<html><h1>Hi <strong>message</strong>, how are you?</h1></html>",  
 :from_email=>"jdspiral@gmail.com"  
}  