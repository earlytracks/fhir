Alias: $condition-clinical = http://terminology.hl7.org/CodeSystem/condition-clinical
Alias: $condition-ver-status = http://terminology.hl7.org/CodeSystem/condition-ver-status
Alias: $be-cs-problem-category = https://www.ehealth.fgov.be/standards/fhir/core-clinical/CodeSystem/be-cs-problem-category
Alias: $sct = http://snomed.info/sct
Alias: $be-cs-bodysite = https://www.ehealth.fgov.be/standards/fhir/core-clinical/CodeSystem/be-cs-bodysite
Alias: $linkage-type = 	http://hl7.org/fhir/ValueSet/linkage-type

Instance: LinkageExample
InstanceOf: Linkage
Title: "Example Linkage Resource"
Description: "This is a Linkage resource example to link multiple Patient records."

* active = true

// Author of the linkage (who is linking the records)
* author = Reference(Practitioner/practitioner1)

// The first linked item (master)
* item[+].type = #source
* item[=].resource =  Reference(Condition/problem-1)

