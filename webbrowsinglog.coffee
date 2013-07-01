WebBrowsingLog = define 'WebBrowsingLog', ->
    property 'title', String
    property 'url', String
    property 'timestamp', Date


### Meta document
{
doctype: WebBrowsingLog
description: "Historique de navigation Web."
version: 0.1
#identificationField: 'description'
fields: [
    url: {
        displayName: "URL"
        description: "L'URL de la page visité."
        #api_field: 'pageUrl' 
    },
    title: {
        displayName: "Titre"
        description: "Le titre de la page web visitée."
        #api_field: 'pageTitle'
    },
    timestamp: {
        displayName: "Visité le"
        description: "Date et heure de visite de la page. Au format #TODO RFC/ISO."
        #api_field:  'creationDate' || lastVisitDate #TODO ?
    }, 
    
#TODO: utiles ?
#    host: { #TODO: supprimer, inclus dans l'url
#        displayName: "Hôte"
#        description: ""
#        #api_field: 'host' 
#    },
#    company_name: { #TODO: Cette dénomination est-elle toujours pertinente.
#        displayName: "Entreprise"
#        description: "L'entreprise éditrice du site Web." #TODO: optionel ?
#        #api_field: 'compagnyName' 
#    },
#    user_id: {
#        displayName: "Identifiant utilisateur"
#        description: "" #TODO: Privowny. Pertinent ?
#        #api_field: '' 
#    },
#    
#    first_visit: {
#        displayName: "Première visite" #TODO: est-ce bien la signification de ce champ pour PO ?
#        description: "Heure et date de première visite."
#        #api_field: 'creationDate' 
#    },
#    last_visit: {
#        displayName: "Dernière visite" #TODO: est-ce bien la signification de ce champ pour PO?
#        description: "Heure et date de première visite."
#        #api_field: '' 
#    },
#
    ]
}
###




