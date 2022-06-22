%dw 2.0
output application/json
var arr1= [1,2,"c","d"]
var arr2= [1,2,3,"d","e"]
var num = [1,2,3,4] 
var a = 1 to 10
var text = {"a" : "b" , "c" : "d"}
---
//[2,3,3] reduce ((item , acc = “2”) → acc * item)

//num reduce ((item, accumulator=2) -> accumulator *item)
arr1 reduce (item, accumulator=[]) -> if (arr2 contains item) accumulator + item else accumulator
//arr1 reduce (item, acc = []) -> if (arr2 contains item) acc + item else acc

//flatten(text pluck [$$,$])
//a filter isEven($)

//num reduce ((item, accumulator) -> accumulator + item)

//payload mapObject ((value, key, index) -> {"FANME" : (value splitBy " ") [0],"LNAME" : (value splitBy " ") [1]})
//arr1 filter ((item, index) -> item == arr2[2])
//arr1 filter ((item, index) -> item == (arr2 map ((item, index) -> item[index])))
