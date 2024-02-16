Alias: $sct = http://snomed.info/sct

Instance: procedure-1
InstanceOf: Procedure
Usage: #example
* status = #completed
* category = $sct#386637004 "Obstetric procedure (procedure)"
* code = $sct#22633006 "Vaginal delivery, medical personnel present (procedure)"
* code.text = "Vaginal delivery"
* subject = Reference(Patient/etpatient0001) "Josephine La Paradisio"
* performedDateTime = "2012-06-02"
* performer.actor.display = "Mme Martha Vroedvrouw"