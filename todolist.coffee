# Todo list contains tasks. Each tasks are linked inside todo list.
TodoList = define 'TodoList', ->
    #  #     champ,  type, valeur_initiale: ,
    property 'title', String
    property 'tags', String
    property 'path', String
    property 'humanPath', String
