require 'mandrill'

class MandrillDelivery
  attr_accessor :message

  def initialize(mail)
  end

  def deliver!(mail)
    build_meta_mandrill(mail)
    send_mandrill(mail)
  end

#Message stuff

  def build_meta_mandrill(mail)

    #build Mandrill message hash
    @message = {
      :from_name=> "Admin",
      :from_email=>"jdspiral@gmail.com",
      :subject=> "#{mail['subject']}",
      :to=>[
            {
              :email=> "#{mail['jdspiral@gmail.com']}",
              :name=> "#{mail['name']}"
            }
           ],
      :auto_text => true,
      :global_merge_vars => [
                             {
                               :name => "LISTCOMPANY",
                               :content => "Company Name Here"
                             }
                            ]
    }

    true
  end

  #sends email via Mandrill
  def send_mandrill(mail)
    m = Mandrill::API.new

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
sending = m.messages.send message  
puts sending
  end

end