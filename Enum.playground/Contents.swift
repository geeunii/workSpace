import UIKit

enum School {
    case elementary
    case middle
    case high
    // 한 줄 표현 가능
    // case elementary, middle, high
}

let yourSchool = School.elementary
print("yourSchool : \(yourSchool)")

enum Grade : Int {
    case first = 1
    case second = 2
}

let yourGrade = Grade.second
print("yourGrade : \(yourGrade.rawValue)")

enum SchoolDetail {
    case elementary(name: String)
    case middle(name: String)
    case high(name: String)
    
    func getName() -> String {
        switch self {
        case.elementary(let name):
            return name
        case let.middle(name):
            return name
        case.high(let name):
            return name
        }
    }
}

let yourMiddleSchoolName = SchoolDetail.middle(name: "Geuni-middle")

print("yourMiddleSchoolName : \(yourMiddleSchoolName.getName())")
