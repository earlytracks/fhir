Profile: BeProvenance
Parent: Provenance
Id: be-provenance
Title: "BeProvenance"
Description: """Belgian federal profile for a provenance. Note this profile does not introduce any changes from the base profile but has been created to mark its importance, 
specifically when FHIR is used in a non-document approach. General use case remarks: 'Provenance of a resource is a record that describes entities and processes involved in producing and delivering or 
otherwise influencing that resource.' (cfr. the HL7 base specifications) According to the FHIR specifications, the provenance resource SHALL only be provided when no other resource already plays this role: 
for a Patient it SHOULD be its managing organization, provenance of an Observation SHOULD be its performer, provenance of an AllergyIntolerance SHOULD be its recorder. 
'Many other FHIR resources contain some elements that represent information about how the resource was obtained, and therefore they overlap with the functionality of the Provenance.' 
Special remarks for KMEHR users: The FHIR Provenance resource in general refers to an entity that had something to do with the creation or updating of something else. In a KMEHR context, 
this is somewhat different – as it is ‘XML document’ based, each KMEHR message has an 'author' element that is responsible."""
* ^url = "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-provenance"
* ^version = "2.0.1"
* ^status = #active
* ^date = "2021-02-12T12:13:57+01:00"
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
