import UIKit

/* Any, AnyObject, nil*/

/*
 Any: Swift의 모든 타입을 지칭하는 키워드
 AnyObject: 모든 클래스 타입을 지칭하는 프로토콜
 nil: 없음을 의미하는 키워드
 */

// MARK: - Any
var someAny: Any = 100
someAny = "어떤 타입도 수용 가능합니다."
someAny = 123.12


// MARK: - AnyObject

class SomeClass {}

var someAnyObject: AnyObject = SomeClass()


// MARK: - nil(nill, Null, NULL 유사한 표현)

// 어떤 데이터 타입은 들어올 수 있지만 빈 값은 들어올 수 없다.
// someAny = nil
// someAnyObject = nil
