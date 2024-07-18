RuleSet: SlfAgent
* role.coding = http://terminology.hl7.org/CodeSystem/v3-RoleClass#PAT
* who.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* who.identifier.value = "NHI123"
* requestor = true
* extension[additionalAgentDetails].extension[mha-confidence-level].valueString = "3N"
* altId = "56237238-0a38-4ae3-b148-1e6d7a9b9d07"
* network.address = "22.21.213.352"

RuleSet: PatientDelegatorAgent
* role.coding = http://terminology.hl7.org/CodeSystem/v3-RoleCode#DELEGATOR
* who.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* who.identifier.value = "NHI123"
* requestor = false
* altId = "56237238-0a38-4ae3-b148-1e6d7a9b9d07"

RuleSet: CaregiverAgent
* role.coding = http://terminology.hl7.org/CodeSystem/v3-RoleClass#CAREGIVER
* who.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* who.identifier.value = "NHI456"
* requestor = true
* extension[additionalAgentDetails].extension[mha-confidence-level].valueString = "3N"
* altId = "56237238-0a38-4ae3-b148-1e6d7a9b9d07"
* network.address = "12.21.213.213"

RuleSet: DelegateeAgent
* role.coding = http://terminology.hl7.org/CodeSystem/v3-RoleCode#DELEGATEE
* who.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* who.identifier.value = "NHI789"
* requestor = true
* extension[additionalAgentDetails].extension[mha-confidence-level].valueString = "3N"
* altId = "73a35fec-6d01-4148-832f-f5389f9fd0fa"
* network.address = "12.21.213.213"

RuleSet: HealthWorkforceAgent
* role.coding = http://terminology.hl7.org/CodeSystem/v3-RoleClass#PROV
* who.identifier.system = "https://standards.digital.health.nz/ns/hpi-person-id"
* who.identifier.value = "cpn-123"
* altId = "externalSystemId"
* name = "John Doe"
* requestor = true
* network.address = "12.21.213.213"

RuleSet: OrganisationAgent
* who.display = "Te Whatu Ora"
* who.identifier.system = "https://standards.digital.health.nz/ns/hpi-organisation-id"
* who.identifier.value = "org-123"
* location.identifier.system = "https://standards.digital.health.nz/ns/hpi-facility-id"
* location.identifier.value = "fac-123"
* location.display = "Christchurch Hospital Radiology Department"
* requestor = false

RuleSet: SystemAgent
* who.display = "client_id123"
* requestor = false
* name = "My Health Record"
* network.address = "88.11.333.213"

RuleSet: DataSubjectAgent(what)
* what.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* what.identifier.value = "{what}"

RuleSet: AccessedResourceAgentWithError(what, query, description, error)
* what.reference = "{what}"
* query = "{query}"
* description = "{description}"
* detail[+].type = "errorBody"
* detail[=].valueBase64Binary = "{error}"
* detail[+].type = "correlationId"
* detail[=].valueString = "c500dae6-ac65-4e4f-a4c1-5aa222a6a807"

RuleSet: AccessedResourceAgent(what, query, description)
* what.reference = "{what}"
* description = "{description}"
* query = "{query}"
* detail[+].type = "correlationId"
* detail[=].valueString = "c500dae6-ac65-4e4f-a4c1-5aa222a6a807"
* securityLabel = http://terminology.hl7.org/CodeSystem/v3-Confidentiality#R

RuleSet: AccessedResourceAgentSearch(what, body, description, query)
* what.reference = "{what}"
* description = "{description}"
* query = "{body}"
* detail[+].type = "correlationId"
* detail[=].valueString = "c500dae6-ac65-4e4f-a4c1-5aa222a6a807"
* detail[+].type = "fullUrl"
* detail[=].valueString = "{what}?{query}"
* securityLabel = http://terminology.hl7.org/CodeSystem/v3-Confidentiality#R