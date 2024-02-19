Instance: practitioner1
InstanceOf: Practitioner
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2019-07-01T13:30:55.864+00:00"
* meta.profile = "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitioner"
* identifier[0].use = #official
* identifier[=].system = "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin"
* identifier[=].value = "79121137740"
* identifier[+].use = #official
* identifier[=].system = "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/nihdi"
* identifier[=].value = "18749704477"
* name.use = #official
* name.family = "Pulaski"
* name.given = "Katherine"
* name.suffix = "MD"
* telecom[0].system = #phone
* telecom[=].value = "022675198"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "katherine.pulaski@enterprisehospital.be"
* telecom[=].use = #work
* telecom[+].system = #fax
* telecom[=].value = "022675209"
* telecom[=].use = #work
* address.use = #home
* address.text = "Jupiterlaan 5, 1853 Grimbergen"
* address.line = "Jupiterlaan 5"
* address.line.extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* address.line.extension[=].valueString = "Jupiterlaan"
* address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address.line.extension[=].valueString = "5"
* address.city = "Grimbergen"
* address.postalCode = "1853"
* address.country = "BE"
* gender = #female
* birthDate = "1979-12-11"