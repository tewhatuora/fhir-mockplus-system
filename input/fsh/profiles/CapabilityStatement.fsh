Instance: MockplusCapabilityStatement
InstanceOf: HnzToolingCapabilityStatement
Usage: #definition

* status =  #draft
* date = "2024-04-18"
* kind = #instance
* fhirVersion = #4.0.1
* format = #json
* description = "Mock+ System Operations"
* implementation.url = "https://fhir-ig.digital.health.nz/mockplus-system"
* implementation.description = "Support for Operations that are unique to Mock+"


// Required by HnzToolingCapabilityStatement
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

// Add a minimal resource definition
* rest.resource[+].type = #CapabilityStatement
* rest.resource[=].interaction[+].code = #read

// system interactions
* rest.interaction[+].code = #transaction

// system custom operations
* rest.operation[+].name = "reset"
* rest.operation[=].definition = Canonical(ClearOperation)
* rest.operation[+].name = "seed"
* rest.operation[=].definition = Canonical(SeedOperation)
* rest.operation[+].name = "provisionDashboard"
* rest.operation[=].definition = Canonical(ProvisioninDashboardOperation)

Instance: ClearOperation
InstanceOf: OperationDefinition
Usage: #definition

* version = "0.2.0"
* name = "$reset"
* status = #draft
* title = "Clear Operation for Mock+"
* kind = #operation
* code = #reset
* system = true
* type = false
* instance = false

* parameter[0].name = #return
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Result of the reset operation."
* parameter[=].type = #OperationOutcome

Instance: SeedOperation
InstanceOf: OperationDefinition
Usage: #definition

* version = "0.2.0"
* name = "$seed"
* status = #draft
* title = "Seed Operation for Mock+"
* kind = #operation
* code = #seed
* system = true
* type = false
* instance = false

* parameter[0].name = #return
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Result of the seed operation."
* parameter[=].type = #OperationOutcome

Instance: ProvisioninDashboardOperation
InstanceOf: OperationDefinition
Usage: #definition

* version = "0.1.0"
* name = "$provisionDashboard"
* status = #draft
* title = "Developer Self-Provisioning OpenSearch Dashboard"
* kind = #operation
* code = #apply
* system = true
* type = false
* instance = false

* parameter[0].name = #email
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Email for Dashboard Registration, this is not used for credentials."
* parameter[=].type = #string
* parameter[1].name = #return
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Result of the provisioning operation."
* parameter[=].type = #OperationOutcome
