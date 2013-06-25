Alarm = define 'Alarm', ->
    property 'action', String, default: 'DISPLAY'
    property 'trigg', String
    property 'description', String
    property 'related', String, default: null


### Meta document
{
doctype: alarm
version: 0.1
identificationField: 'description'
fields: [
    action: {
        displayName: "Action"
        description: "Tells the system what channel the alarm should be broadcasted through. Possible values: DISPLAY"
    },
    trigg: {
        displayName: "Trigger date"
        description: "The date when the alarm should be triggered."
    },
    description: {
        displayName: "Description"
        description: "The reason why the user wants an alarm."
    },
    related: {
        displayName: "Related"
        description: "Tells which application has created the alarm and which document is related to this alarm. Can be null."
    }
]
}
###