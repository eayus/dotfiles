import csv
import requests
import smtplib
import datetime

def send_email(user, pwd, recipient, subject, body):
    gmail_user = user
    gmail_pwd = pwd
    FROM = user
    TO = recipient if type(recipient) is list else [recipient]
    SUBJECT = subject
    TEXT = body

    # Prepare actual message
    message = """From: %s\nTo: %s\nSubject: %s\n\n%s
    """ % (FROM, ", ".join(TO), SUBJECT, TEXT)
    try:
        server = smtplib.SMTP("smtp.gmail.com", 587)
        server.ehlo()
        server.starttls()
        server.login(gmail_user, gmail_pwd)
        server.sendmail(FROM, TO, message)
        server.close()
        print('successfully sent the mail')
    except:
        print("failed to send mail")


resp = requests.get("https://www.national-lottery.co.uk/results/lotto/draw-history/csv")

lotto_history = list(csv.reader(resp.text.splitlines(), delimiter=','))
winning_number = str(lotto_history[1][7])

winner1 = 'No one'
winner2 = 'No one'
date = lotto_history[1][0]
day = datetime.datetime.strptime(date, "%d-%b-%Y").strftime("%A")
winnings = "£20" if (day == "Saturday") else "£15"

with open('/home/ellis/.scripts/bonus_ball.csv') as csvfile:
    reader = csv.reader(csvfile, delimiter=',')
    for row in reader:
        if (row[0] == winning_number):
            if (row[1] != ''):
                winner1 = row[1]

            if (row[2] != ''):
                winner2 = row[2]


message = "The winning ball was " + winning_number + " for this date: " + date + ". Board 1 winner was: " + winner1 + ". Board 2 winner was: " + winner2 + ". The winners have won " + winnings[1:] + " pounds."
print(message)
#send_email("chillingtonlotto@gmail.com", "bonusball", "home@familychambers.com", "Lottery Winners", message)
send_email("chillingtonlotto@gmail.com", "bonusball", "ellis@diagnosticbox.com", "Lottery Winners", message)
#send_email("chillingtonlotto@gmail.com", "bonusball", "samsims@btinternet.com", "Lottery Winners", message)
