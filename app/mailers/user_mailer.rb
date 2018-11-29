class UserMailer < ApplicationMailer
    def welcome_email
        
      mail(
          from: "ratsimisampy@yahoo.fr", 
          to: "ratsimisampy@yahoo.fr", 
          subject: "Petit message de bienvenue")
     
   end
 
   def user_order(email, cart)
     @email = email
     @cart = cart
     mail(from: "ratsimisampy@yahoo.fr", to: email, subject: "Votre commande")
    end
 
    def admin_order(amount)
     @amount = amount
      mail(from: "ratsimisampy@yahoo.fr", to: "ratsimisampy@yahoo.fr", subject: "Nouvelle commande passée")
 end
end
