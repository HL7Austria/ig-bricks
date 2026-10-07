/*##############################################################################
#
# see https://chat.fhir.org/#narrow/channel/215610-shorthand/topic/Challenges.20when.20trying.20to.20re-slice/with/593439746 for more details
#
##############################################################################*/

Profile:        HL7ATCorePatientEnhanced
Parent:         HL7ATCorePatient
Id:             at-core-patient-enhanced
Title:          "HL7® AT Core Patient Profile"
Description:    """
This profile is based on HL7ATCorePatient and requires that two of the possible vbPK identifiers are present, namely vbPKGH and vbPKSV. For this two new slices are defined on the identifier element.

In order to allow correct validation, the TestValueSet reduces the ammount of allowed values for the vbPK slice, i.e. it removes the two values which are required for the vbPKGH and vbPKSV slices. As such, 
a patient instance conforming to this profile does also conform to the HL7ATCorePatient profile.

Future developments might re-open the issue about re-slicing the vbPK slice. Right now, it was not possible to achieve this properly.
"""

// * identifier

// * identifier[vbPK] contains vbPKGH 1..1 and vbPKSV 1..1
* identifier contains vbPKGH 1..1 and vbPKSV 1..1
// * identifier[vbPK][vbPKGH] 1..1
// * identifier[vbPK][vbPKSV] 1..1
* identifier[vbPK].system from TestValueSet (required)
* identifier[vbPKGH].system =  "urn:oid:1.2.40.0.34.4.22.1" (exactly)
* identifier[vbPKGH].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203" (exactly)
* identifier[vbPKGH].type.coding.code = #ANON (exactly)
* identifier[vbPKSV].system =  "urn:oid:1.2.40.0.34.4.22.2" (exactly)
* identifier[vbPKSV].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203" (exactly)
* identifier[vbPKSV].type.coding.code = #ANON (exactly)

ValueSet: TestValueSet
Title: "vbPK ValueSet"
Description: "ValueSet für die vbPKs"
* ^experimental = true
// * urn:ietf:rfc:3986#urn:oid:1.2.40.0.34.4.22.1 "vbPK GH oid"
// * urn:ietf:rfc:3986#urn:oid:1.2.40.0.34.4.22.2 "vbPK SV oid"
* urn:ietf:rfc:3986#urn:oid:1.2.40.0.34.4.22.3 "vbPK AS oid"

Instance: PatientExample01
InstanceOf: HL7ATCorePatientEnhanced
Description: "An example of a patient 01 with a license to krill."
* name
  * given[0] = "James"
  * family = "Pond"
* gender = #male
* birthDate = 1968-07-07
* identifier[vbPKGH].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203" 
* identifier[vbPKGH].type.coding.code = #ANON
* identifier[vbPKGH].system = "urn:oid:1.2.40.0.34.4.22.1"
* identifier[vbPKGH].value = "qX4/Mf2bMeop0/8tjHqS+OWox03/TViPmP6DoB+Z/h2gDtMQE99xuBhfzyCy6jXgVEbuFGIqYSU1qxMeReQd4bbJzhekXvcrFAAn6mO1ZClokZnmRekidHI6bHnmR0cQjUywgHjnpbGJIzqBOOXmdFEi2mZ59yKKdMW7yfwQviAsWWx"
* identifier[vbPKSV].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203" 
* identifier[vbPKSV].type.coding.code = #ANON
* identifier[vbPKSV].system = "urn:oid:1.2.40.0.34.4.22.2"
* identifier[vbPKSV].value = "12345qX4/Mf2bMeop0/8tjHqS+OWox03/TViPmP6DoB+Z/h2gDtMQE99xuBhfzyCy6jXgVEbuFGIqYSU1qxMeReQd4bbJzhekXvcrFAAn6mO1ZClokZnmRekidHI6bHnmR0cQjUywgHjnpbGJIzqBOOXmdFEi2mZ59yKKdMW7yfwQviAsWWx"

