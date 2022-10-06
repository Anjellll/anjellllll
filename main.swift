//Создать программу, которая вручную отсортирует числа, введенные используя readLine (15 баллов)

print("Введите числа")
var sortedArray: [Int] = []
var count = 5
while let line = Int(readLine()!), count != 0 {
    print(count)
    count -= 1
    sortedArray.append(line)
    sortedArray = sortedArray.sorted{ $0 < $1}
    print((sortedArray))
}
print(sortedArray)
print("the end")




//Создать программу, которая посчитает количество пробелов в тексте и количество символов (15 баллов)

var words = "Oh, she is my best friends "
 print("количество символов в слове \(words) равно \(words.count)")


//Создать программу, которая сгруппирует слова, введенные в readLine по первой букве в отдельные массивы внутри одного массива (15 баллов)


var totalArray: [[String]] = []


func addToArray(name: String){
    var found = false
    var array: [String] = []
    let first = name.first!

    for (index, item) in totalArray.enumerated(){
        for (index2, item2) in item.enumerated(){
            for item3 in item2{
                if item3 == first && index2 == 0 && found == false{
                    totalArray[index].append(name)

                    found = true
                    continue
                }
            }
        }
    }
if found == false{
    array.append(String(first))
    array.append(name)

    totalArray.append(array)

}
}




addToArray(name: "Sam")
addToArray(name: "Kanat")
addToArray(name: "Guliya" )
addToArray(name: "Daniyar")
addToArray(name: "Atai")
addToArray(name: "Jyldyz")
addToArray(name: "Kutman")
addToArray(name: "Islam")
addToArray(name: "Anna")
addToArray(name: "Vistoriya")
addToArray(name: "Elsa")
addToArray(name: "Yanna")
addToArray(name: "Beka")
addToArray(name: "Aidar")
addToArray(name: "Bakyt")
addToArray(name: "Cholpon")
addToArray(name: "Kanykey")

print(totalArray.sorted(by: {$0.first! < $1.first!}))
for item in totalArray{
    print("Letter \(item.first!). Amount of contacts \(item.count - item.count/2 - 1)")
}
