# Application descrbies an application installed inside the Cozy instance.
Application = define 'Application', ->
    property 'name', String
    property 'description', String
    property 'slug', String
    property 'state', String
    property 'date', String, default: Date.now
    property 'icon', String
    property 'git', String
    property 'errormsg', String
    property 'branch', String
    property 'port', Number
    property 'permissions'
    property 'password', String
