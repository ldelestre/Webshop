class UserMailer < ApplicationMailer
  def order_email(price, recipient)
     mail(from: "dumy.fool@gmail.com", to: recipient,
          subject: "Confirmation de votre commande de #{price}€")
   end
end
