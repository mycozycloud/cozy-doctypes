Attachment = define 'Attachment', ->
    #  #     champ,  type, valeur_initiale: ,
    property 'mailId'
    property 'cid', Number
    property 'fileName',
    property 'contentType',
    property 'length', Number
    property 'checksum'
    property 'content', Text
    property 'mailbox',
