class Person {
    var name : String?
    var city : String?
    var phone : String?
    
    init(iname : String, icity: String, iphone: String){
        name = iname
        city = icity
        phone = iphone
    }
}


var personArray = [Person]()

personArray.append(Person(iname: "Bryan", icity: "Glasgow", iphone: "01412222222"))
personArray.append(Person(iname: "Brian", icity: "London", iphone: "01412222456"))
personArray.append(Person(iname: "Jon", icity: "Edinburgh", iphone: "01412222356"))
personArray.append(Person(iname: "Chris", icity: "Glasgow", iphone: "01412222234"))
personArray.append(Person(iname: "Kris", icity: "Paris", iphone: "01412222876"))
personArray.append(Person(iname: "George", icity: "Glasgow", iphone: "01412224456"))
personArray.append(Person(iname: "Betty", icity: "Glasgow", iphone: "01412222667"))
personArray.append(Person(iname: "Wendy", icity: "Perth", iphone: "01412222224"))


print(personArray.count)

print(personArray[0].name!)

for items in personArray {
    if items.city == "Glasgow"{
    print("\(items.name!) lives in \(items.city!)")
    }
}
 
