import Foundation

var str = "Hello World. This is Swift programming language"

// Довжина рядка
let length = str.count
print("Довжина рядка: \(length)")

// Замінюємо всі входження 'i' на 'u'
str = str.replacingOccurrences(of: "i", with: "u")
print("Після заміни 'i' на 'u': \(str)")

// Видаляємо символи на позиціях 4, 7, 10 (індекси 3, 6, 9)
let indicesToRemove: Set<Int> = [3, 6, 9]
var filteredStr = ""
for (index, char) in str.enumerated() {
    if !indicesToRemove.contains(index) {
        filteredStr.append(char)
    }
}
str = filteredStr
print("Після видалення 4-го, 7-го та 10-го символів: \(str)")

// Додаємо '(modified)' в кінець рядка
str.append(" (modified)")
print("Після додавання '(modified)': \(str)")

// Перевірка, чи рядок є порожнім
print("Чи рядок є пустим: \(str.isEmpty)")

// Додаємо '.' в кінець
str.append(".")
print("Після додавання '.': \(str)")

// Перевіряємо, чи починається рядок з 'Hello'
print("Чи рядок починається з 'Hello': \(str.hasPrefix("Hello"))")

// Перевіряємо, чи закінчується рядок на 'world.'
print("Чи рядок закінчується 'world.': \(str.hasSuffix("world."))")

// Вставляємо '-' на 10-ту позицію
if let insertIndex = str.index(str.startIndex, offsetBy: 10, limitedBy: str.endIndex) {
    str.insert("-", at: insertIndex)
    print("Після вставки '-': \(str)")
}

// Замінюємо 'Thus us' на 'It is'
str = str.replacingOccurrences(of: "Thus us", with: "It is")
print("Після заміни 'Thus us' на 'It is': \(str)")

// Отримуємо 10-й та 15-й символи
if str.count > 14 {
    let tenthCharacter = str[str.index(str.startIndex, offsetBy: 9)]
    let fifteenthCharacter = str[str.index(str.startIndex, offsetBy: 14)]
    print("10-й символ: \(tenthCharacter)")
    print("15-й символ: \(fifteenthCharacter)")
}

// Витягуємо підрядок з 10-го по 15-й символи
if str.count > 14 {
    let range = str.index(str.startIndex, offsetBy: 9)..<str.index(str.startIndex, offsetBy: 14)
    let substring = str[range]
    print("Підрядок з 10-го по 15-й символи: \(substring)")
}
