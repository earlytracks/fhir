Alias: $condition-clinical = http://terminology.hl7.org/CodeSystem/condition-clinical
Alias: $condition-ver-status = http://terminology.hl7.org/CodeSystem/condition-ver-status
Alias: $be-cs-problem-category = https://www.ehealth.fgov.be/standards/fhir/core-clinical/CodeSystem/be-cs-problem-category
Alias: $sct = http://snomed.info/sct
Alias: $be-cs-bodysite = https://www.ehealth.fgov.be/standards/fhir/core-clinical/CodeSystem/be-cs-bodysite

Instance: problem-2
InstanceOf: BeProblem
Usage: #example
* language = #nl
* identifier[+].value = "222222222"
* identifier[=].system = "fhir.zas.be/condition"
* identifier[+].value = "ABCD-999999"
* identifier[=].system = "fhir.mariamiddelares.be/condition"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* category = $be-cs-problem-category#problem "Problem"
* severity = $sct#24484000 "Severe"
* code = $sct#11826671000119104 "Strain of muscle of left hand (disorder)"
* code[=].text = "Additional text"
* bodySite = $be-cs-bodysite#IM "Intramuscular"
* bodySite.text = "left hand"
* bodySite.id = "bs-01"
* subject = Reference(Patient/etpatient0001) "Josephine La Paradisio"
* encounter = Reference(Encounter/encounter1831)
* onsetDateTime = "2014"
* asserter = Reference(Practitioner/practitioner1) "Dr. Katherine Pulaski"
* recordedDate = "2019-06-30T13:30:55.864+00:00"
* recorder = Reference(practitioner1)