%dw 2.0
output application/json
---
 if(vars.pageSize != null and vars.bookMark != null and vars.bookMark contains "+" )
  "-" ++ (vars.bookMark splitBy('+')[1])
 else if(vars.pageSize != null and vars.bookMark != null and vars.bookMark contains "-" )
 "-" ++ (vars.bookMark splitBy('-')[1] as Number - vars.pageSize as Number)
 else if(vars.pageSize == null and vars.bookMark != null and vars.bookMark contains "+" )
 "-" ++ ((vars.bookMark splitBy('+')[1]))
 else if(vars.pageSize == null and vars.bookMark != null and vars.bookMark contains "-" )
 "NA"
  else if(vars.pageSize != null and vars.bookMark == null)
  "NA"
  else
  "NA"

