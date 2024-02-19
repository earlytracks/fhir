Alias: $v3-ActReason = http://terminology.hl7.org/CodeSystem/v3-ActReason
Alias: $v3-DataOperation = http://terminology.hl7.org/CodeSystem/v3-DataOperation
Alias: $provenance-participant-type = http://terminology.hl7.org/CodeSystem/provenance-participant-type

Instance: provenance-1
InstanceOf: Provenance
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2019-06-27T08:39:24+02:00"
* meta.profile = "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-provenance"
* target = Reference(Practitioner/2/_history/1)
* recorded = "2019-06-27T08:39:24+02:00"
* reason = $v3-ActReason#HOPERAT "Healthcare Operations"
* activity = $v3-DataOperation#CREATE
* agent.type = $provenance-participant-type#author
* agent.who = Reference(https://www.anotherfhirserver.be/fhir/Organization/02) "UZ Oudergem - CHU Auderghem"