# logs managment
LogMessage = define 'LogMessage', ->
    #  #     champ,  type, valeur_initiale: ,
    # type:
    # "info" - standard message
    # "success" - success message
    # "warning" - warning message
    # "error" - error message
    property 'type', String, default: "info"
    property 'subtype', String, default: "info"

    # timeout:
    # 0 - message will be displayed until user click OK to discard it
    # > 0 - message will be displayed only once, and will disappear after x seconds
    property 'timeout', Number, default: 5 * 60
    property 'text',
    property 'createdAt', Number
    property 'mailbox', String
    property 'counter', Number
