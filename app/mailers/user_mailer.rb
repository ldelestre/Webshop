class UserMailer < ApplicationMailer
  def order_email(price, currency, recipient)
     mail(from: "dumy.fool@gmail.com", name: 'Mailjet Pilot', to: recipient,
     	  variables: [price, currency, recipient],
          subject: "Confirmation de votre commande de #{price.to_s+currency.to_s}€")
   end
end
