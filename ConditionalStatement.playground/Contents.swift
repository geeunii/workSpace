import UIKit

// 다크모드 여부
var isDarkModeOn : Bool = true

// 조건
if (isDarkModeOn == true) {
    print("다크모드 입니다.")
}

if (isDarkModeOn != true) {
    print("다크모드가 아닙니다.")
}

if isDarkModeOn == true {
    print("다크모드 입니다.")
}

if isDarkModeOn {
    print("다크모드 입니다.")
}

if !isDarkModeOn {
    print("다크모드가 아닙니다.")
}
