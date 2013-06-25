Tree = define 'Tree', ->
    #  #     champ,  type, valeur_initiale: ,
    property 'type' , String , default: "Note"
    property 'struct' , String
    property 'lastModificationDate' , Date , default: Date
