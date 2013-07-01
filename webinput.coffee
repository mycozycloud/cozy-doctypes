WebInput = define 'WebInput', ->
    property 'label', String
    property 'value', String
    property 'encrypted', Boolean
    property 'siteName', String
    property 'companyName', String
    property 'companyRename', String
    property 'poParamId', String
    property 'poPageId', String
    property 'poSiteId', String
    
### Meta document
{
doctype: WebInput
version: 0.1
description: "Une information entrée sur le web par l'utilisateur. Origine : Privowny."
#TODO: siteName, companyName, companyRename : quelles différences. pageId mais pas d'URL ? Pas d'horodatage ?'

#identificationField: 'description'
fields: [
    label: {
        displayName: "Étiquette"
        description: "Étiquette, intitulé de la donnée qui a été entrée."
        #api_field: 'paramLabel' 
    },
    value: {
        displayName: "Valeur"
        description: "La donnée entrée."
        #api_field: 'paramValue' 
    },
    encrypted: {
        displayName: "Chiffrée"
        description: "Vrai si la donnée est chiffrée, faux autrement."
        #api_field: 'encrypted' 
    },
    siteName: {
        displayName: "Site"
        description: "Nom du site sur lequel la donnée a été entrée."
        #api_field: 'siteName' 
    },
    companyName: {
        displayName: "Entreprise" #TODO: toujours une entreprise ? Hôte ?
        description: "Nom du site sur lequel la donnée a été entrée."
        #api_field: 'companyName' 
    },    
    companyRename: {
        displayName: "Renomage de l'entreprise"
        description: "Renomage de l'entreprise par l'utilisateur."
        #api_field: 'userCompanyName' 
    },
    poParamId: {
        displayName: "PO paramID"
        description: "Identifiant Privowny de cette donnée (param_id Privowny)."
        #api_field: 'id' 
    },
    poPageId: {
        displayName: "PO pageID"
        description: "Identifiant Privowny de la page sur laquelle la donnée a été entrée."
        #api_field: 'pageId' 
    },
    poSiteId: {
        displayName: "PO siteID"
        description: "Identifiant Privowny du site sur lequel la donnée a été entrée."
        #api_field: 'siteId' 
    },
    ]
}
###
