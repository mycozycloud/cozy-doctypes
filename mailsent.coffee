MailSent = define 'MailSent', ->
    #  #     champ,  type, valeur_initiale: ,
    property 'mailbox'
    property 'createdAt', Number, default: 0
    property 'sentAt', Number, default: 0
    property 'subject',
    property 'from',
    property 'to',
    property 'cc',
    property 'bcc',
    property 'html', Text
