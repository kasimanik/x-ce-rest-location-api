%dw 2.0
output application/json
---
{
	transactionId: vars.vTransactionId,
	exceptionCode: p(vars.httpStatus ++ '.exception'),
	timeStamp:  now() as String {format: "yyyy-MM-dd'T'HH:mm:ss.SSSZ" },
   	message: "SystemError",
    reason:  "Error occurred"
}