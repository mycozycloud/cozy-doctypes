PhoneCommunicationLog = define 'PhoneCommunicationLog', ->
    property 'direction', String # INCOMING | OUTGOING | FORWARDED
    property 'timestamp', Date
    property 'subscriberNumber', String
    property 'correspondantNumber', String
    property 'chipCount', Number
    property 'chipType', String # s | c | M
    property 'channelType', String #TODO: enum
    property 'channel', String #TODO: enum
    property 'imsi', String
    property 'imei', String
    property 'latitude', Number
    property 'longitude', Number


### Meta document
{
doctype: PhoneCommunicationLog
description: "Journal des communications téléphoniques (voix, sms, data), horodatées et géolocalisées. Origine : Orange."
version: 0.1
#identificationField: 'description'
fields: [
    direction: {
        displayName: "Direction"
        description: "Direction de la communication (entrante : 'INCOMING', sortante : 'OUTGOING', réacheminé : 'FORWARDED')."
        #csv_field: 'CCR_ID'
    },
    timestamp: {
        displayName: "Horodatage"
        description: "Date et heure de début de la communication. Au format " #TODO: RFC || ISO ?)
        #csv_field: 'DT_HOROD'
    },
    subscriberNumber: {
        displayName: "Numéro de l'abonné"
        description: "Numéro de téléphone de l'abonné (p.e. pour une communication sortante il sera l'appelant, pour une communication entrante c'est le numéro appelé)"
        #csv_field: 'NDE_NU_CONCERNE'
    },
    correspondantNumber: {
        displayName: "Numéro du correspondant"
        description: "Numéro de téléphone du mobile partenaire (p.e. pour une communciation sortante le partenaire est le numéro appelé, pour une communication entrante le numéro appelant)." #TODO: anonymisation 4 chiffres ?
        #csv_field: 'NDE_NU_CORRESP'
    },
    chipCount: {
        displayName: "Unités de valorisation"
        description: "Nombres d'unitée consommées. La grandeur est définie par le champs 'Grandeur de valorisation' (chip_type)"
        #csv_field: 'NB_UNITE'
    },
    chipType: {
        displayName: "Grandeur de valorisation"
        description: "Nature de l'unité de valorisation de l'appel (seconde: 's', caractère: 'c', message: 'M')" #TODO: recenser tous les codes existants.
        #csv_field: CO_TYPUNIT
    },
    channelType: {
        displayName: "Type du canal de transmission"
        description: "Type de support trafic (téléservice ou service support)" #TODO: quelles sont les  différentes valeurs 
        #csv_field: 'CODETYS'
    },
    channel: {
        displayName: "Canal de transmission"
        description: "support trafic (téléphonie, transmission données mode circuit...)" #TODO: quelles sont les  différentes valeurs
        #csv_field: CODESUP
    },
    imsi: {
        displayName: "IMSI"
        description: "Identifiant international d'abonné mobile (IMSI : International Mobile Subscriber Identify)" # Que du mobile ?
        #csv_field: CSI_ID
    },
    imei: {
        displayName: "IMEI"
        description: "Identifiant international du terminal de l'abonné (International Mobile Equipment Identity : IMEI)"
        #csv_field: 'NU_IMEI'
    },
    latitude: {
        displayName: "Latitude"
        description: "Latitude du lieu de la communication. En degrés, selon la norme wsg84 (http://fr.wikipedia.org/wiki/WGS_84)."
        #csv_field: 'lat'
    },
    longitude: {
        displayName: "Longitude"
        description: "Longitude du lieu de la communication. En degrés, selon la norme wsg84 (http://fr.wikipedia.org/wiki/WGS_84)."
        #csv_field: 'lon'
    },
    
#Deprecated    
#    : {
#        displayName:
#        description:
#        #csv_field: 
#    },
#CO_ZLOC;Char;5;Code de la zone de localisation correspondant à un regroupement de cellules (LAC).
#    : {
#        displayName:
#        description:
#        #csv_field: 
#    },
#CO_IDCELL;Char;5;Identifiant de la zone de couverture d'un relais
#
    ]
}
###
