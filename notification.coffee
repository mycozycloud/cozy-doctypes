# Notifications are messages sent to the user
Notification = define 'Notification', ->
    #  #     champ,  type, valeur_initiale: ,
    property 'text', String
    property 'type', String
    property 'resource', Object, default: null
    property 'publishDate', String, default: Date.now

    property 'app', String # the app that created that notif
    property 'ref', String # for apps with multiple notifs to manage
