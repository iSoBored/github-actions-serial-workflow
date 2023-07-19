import sendgrid
import os

print("SENDGRID_TOKEN:", os.getenv("SENDGRID_TOKEN"))
sg = sendgrid.SendGridAPIClient(os.getenv("SENDGRID_TOKEN"))
message = sendgrid.Mail()

print("PUSHER_EMAIL:", os.getenv("PUSHER_EMAIL"))
message.add_to(os.getenv("PUSHER_EMAIL"))
message.set_from("test@testemail.com")
message.set_subject("Sending with SendGrid is Fun")
message.set_html("and easy to do anywhere, even with Python")
sg.send(message)