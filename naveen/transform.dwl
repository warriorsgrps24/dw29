%dw 2.0
output application/json
---
((payload.Contact_Data.*Email_Address_Data filter ((item, index) -> item.Usage_Data.Type_Data.Type_Reference.*ID contains  "abc" ) reduce $$).Email_Address)

//getting email adress by using filter function, *can be used to print all the values inside of data