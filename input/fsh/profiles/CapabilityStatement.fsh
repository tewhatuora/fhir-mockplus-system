Instance: HiraCapabilityStatement
InstanceOf: HnzToolingCapabilityStatement
Usage: #definition

* status =  #draft
* date = "2024-04-18"
* kind = #instance
* fhirVersion = #4.0.1
* format = #json

// Requried by HnzToolingCapabilityStatement
* version = "1.1.0"

* contact.name = "Example Contact Details"
* contact.telecom.value = "https://example.com"
* contact.telecom.system = #url

* extension[HnzApiSpecBuilderExtension].extension[globalHeaders].extension[+].url = Canonical(HnzCustomHeadersExtension)
* extension[HnzApiSpecBuilderExtension].extension[globalHeaders].extension[=].extension[key].valueString = "Correlation-Id"
* extension[HnzApiSpecBuilderExtension].extension[globalHeaders].extension[=].extension[value].valueUri = "https://raw.githubusercontent.com/tewhatuora/schemas/main/fhir-definitions-oas/uuid-definition.json"
* extension[HnzApiSpecBuilderExtension].extension[globalHeaders].extension[=].extension[required].valueBoolean = true
* extension[HnzApiSpecBuilderExtension].extension[licenseURL].valueUri = "https://example.license.org"
* extension[HnzApiSpecBuilderExtension].extension[licenseName].valueString = "GPLv3"
* extension[HnzApiSpecBuilderExtension].extension[externalDocs].valueUri = "https://docs.example.com/fhir"
// end of HnzToolingCapabilityStatement requirements

* rest.mode = #server
* rest.documentation = "https://fhir-ig.digital.health.nz/mockplus-system"
* rest.security.cors = false

* rest.security.service = #SMART-on-FHIR
* rest.security.extension[+].url = "http://fhir-registry.smarthealthit.org/StructureDefinition/oauth-uris"
* rest.security.extension[=].extension[+].url = "token"
* rest.security.extension[=].extension[=].valueUri = "https://auth.example.com/oauth2/token"
* rest.security.extension[=].extension[+].url = "authorize"
* rest.security.extension[=].extension[=].valueUri = "https://auth.example.com/oauth2/authorize"
* rest.security.extension[+].url = "http://fhir-registry.smarthealthit.org/StructureDefinition/capabilities"
* rest.security.extension[=].valueCode = #client-confidential-symmetric
* rest.security.extension[+].url = "http://fhir-registry.smarthealthit.org/StructureDefinition/capabilities"
* rest.security.extension[=].valueCode = #permission-user
* rest.security.extension[+].url = "http://fhir-registry.smarthealthit.org/StructureDefinition/capabilities"
* rest.security.extension[=].valueCode = #permission-patient

// Unused resource to satisfy Sushi rule, this is not used in any way
// Sushi: error Element CapabilityStatement.rest.resource has minimum cardinality 1 but occurs 0 time(s).
* rest.resource[+].type = #Endpoint

Instance: SeedAndResetOperation
InstanceOf: OperationDefinition
Usage: #definition

* version = "0.1.0"
* name = "$reset"
* status = #draft
* title = "Seed and Reset Operation for Mock+"
* kind = #operation
* code = #reset
* system = false
* type = false
* instance = true
