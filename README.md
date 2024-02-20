# EarlyTracks IPS-BE Repository

## How to get started
The example are produced in FSH language that can be compiled into JSON resources using SUSHI.
The example in JSON can also be accessed in the `input/json` folder.

### Install SUSHI
To install sushi, follow the guidance here: https://fshschool.org/docs/sushi/installation/

### Generate JSON
To generate the JSON example files using Sushi, simply run:
> sushi build

### Example Files
| Output File                            | Name          | Type     | FSH File                                         | Lines  |
|----------------------------------------|---------------|----------|--------------------------------------------------|--------|
| AllergyIntolerance-allergy-1.json      | allergy-1     | Instance | Allergies-BeAllergyIntolerance.fsh              | 5 - 29 |
| Condition-problem-1.json               | problem-1     | Instance | Problem_List-BeProblem.fsh                      | 7 - 25 |
| MedicationStatement-medication-1.json  | medication-1  | Instance | Medication_Summary-Medication_Statement_IPS.fsh | 3 - 15 |
| Organization-organization1.json        | organization1 | Instance | Custodian-BeOrganization.fsh                    | 4 - 49 |
| Patient-etpatient0001.json             | etpatient0001 | Instance | Subject-BePatient.fsh                           | 8 - 96 |
| Practitioner-practitioner1.json        | practitioner1 | Instance | Author-BePractitioner.fsh                       | 1 - 37 |
| Procedure-procedure-1.json             | procedure-1   | Instance | History_of_procedures-Procedure_IPS.fsh         | 3 - 12 |
| Provenance-provenance-1.json           | provenance-1  | Instance | Attester-BeProvenance.fsh                       | 5 - 16 |


## Next Steps
The official IPS Implementation Guide references uv.IPS profiles in its composition (Conditions, Procedures, etc) which makes it incompatible with the belgian CareSets (e.g. BEProblem).

The next step are:

1. Create a BE-IPS IG (Done)
1. Create a IPS-BE profile that references Belgian CareSets
1. Update examples


#### Copyright - EarlyTracks 2024+
