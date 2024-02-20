Alias: $loinc = http://loinc.org
Alias: $v3-ActClass = http://terminology.hl7.org/CodeSystem/v3-ActClass
Alias: $cd-fed-country = https://www.ehealth.fgov.be/standards/fhir/core/CodeSystem/cd-fed-country
Alias: $v2-0203 = http://terminology.hl7.org/CodeSystem/v2-0203
Alias: $v3-MaritalStatus = http://terminology.hl7.org/CodeSystem/v3-MaritalStatus
Alias: $cd-civilstate = https://www.ehealth.fgov.be/standards/fhir/core/CodeSystem/cd-civilstate
Alias: $v2-0131 = http://terminology.hl7.org/CodeSystem/v2-0131
Alias: $cd-contact-person = https://www.ehealth.fgov.be/standards/fhir/core/CodeSystem/cd-contact-person
Alias: $cd-hcparty = https://www.ehealth.fgov.be/standards/fhir/core/CodeSystem/cd-hcparty
Alias: $condition-clinical = http://terminology.hl7.org/CodeSystem/condition-clinical
Alias: $condition-ver-status = http://terminology.hl7.org/CodeSystem/condition-ver-status
Alias: $be-cs-problem-category = https://www.ehealth.fgov.be/standards/fhir/core-clinical/CodeSystem/be-cs-problem-category
Alias: $sct = http://snomed.info/sct
Alias: $be-cs-bodysite = https://www.ehealth.fgov.be/standards/fhir/core-clinical/CodeSystem/be-cs-bodysite
Alias: $dose-rate-type = http://terminology.hl7.org/CodeSystem/dose-rate-type
Alias: $allergyintolerance-clinical = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical
Alias: $allergyintolerance-verification = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification

Instance: IPS-examples-Bundle-01
InstanceOf: BundleBeIPS
Usage: #example
* language = #en-US
* identifier.system = "urn:oid:2.16.724.4.8.10.200.10"
* identifier.value = "175bd032-8b00-4728-b2dc-748bb1501aed"
* type = #document
* timestamp = "2017-12-11T14:30:00+01:00"
* entry[0].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-1e639094ad4d"
* entry[=].resource = composition-etpatient0001
* entry[+].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-1e639094ad4d"
* entry[=].resource = etpatient0001
* entry[+].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-1e639094ad4d"
* entry[=].resource = practitioner1
* entry[+].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-1e639094ad4d"
* entry[=].resource = organization1
* entry[+].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-1e639094ad4d"
* entry[=].resource = problem-1
* entry[+].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-1e639094ad4d"
* entry[=].resource = medication-1
* entry[+].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-1e639094ad4d"
* entry[=].resource = allergy-1

Instance: composition-etpatient0001
InstanceOf: Composition
Usage: #inline
* identifier.system = "urn:oid:2.16.724.4.8.10.200.10"
* identifier.value = "3f69e0a5-2177-4540-baab-7a5d0877428f"
* status = #final
* type = $loinc#60591-5 "Patient summary Document"
* subject = Reference(etpatient0001)
* date = "2019-07-01T13:30:55.864+00:00"
* author = Reference(practitioner1)
* title = "Patient IPS Example, as produced by EarlyTracks, as of July 07, 2019 14:30"
* confidentiality = #N
* attester[0].mode = #legal
* attester[=].time = "2019-07-01T13:30:55.864+00:00"
* attester[=].party = Reference(practitioner1)
* attester[+].mode = #legal
* attester[=].time = "2019-07-01T13:30:55.864+00:00"
* attester[=].party = Reference(organization1)
* custodian = Reference(organization1)
* relatesTo.code = #appends
* relatesTo.targetIdentifier.system = "urn:oid:2.16.724.4.8.10.200.10"
* relatesTo.targetIdentifier.value = "c2277753-9f90-4a95-8ddb-a0b3f6e7d292"
* event.code = $v3-ActClass#PCPR
* event.period.end = "2019-07-01T13:30:55.864+00:00"
* section[0].title = "Active Problems"
* section[=].code = $loinc#11450-4 "Problem list Reported"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Severe strain of muscle of left hand</div>"
* section[=].entry = Reference(problem-1)
* section[+].title = "Medication"
* section[=].code = $loinc#10160-0 "History of Medication use Narrative"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Product containing aspirin (medicinal product)</div>"
* section[=].entry = Reference(medication-1)
* section[+].title = "Allergies and Intolerances"
* section[=].code = $loinc#48765-2 "Allergies and adverse reactions Document"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Allergic to Seafood</div>"
* section[=].entry = Reference(allergy-1)
* section[+].title = "History of Procedures"
* section[=].code.coding.system = "http://loinc.org"
* section[=].code.coding.code  = $loinc#47519-4 "Allergies and adverse reactions Document"
* section[=].code.coding.display = "History of Procedures Document"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Vaginal delivery, medical personnel present (procedure)</div>"
* section[=].entry = Reference(Procedure/procedure-1)