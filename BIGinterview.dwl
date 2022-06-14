%dw 2.0
output application/json
var a= {
"id": 1,
"id": 11,
"secondLevel": {
"id": 2,
"id": 22,
"thirdLevel": {
"id": 3,
"id": 33
}
}
}
---

[(a pluck $)[0],(a pluck $.id)[2],(a pluck $.thirdLevel.id)[2] ]
