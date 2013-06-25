Mail = define 'Mail', ->
    #  #     champ,  type, valeur_initiale: ,
    property 'mailbox'
    property 'idRemoteMailbox',
    property 'createdAt', Number, default: 0
    property 'dateValueOf', Number, default: 0
    property 'date', Date, default: 0
    property 'headersRaw', Text
    property 'raw', Text
    property 'priority',
    property 'subject',
    property 'from',
    property 'to',
    property 'cc',
    property 'text', Text
    property 'html', Text
    property 'flags',
    property 'read', Boolean, default: false
    property 'flagged', Boolean, default: false
    property 'hasAttachments', Boolean, default: false
    property 'inReplyTo'
    property 'references'

#TODO:
Mail.hasMany Attachment, {as: 'attachments', foreignKey: 'mail_id'}
