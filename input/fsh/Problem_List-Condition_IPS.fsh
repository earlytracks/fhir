Alias: $condition-clinical = http://terminology.hl7.org/CodeSystem/condition-clinical
Alias: $loinc = http://loinc.org
Alias: $sct = http://snomed.info/sct

Instance: problem-1
InstanceOf: Condition
Usage: #example
* clinicalStatus = $condition-clinical#active
* category = $loinc#75326-9 "Problem"
* severity = $sct#24484000 "Severe"
* code = $sct#39065001 "Burn of ear"
* subject = Reference(Patient/etpatient0001) "Josephine La Paradisio"
* onsetDateTime = "2014"
* asserter = Reference(Practitioner/practitioner1) "Dr. Katherine Pulaski"