Instance: TestOperationInstance
InstanceOf: TestOperation
Title: "Test Operation" 
Description: "Die Test Operation wird aufgerufen zum Testen"
Usage: #definition

* id = "Test.Operation.Instance"
* name = "Test_Operation_Instance"
* status = #draft
* kind = #operation
* affectsState = true  
* system = false       
* type = true   
* instance = false  
* code = #write

* parameter[+].name = #test   
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Der *test* Parameter dient der Zurordnung des Patienten."
* parameter[=].type = #integer

