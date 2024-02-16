Alias: $be-address = https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-address

Profile: BeOrganization
Parent: Organization
Id: be-organization
Title: "BeOrganization"
Description: "Belgian federal profile for an organization. Initially based on the functional description of the NIHDI."
* ^url = "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-organization"
* ^version = "2.0.1"
* ^status = #active
* ^date = "2022-09-13T17:21:03+02:00"
* ^publisher = "eHealth Platform"
* ^contact[0].name = "eHealth Platform"
* ^contact[=].telecom[0].system = #url
* ^contact[=].telecom[=].value = "https://www.ehealth.fgov.be/standards/fhir"
* ^contact[=].telecom[+].system = #email
* ^contact[=].telecom[=].value = "support@be-ehealth-standards.atlassian.net"
* ^contact[+].name = "Message Structure eHealth"
* ^contact[=].telecom.system = #email
* ^contact[=].telecom.value = "support@be-ehealth-standards.atlassian.net"
* ^contact[=].telecom.use = #work
* ^jurisdiction = urn:iso:std:iso:3166#BE "Belgium"
* identifier MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^definition = "Identifier for the organization that is used to identify the organization across multiple disparate systems. \r\nTypically, a NIHDI value and/or a CBE or EHP value are given. Other systems are allowed. Flows in organizations will most likely want to also include a local identifier, using its own system. A type can be added if needed. When it is given, a consumer SHALL NOT ignore it."
* identifier contains
    NIHDI 0..* and
    CBE 0..* and
    SSIN 0..* and
    EHP 0..*
* identifier[NIHDI].system 1..
* identifier[NIHDI].system = "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/nihdi" (exactly)
* identifier[NIHDI].value 1..
* identifier[CBE].system 1..
* identifier[CBE].system = "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/cbe" (exactly)
* identifier[CBE].value 1..
* identifier[SSIN].system 1..
* identifier[SSIN].system = "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin" (exactly)
* identifier[SSIN].value 1..
* identifier[EHP].system 1..
* identifier[EHP].system = "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ehp" (exactly)
* identifier[EHP].value 1..
* active ^definition = "Whether the organization's record is still in active use.\r\nIt is RECOMMENDED to keep the value ‘true’ as long as the organization is known to be active."
* type ^slicing.discriminator.type = #value
* type ^slicing.discriminator.path = "coding.system"
* type ^slicing.rules = #open
* type ^definition = "The kind(s) of organization that this is.\r\n\r\nProposed use of CD-HCPARTY to type the organisation using dept... or org... codes. Other systems remain allowed.\r\nIn typical use, RECOMMENDED to type the organization.\r\nIn the future, specific other systems might also be proposed from a federal level to better type an organization."
* type contains CD-HCPARTY 0..*
* type[CD-HCPARTY].coding.system 1..
* type[CD-HCPARTY].coding.system = "https://www.ehealth.fgov.be/standards/fhir/core/CodeSystem/cd-hcparty" (exactly)
* type[CD-HCPARTY].coding.code 1..
* telecom ^definition = "A contact detail for the organization.\r\n\r\nIt is RECOMMENDED to at least add one phone or email address."
* address only $be-address
* address ^definition = "An address for the organization.\r\n\r\nIt is RECOMMENDED to include this when available"