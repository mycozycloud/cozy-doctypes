GeolocationLog = define 'GeolocationLog', ->
    property 'timestamp', Date
    property 'latitude', Number
    property 'longitude', Number
    property 'radius', Number, default: 0
    property 'deviceState', String, default: null # null | 'OFF' | 'UNKNOWN'
    
    
### Meta document
{
doctype: GeolocationLog
description: "Traces spatio-temporels. Position géographique du mobile relevée tous les 15'. Origine : Orange."
version: 0.1
#identificationField: 'description'
fields: [  
    timestamp: {
        displayName: "Horodatage"
        description: "Date et heure du point. #TODO: format"
        #csv_field: 'dt'
    },
    latitude: {
        displayName: "Latitude"
        description: "Latitude du lieu. En degrés, selon la norme wsg84 (http://fr.wikipedia.org/wiki/WGS_84). Null si l'état du terminal n'est pas 'allumé' (device_state != ON)."
        #csv_field: 'lat'
    },
    longitude: {
        displayName: "Longitude"
        description: "Longitude du lieu. En degrés, selon la norme wsg84 (http://fr.wikipedia.org/wiki/WGS_84)."
        #csv_field: 'lon'
    },
    radius: {
        displayName: "Rayon"
        description: "Rayon de précision du point de géolocalisation. En mètres."
        #csv_field: 'radius'
    },
    deviceState: {
        displayName: "État du terminal"
        description: "Indique l'état (allumé : null, éteind : 'OFF', inconnu : 'UNKNOWN') du terminal à cet instant. La géolocalisation est pertinente seulement dans l'état allumé (null)." #TODO: Utiliser null comme état ON (compatibilité trace gps ?)
        #csv_field: # result + err_msg
    }
    
}
###
