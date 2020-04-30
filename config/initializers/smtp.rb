ActionMailer::Base.smtp_settings = {
    domain: 'takenote-tecm4400.herokuapp.com',
    address:        "smtp.sendgrid.net",
    port:            587,
    authentication: :plain,
    user_name:      'takenote',
    password:       ENV['SENDGRID_API_KEY']
  }