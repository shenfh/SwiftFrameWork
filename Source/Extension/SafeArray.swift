//
//  SafeArray.swift
//  meiqu
//
//  Created by shenfh on 16/1/29.
//  Copyright © 2016年 com.meiqu.com. All rights reserved.
//

import Foundation

extension NSArray{
    public func objectAtIndex(safe index: Int) -> AnyObject?{
        guard index >= 0 else {return nil}
        guard index < count else { return nil}
        return self.object(at: index) as AnyObject?
        
    }
}

extension Array {
    public subscript (safe index: Int) -> Element? {
        get{
            if count == 0 || index >= count || index < 0 {
                return nil
            }
            return self[index]
        }
        set {
            if let value = newValue {
                if index >= count || index < 0 {
                   self.append(value)
                } else {
                    self[index] = value
                }
            }
        }
    }
    
    
    public mutating func addFromArray(_ array:[Element]){
        for object in array {
            append(object)
        }
    }
    
    public mutating func resetByArray(_ array:[Element]) {
        removeAll()
        addFromArray(array)
    }
    
    public mutating func removeAtIndex(safe index:Int) {
        guard index < count else{return}
        self.remove(at: index)
    }    
}

extension Dictionary {
    public subscript(safe key:Key) ->Value?{
        get{
            return self[key]
        }
        set{
            if let value = newValue {
                self[key] = value
            }
        }
    }
}
