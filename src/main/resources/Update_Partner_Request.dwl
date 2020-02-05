%dw 2.0
output application/json
---
{
 "partnerReference":payload.partnerReference, 
 "name": payload.name, 
 "serviceAgent":payload.serviceAgent, 
 "franchise" : vars.franchise, 
 "updateSource" : p('ce-partner-us-updateSource') 
}