import UIKit

// Swift의 기본 데이터 타입 , 데이터 타입에 엄격 함
// Bool, Int, UInt, Float, Double, Character, String

// Bool: true 와 false 두가지 값만 가짐
var someBool: Bool = true
someBool = false

// Int: 정수형 type, 양수와 음수, 0
var someInt: Int = -100
//someInt = 100.1 // 실수는 안됨(double)

// UInt: 부호가 없는 정수(양수)
var someUint: UInt = 100

// Float: 32bit, 부동소수 타입
var someFloat: Float = 3.14
someFloat = 3

//Double: 64bit, 부동소수 타입
var someDouble: Double = 3.14
someDouble = 3

// Character: 한 글자(문자)를 표현하기 위한 타입, 유니코드 사용
var someCharacter: Character = "🥰"
someCharacter = "🫶🏻"
someCharacter = "가"
someCharacter = "A"
print(someCharacter)

// String 여러 문자
var someString: String = "하하하"
someString = someString + "좋아"
print(someString)
