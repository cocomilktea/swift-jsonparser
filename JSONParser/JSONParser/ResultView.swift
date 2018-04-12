//
//  ResultView.swift
//  JSONParser
//
//  Created by 김수현 on 2018. 3. 13..
//  Copyright © 2018년 JK. All rights reserved.
//

import Foundation

struct ResultView {
    
    func resultMessage(_ data: JSONData,_ dataCount: MyDataCount) {
        
        if data is Dictionary<String, Any> {
            print("총 \(dataCount.objectDataCount())개의 객체 데이터 중에 \(dataCount.countOfNumber()) \(dataCount.countOfString()) \(dataCount.countOfBool()) \(dataCount.countOfArray())가 포함되어 있습니다")
        } else if data is ArrayData {
            print("총 \(dataCount.arrayDataCount())개의 배열 데이터 중에 \(dataCount.countArrayOfArray()) \(dataCount.countOfObject())가 포함되어 있습니다.")
        }
    }
    
}


