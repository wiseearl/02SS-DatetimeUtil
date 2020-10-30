//
//  DatetimeUtil.swift
//  DatetimeUtil
//
//  Created by Jia-Hong Lee on 2020/10/30.
//

import Foundation

class DatetimeUtil{
    
    //PS: If you need Date type time, just use Date()
    
    class func getNowString() -> String {
        
        let now = Date()
        let formatter = DateFormatter()
        formatter.timeZone = TimeZone.current
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        let dateString = formatter.string(from: now)
        
        return dateString
    }
    
    class func isNowAfterNSec(dt : Date, intNSec : Int) -> Bool {
        var boolReturn : Bool = false
        let intInterval : Double = Double(intNSec) * 1000
        let dtTarget = dt.addingTimeInterval(intInterval)
        let dtNow = Date()
        if(dtNow > dtTarget){
            boolReturn = true
        }
        return boolReturn
    }
    
}
