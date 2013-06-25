# User defines user that can interact with the Cozy instance.
User = define 'User', ->
    #  #     champ,  type, valeur_initiale: , 
    property 'email', String
    property 'timezone', String, default: "Europe/Paris"
    property 'password', String
    property 'owner', Boolean, default: false
    property 'activated', Boolean, default: false
