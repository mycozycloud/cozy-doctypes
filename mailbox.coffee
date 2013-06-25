# Mailbox object to store the information on connections to remote servers
# and have attached mails
Mailbox = define 'Mailbox', ->
    #  #     champ,  type, valeur_initiale: ,
    # identification
    property 'name'
    property 'config', Number, default: 0
    property 'newMessages', default: 0
    property 'createdAt', Date, default: Date

    # shared credentails for in and out bound
    property 'login'
    property 'account'
    property 'password'

    # data for outbound mails - SMTP
    property 'smtpSserver'
    property 'smtpSendAs'
    property 'smtpSsl', Boolean, default: true
    property 'smtpPort', Number, default: 465

    # data for inbound mails - IMAP
    property 'imapServer'
    property 'imapPort'
    property 'imapSecure', Boolean, default: true
    property 'imapLastSync', Date, default: 0
    property 'imapLastFectechDate', Date, default: 0
    # this one is used to build the query to fetch new mails
    property 'imapLastFetchedId', Number, default: 0

    # data regarding the interface
    property 'checked', Boolean, default: true
    property 'color', default: "#0099FF" # color of the mailbox in the list
    property 'statusMsg', default: "Waiting for import" # status visible for user

    # data for import
    # ready to be fetched for new mail
    property 'activated', Boolean, default: false
    property 'status', String, default: "freezed"
    property 'mailsToImport', Number, default: 0
