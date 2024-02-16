Alias: $sct = http://snomed.info/sct

Instance: medication-1
InstanceOf: MedicationStatement
Usage: #example
* status = #active
* medicationReference = Reference(Medication/medication-1) "aspirin"
* subject = Reference(Patient/etpatient0001) "Josephine La Paradisio"
* effectivePeriod.start = "2014"
* dosage.text = "80 mg/day"
* dosage.timing.repeat.frequency = 1
* dosage.timing.repeat.period = 1
* dosage.timing.repeat.periodUnit = #d
* dosage.route = $sct#26643006 "Oral route (qualifier value)"
* dosage.doseAndRate.doseQuantity = 80 'mg' "mg"