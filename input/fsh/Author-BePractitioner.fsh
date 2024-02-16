Alias: $be-address = https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-address

Profile: BePractitioner
Parent: Practitioner
Id: be-practitioner
Title: "BePractitioner"
Description: "Belgian federal profile for a practitioner. Initially based on the functional description of the NIHDI."
* ^url = "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitioner"
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
* identifier ^definition = "An identifier that applies to this person in this role.\r\nTypically, a NIHDI value and/or a SSIN value are given. Other systems remain allowed. Flows in organizations will most likely want to also include a local identifier, using its own system. A type can be added if needed. When it is given, a consumer SHALL NOT ignore it."
* identifier contains
    NIHDI 0..* and
    SSIN 0..* and
    CBE 0..*
* identifier[NIHDI].system 1..
* identifier[NIHDI].system = "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/nihdi" (exactly)
* identifier[NIHDI].value 1..
* identifier[SSIN].system 1..
* identifier[SSIN].system = "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin" (exactly)
* identifier[SSIN].value 1..
* identifier[CBE].system 1..
* identifier[CBE].system = "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/cbe" (exactly)
* identifier[CBE].value 1..
* active ^definition = "Whether this practitioner's record is in active use. \r\n\r\nIt is RECOMMENDED to keep the value ‘true’ as long as the practitioner is still being treated by the provider of the data."
* name 1..
* name ^definition = "The name(s) associated with the practitioner.\r\n\r\nTypically RECOMMENDED to include one familyname and at least one given name and to define this use as ‘official’."
* telecom ^definition = "A contact detail for the practitioner, e.g. a telephone number or an email address.\r\n\r\nIt is RECOMMENDED to at least add one phone or email address."
* address only $be-address
* gender ^comment = "Note that FHIR strings SHALL NOT exceed 1MB in size\r\n\r\nSpecial remarks for KMEHR users:\r\nGender is an OPTIONAL element in the practitioner resource. Refer to the be-patient specifications for some attention point for KMEHR users."
* communication ^definition = "A language the practitioner can use in patient communication.\r\n\r\nIt is RECOMMENDED to include this when available"
* communication ^comment = "The structure aa-BB with this exact casing is one the most widely used notations for locale. However not all systems code this but instead have it as free text. Hence CodeableConcept instead of code as the data type.\r\n\r\nSpecial remarks for KMEHR users:\r\nThe 'usuallanguage' element in a KMEHR message only refers to the use of W3C language codes. As such, the language codes as proposed in the FHIR standard should not present any interoperability issue.\r\nNote the KMEHR element implies it is the language usally used by the practitioner. As such, when this element from KMEHR would be mapped to a FHIR resource, the communication.preferred Boolean SHOULD be used."