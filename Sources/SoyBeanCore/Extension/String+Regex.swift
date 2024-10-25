//
//  String+Regex.swift
//
//
//  Created by 구태호 on 10/25/24.
//

import Foundation


public extension String {
    enum RegExType: String {
        /// 영 대,소문자 & 한글 & 숫자만 허용
        case onlyEnglishKoreanNumAnsSomeSpecialCharacter = "^[A-Za-z가-힣!?.,()@/-♡*_~^#&♤☆♧<>{}[]※《》♬♪★♥♣●♠◈◆◎●○％ⅠⅡⅢⅣⅤⅥⅦⅧⅨ]$"
    }
    
    /// 정규식 통과 유무 반환
    /// - Parameter regExType: 평가할 정규식 종류
    /// - Returns: 성공 시 true, 아니면 false 반환
    func evaluate(with regExType: RegExType) -> Bool {
        let predicate = NSPredicate(format: "SELF MATCHES %@", regExType.rawValue)
        
        if predicate.evaluate(with: self) {
            return true
        } else {
            return false
        }
    }
}
