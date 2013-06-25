Note = define 'Note', ->
    #  #     champ,  type, valeur_initiale: ,
    property 'title' , String , index: true
    property 'content' , String
    property 'creationDate' , Date , default: Date
    property 'lastModificationDate' , Date , default: Date
    property 'tags' , [String]
    property 'parent_id' , String
    property 'path' , String
    property 'humanPath' , [String]
    property '_attachments' , Object
    property 'version' , String
