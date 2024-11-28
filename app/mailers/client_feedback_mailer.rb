class ClientFeedbackMailer < ApplicationMailer
    default from: ENV['SMTP_USERNAME']

    def new_feedback_email(feedback_data)
        puts "feedback_data: #{feedback_data}"
        @rating = feedback_data[:rating]
        @client_name = feedback_data[:client_name]
        @email_address = feedback_data[:email_address]
        @comment = feedback_data[:comment]
        if @rating.present? && @client_name.present?
            mail(to: ENV['ADMIN_EMAIL'], subject: "⚠️ Nuevo Comentarion de  *##{@rating} ESTRELLAS de: #{@client_name}")
        else
            puts "No se pudo enviar el correo"
        end
    end
end
