Profile: TestOperation
Parent: OperationDefinition
Description: "An example profile of the OperationDefinition resource."

* parameter ^slicing.rules = #open
* parameter ^slicing.ordered = false
* parameter ^slicing.discriminator[+].type = #value
* parameter ^slicing.discriminator[=].path = "name"
* parameter contains bpkGH 1..1
* parameter[bpkGH].name = #bpkGH   // prüfen
* parameter[bpkGH].use = #in
* parameter[bpkGH].min = 1
* parameter[bpkGH].max = "1"
* parameter[bpkGH].documentation = "Der *bpkGH* Parameter dient der Zurordnung des Patienten."
* parameter[bpkGH].documentation 1..1
* parameter[bpkGH].type = #string
* parameter[bpkGH].type 1..1