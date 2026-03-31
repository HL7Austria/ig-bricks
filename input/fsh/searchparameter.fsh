Instance: 1000
InstanceOf: SearchParameter
Usage: #definition
* meta.versionId = "1"
* meta.lastUpdated = "2026-03-31T13:55:05.380+00:00"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* extension[=].valueCode = #normative
* extension[+].url = "http://hl7.org/fhir/build/StructureDefinition/path"
* extension[=].valueString = "Bundle.entry(0).resource"
* url = "http://hl7.org/fhir/build/SearchParameter/Bundle-composition"
* name = "Search Composition in Bundle"
* status = #active
* description = "The first resource in the bundle, if the bundle type is \"document\" - this is a composition, and this parameter provides access to search its contents"
* code = #composition
* base = #Bundle
* type = #reference
* expression = "Bundle.entry[0].resource as Composition"