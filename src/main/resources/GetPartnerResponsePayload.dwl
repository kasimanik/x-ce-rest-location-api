%dw 2.0
output application/json SkipNullOn="everywhere"
var headerprev= p('header.prev')
---
{
header: {
count:sizeOf(payload), 
prev: if (vars.'pageSize' !=null) headerprev ++ "_page_size" ++ "=" ++ vars.'pageSize' ++ "_bookmark" ++ "=" ++ vars.'prevBookMark'  else null,
next: if (vars.'pageSize' !=null) headerprev ++ "_page_size" ++ "=" ++ vars.'pageSize' ++ "_bookmark" ++ "=" ++ vars.'nextBookMark'  else null
},
records: payload map {
systemPartnerId: $.systemPartnerId,
partnerReference: $.partnerReference,
name: $.name,
serviceAgent: $.serviceAgent,
serviceAgentSource: $.serviceAgentSource,
siteCount: $.siteCount,
activeSiteCount: $.activeSiteCount,
machineCount: $.machineCount,
activeMachineCount: $.activeMachineCount,
createdDateTime: $.createdDateTime,
modCount: $.modCount,
lastModifiedDateTime: $.lastModifiedDateTime,
}
}