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
InstanceOf: Bundle
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
* section[=].code.coding.code  = $loinc#47519-4 "History of Procedures Document"
* section[=].code.coding.display = "History of Procedures Document"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Vaginal delivery, medical personnel present (procedure)</div>"
* section[=].entry = Reference(Procedure/procedure-1)

Instance: etpatient0001
InstanceOf: Patient
Usage: #inline
* meta.versionId = "1"
* meta.lastUpdated = "2019-07-01T13:30:55.864+00:00"
* meta.profile = "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/patient-birthPlace"
* extension[=].valueAddress.extension.url = "http://hl7.org/fhir/StructureDefinition/language"
* extension[=].valueAddress.extension.valueCode = #nl
* extension[=].valueAddress.city = "Namen"
* extension[=].valueAddress.country = "BE"
* extension[+].extension.url = "code"
* extension[=].extension.valueCodeableConcept = $cd-fed-country#BE "Belgium"
* extension[=].url = "http://hl7.org/fhir/StructureDefinition/patient-nationality"
* identifier[0].use = #official
* identifier[=].type = $v2-0203#SB "Social Beneficiary Identifier"
* identifier[=].system = "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin"
* identifier[=].value = "79121137740"
* identifier[+].use = #usual
* identifier[=].type = $v2-0203#MR "Medical record number"
* identifier[=].system = "https://www.goodhealthhospital.be/standards/fhir/NamingSystem/patientrecord"
* identifier[=].value = "45XXP0PA-4"
* active = true
* name.use = #official
* name.family = "La Paradisio"
* name.given[0] = "Josephine"
* name.given[+] = "Nessa"
* telecom[0].system = #email
* telecom[=].value = "nessa.laparadisio@belgium.be"
* telecom[+].system = #phone
* telecom[=].value = "+322476792979"
* telecom[=].use = #mobile
* telecom[+].system = #phone
* telecom[=].value = "+3226718655"
* telecom[=].use = #home
* telecom[+].system = #phone
* telecom[=].value = "+322476799"
* telecom[=].use = #work
* gender = #female
* birthDate = "1979-12-11"
* birthDate.extension.url = "http://hl7.org/fhir/StructureDefinition/patient-birthTime"
* birthDate.extension.valueDateTime = "1979-12-11T13:28:17-05:00"
* address[0].extension.url = "http://hl7.org/fhir/StructureDefinition/language"
* address[=].extension.valueCode = #nl
* address[=].use = #home
* address[=].type = #both
* address[=].text = "Sloordelle 42, 1160 Oudergem"
* address[=].line = "Sloordelle 42"
* address[=].line.extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* address[=].line.extension[=].valueString = "Sloordelle"
* address[=].line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address[=].line.extension[=].valueString = "42"
* address[=].city = "Oudergem"
* address[=].postalCode = "1160"
* address[=].country = "BE"
* address[+].extension.url = "http://hl7.org/fhir/StructureDefinition/language"
* address[=].extension.valueCode = #fr
* address[=].use = #home
* address[=].type = #both
* address[=].text = "42, Allee des Colzas, 1160 Auderghem"
* address[=].line = "42, Allee des Colzas"
* address[=].line.extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* address[=].line.extension[=].valueString = "Allee des Colzas"
* address[=].line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address[=].line.extension[=].valueString = "42"
* address[=].city = "Auderghem"
* address[=].postalCode = "1160"
* address[=].country = "BE"
* address[+].use = #work
* address[=].type = #both
* address[=].text = "377, Avenue Prince d'Orange, 1420 Braine-lʼAlleud"
* address[=].line = "377, Avenue Prince d'Orange"
* address[=].line.extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* address[=].line.extension[=].valueString = "Avenue Prince d'Orange"
* address[=].line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address[=].line.extension[=].valueString = "377"
* address[=].city = "Braine-lʼAlleud"
* address[=].postalCode = "1420"
* address[=].country = "BE"
* maritalStatus.coding[0] = $v3-MaritalStatus#D "Divorced"
* maritalStatus.coding[+] = $cd-civilstate#41 "Divorced since 1/10/1994"
* contact.relationship.coding[0] = $v2-0131#N "Next-of-Kin"
* contact.relationship.coding[+] = $cd-contact-person#mother
* contact.name.family = "Vogels"
* contact.name.given = "Leia"
* contact.telecom.system = #phone
* contact.telecom.value = "+31201234567"
* contact.telecom.use = #mobile
* generalPractitioner = Reference(practitioner1)

Instance: practitioner1
InstanceOf: Practitioner
Usage: #inline
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

Instance: organization1
InstanceOf: Organization
Usage: #inline
* meta.versionId = "1"
* meta.lastUpdated = "2019-07-01T13:30:55.864+00:00"
* meta.profile = "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-organization"
* identifier[0].use = #official
* identifier[=].type = $v2-0203#PRN "Provider Number"
* identifier[=].system = "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/cbe"
* identifier[=].value = "0425.222.333"
* identifier[+].use = #official
* identifier[=].type = $v2-0203#MD "Medical License number"
* identifier[=].system = "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/nihdi"
* identifier[=].value = "999999999"
* active = true
* type = $cd-hcparty#orghospital
* name = "Enterprise Hospital Ziekenhuis"
* telecom.system = #phone
* telecom.value = "+322675199"
* telecom.use = #work
* address[0].extension.url = "http://hl7.org/fhir/StructureDefinition/language"
* address[=].extension.valueCode = #nl
* address[=].use = #work
* address[=].type = #both
* address[=].text = "Vulcansstraat 120, 1000 Brussel"
* address[=].line = "Vulcansstraat 120"
* address[=].line.extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* address[=].line.extension[=].valueString = "Vulcansstraat"
* address[=].line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address[=].line.extension[=].valueString = "120"
* address[=].city = "Brussel"
* address[=].postalCode = "1000"
* address[=].country = "BE"
* address[+].extension.url = "http://hl7.org/fhir/StructureDefinition/language"
* address[=].extension.valueCode = #fr
* address[=].use = #work
* address[=].type = #both
* address[=].text = "120, Rue des Vulcans, 1000 Bruxelles"
* address[=].line = "120, Rue des Vulcans"
* address[=].line.extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* address[=].line.extension[=].valueString = "Rue des Vulcans"
* address[=].line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address[=].line.extension[=].valueString = "120"
* address[=].city = "Bruxelles"
* address[=].postalCode = "1000"
* address[=].country = "BE"

Instance: problem-1
InstanceOf: Condition
Usage: #inline
* language = #nl
* identifier.value = "123456"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* category = $be-cs-problem-category#problem "Problem"
* severity = $sct#24484000 "Severe"
* code = $sct#11826671000119104 "Strain of muscle of left hand (disorder)"
* bodySite = $be-cs-bodysite#IM "Intramuscular"
* bodySite.text = "left hand"
* bodySite.id = "bs-01"
* subject = Reference(etpatient0001) "Josephine La Paradisio"
* encounter = Reference(Encounter/encounter1831)
* onsetDateTime = "2014"
* asserter = Reference(practitioner1) "Dr. Katherine Pulaski"
* recordedDate = "2019-06-30T13:30:55.864+00:00"
* recorder = Reference(practitioner1)

Instance: medication-1
InstanceOf: MedicationStatement
Usage: #inline
* status = #recorded
* medication.concept.coding.system = "http://snomed.info/sct"
* medication.concept.coding.code = "7947003"
* medication.concept.coding.display = "Product containing aspirin (medicinal product)"
* subject = Reference(etpatient0001) "Joseph van Nassau"
* effectiveDateTime = "2022-06-13"
* dateAsserted = "2022-06-13"
* informationSource = Reference(etpatient0001) "Joseph van Nassau"
* dosage.sequence = 1
* dosage.text = "80 mg once a day"
* dosage.asNeeded = false
* dosage.route = $sct#26643006 "Oral route (qualifier value)"
* dosage.doseAndRate.type = $dose-rate-type#ordered "Ordered"
* dosage.doseAndRate.doseQuantity = 80 'mg' "mg"
* dosage.maxDosePerPeriod.numerator.value = 1
* dosage.maxDosePerPeriod.denominator = 1 'd'

Instance: allergy-1
InstanceOf: AllergyIntolerance
Usage: #inline
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