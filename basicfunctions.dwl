%dw 2.0
var myData =
{ user : [
   {
     group : "dev",
     myarray : [
       { name : "Shoki", id : 5678 },
       { name : "Mariano", id : 9123 }
     ]
   },
   {
     group : "test",
     myarray : [
       { name : "Sai", id : 2001 },
       { name : "Peter", id : 2002 }
     ]
   }
 ]
}

var obj= {"a":"b","c":"d"}
var arr= ["mayuri", "pooja" ,"rahul"]
output application/json
var flat= flatten(myData.user.myarray)
var flamap= (myData.user.myarray) flatMap (v,i) -> v
---
//to access last index of an array if u dont know the size of an array
//myData.user.myarray[-1]

//obj mapObject ((value, key, index) -> index: key)
//obj pluck (value,key,index) -> { (index) : key }
//arr map $$

//arr  reduce ($)
//arr reduce ((item , acc = “2”) -> item)
[2,3,3] reduce ((item, accumulator) -> accumulator + item )
