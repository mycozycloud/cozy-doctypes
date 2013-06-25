# Base object, user manage tasks
Task = define 'Task', ->
    #  #     champ,  type, valeur_initiale: ,
    property 'done', Boolean, default: false
    property 'creationDate', Date, default: Date.now
    property 'completionDate', Date
    property 'description', String
    property 'previousTask', String
    property 'nextTask', String
    property 'list', String
    property 'tags', String
