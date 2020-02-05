%dw 2.0
output application/java
var franchiseId = attributes.headers.'franchise'
var clientid = attributes.headers.'client_id'

---
if ( p(clientid ++ '.franchise') == franchiseId ) franchiseId else null