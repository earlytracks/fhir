Alias: $sct = http://snomed.info/sct
Alias: $allergyintolerance-clinical = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical
Alias: $allergyintolerance-verification = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification

Instance: allergy-1
InstanceOf: BeAllergyIntolerance
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2019-07-01T13:30:55.864+00:00"
* meta.profile = "https://www.ehealth.fgov.be/standards/fhir/allergy/StructureDefinition/be-allergyintolerance"
* extension.url = "https://www.ehealth.fgov.be/standards/fhir/allergy/StructureDefinition/be-ext-allergy-type"
* extension.valueCodeableConcept = $sct#609328004
* clinicalStatus = $allergyintolerance-clinical#active "Active"
* verificationStatus = $allergyintolerance-verification#confirmed
* category = #medication
* criticality = #high
* code = $sct#44027008 "Seafood"
* code.text = "Allergic to Seafood"
* patient = Reference(etpatient0001)
* onsetDateTime = "2004-05-31"
* recordedDate = "2004-05-31T14:58:00+11:00"
* recorder = Reference(practitioner1)
* asserter = Reference(etpatient0001)
* lastOccurrence = "2004-05-31"
* note.text = "Some extra information can be given here."
* reaction.substance = $sct#44027008 "Seafood"
* reaction.manifestation = $sct#247472004 "Weal"
* reaction.onset = "2004-05-31"
* reaction.severity = #severe