%dw 2.0
output application/json
---
{
 "partnerReference":payload.partnerReference, 
 "partnerName": payload.partnerName, 
 "serviceAgent":payload.serviceAgent, 
 "franchise" : vars.franchise, 
 "updateSource" : p('ce-partner-us-updateSource') 
}