//
//  ETL.swift
//  ETL
//
//  Created by Louis Shin on 17/1/22.
//  Copyright © 2017 Boostcamp. All rights reserved.
//

import Foundation

class ETL {
	
	static func transform(oldValue: [Int : [String]]) -> [String : Int] {
		var resultDic = [String : Int]()	// 함수 실행 후 생성되는 새로운 dictionary
		var key: String						// dictionary 의 key 값
		var value: Int						// dictioanry 의 value 값
		
		for (oldKey, stringArray) in oldValue {
			
			for item in stringArray {
				key = item.lowercased()		// oldValue내 정보를 소문자로 변경한 후 새로운 key로 저장
				value = oldKey				// oldValue내 key정보를 새로운 value로 저장
				resultDic[key] = value		// 새로운 dictionary에 정보를 저장
			}
		}
		
		return resultDic
	}
}
