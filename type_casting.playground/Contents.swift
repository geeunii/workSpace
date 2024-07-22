import UIKit

/* 타입캐스팅 */

// 스위프트의 타입캐스팅은
// 인스턴스의 타입을 확인하는 용도와
// 클래스의 인스턴스를 부모 혹은 자식 클래스의 타입으로 사용할 수 있는지를 확인하는 데 사용됩니다.
// 'is'와 'as' 키워드를 사용합니다.

// 타입 캐스팅을 위한 클래스 정의
class Person {
    var name: String = "" // 사람의 이름 프로퍼티
    func breath() { // 숨 쉬는 메서드
        print("숨을 쉽니다.")
    }
}

class Student: Person {
    var school: String = "" // 학생의 학교 프로퍼티
    func goToSchool() { // 등교하는 메서드
        print("등교를 합니다.")
    }
}

class UniversityStudent: Student {
    var major: String = "" // 전공 프로퍼티
    func goToMT() { // 멤버쉽 트레이닝에 가는 메서드
        print("멤버쉽 트레이닝을 갑니다.")
    }
}

// 인스턴스 생성
var geuni: Person = Person() // Person 타입 인스턴스
var hana: Student = Student() // Student 타입 인스턴스
var jason: UniversityStudent = UniversityStudent() // UniversityStudent 타입 인스턴스

// MARK: - 타입 확인
// 'is'를 사용하여 타입을 확인합니다.

var result: Bool

result = geuni is Person // true, geuni는 Person 타입입니다.
result = geuni is Student // false, geuni는 Student 타입이 아닙니다.
result = geuni is UniversityStudent // false, geuni는 UniversityStudent 타입이 아닙니다.

result = hana is Person // true, hana는 Person 타입입니다.
result = hana is Student // true, hana는 Student 타입입니다.
result = hana is UniversityStudent // false, hana는 UniversityStudent 타입이 아닙니다.

result = jason is Person // true, jason은 Person 타입입니다.
result = jason is Student // true, jason은 Student 타입입니다.
result = jason is UniversityStudent // true, jason은 UniversityStudent 타입입니다.

// 타입 확인 결과에 따라 출력
if geuni is UniversityStudent {
    print("geuni는 대학생입니다.")
} else if geuni is Student {
    print("geuni는 학생입니다.")
} else if geuni is Person {
    print("geuni는 사람입니다.")
} // 출력: geuni는 사람입니다.

switch jason {
case is Person:
    print("jason은 사람입니다.")
case is Student:
    print("jason은 학생입니다.")
case is UniversityStudent:
    print("jason은 대학생입니다.")
default:
    print("jason은 사람도, 학생도, 대학생도 아닙니다.")
} // 출력: jason은 사람입니다.

switch jason {
case is UniversityStudent:
    print("jason은 대학생입니다.")
case is Student:
    print("jason은 학생입니다.")
case is Person:
    print("jason은 사람입니다.")
default:
    print("jason은 사람도, 학생도, 대학생도 아닙니다.")
} // 출력: jason은 대학생입니다.

// MARK: - 업 캐스팅
// 'as'를 사용하여 부모 클래스의 인스턴스로 사용할 수 있도록
// 컴파일러에게 타입 정보를 전환해줍니다.

var mike: Person = UniversityStudent() as Person // UniversityStudent를 Person으로 업 캐스팅
var jenny: Student = Student() // Student 타입 인스턴스
// var jina: UniversityStudent = Person() as UniversityStudent // 컴파일 오류 발생
var jina: Any = Person() // 'as Any' 생략 가능

// MARK: - 다운 캐스팅
// 'as?' 또는 'as!'를 사용하여
// 자식 클래스의 인스턴스로 사용할 수 있도록
// 컴파일러에게 인스턴스의 타입 정보를 전환해줍니다.

// MARK: 조건부 다운 캐스팅
// 'as?'
var optionalCasted: Student?

optionalCasted = mike as? UniversityStudent // 성공: mike는 UniversityStudent로 다운 캐스팅
optionalCasted = jenny as? UniversityStudent // nil: jenny는 UniversityStudent가 아님
optionalCasted = jina as? UniversityStudent // nil: jina는 UniversityStudent가 아님
optionalCasted = jina as? Student // nil: jina는 Student가 아님

// MARK: 강제 다운 캐스팅
// 'as!'
var forcedCasted: Student

optionalCasted = mike as! UniversityStudent // 성공: mike는 UniversityStudent로 강제 다운 캐스팅
// optionalCasted = jenny as! UniversityStudent // 런타임 오류 발생
// optionalCasted = jina as! UniversityStudent // 런타임 오류 발생
// optionalCasted = jina as! Student // 런타임 오류 발생

// 활용
func doSomethingWithSwitch(someone: Person) {
    switch someone {
    case is UniversityStudent:
        (someone as! UniversityStudent).goToMT() // 강제 다운 캐스팅 후 메서드 호출
    case is Student:
        (someone as! Student).goToSchool() // 강제 다운 캐스팅 후 메서드 호출
    case is Person:
        (someone as! Person).breath() // 강제 다운 캐스팅 후 메서드 호출
    }
}

doSomethingWithSwitch(someone: mike as Person) // 멤버쉽 트레이닝을 갑니다.
doSomethingWithSwitch(someone: mike) // 멤버쉽 트레이닝을 갑니다.
doSomethingWithSwitch(someone: jenny) // 등교를 합니다.
doSomethingWithSwitch(someone: geuni) // 숨을 쉽니다.

func doSomething(someone: Person) {
    if let universityStudent = someone as? UniversityStudent {
        universityStudent.goToMT() // 조건부 다운 캐스팅 후 메서드 호출
    } else if let student = someone as? Student {
        student.goToSchool() // 조건부 다운 캐스팅 후 메서드 호출
    } else if let person = someone as? Person {
        person.breath() // 조건부 다운 캐스팅 후 메서드 호출
    }
}

doSomething(someone: mike as Person) // 멤버쉽 트레이닝을 갑니다.
doSomething(someone: mike) // 멤버쉽 트레이닝을 갑니다.
doSomething(someone: jenny) // 등교를 합니다.
doSomething(someone: geuni) // 숨을 쉽니다.

