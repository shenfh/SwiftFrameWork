//
//  SwiftFrameWorkTests.swift
//  SwiftFrameWorkTests
//
//  Created by shenfh on 16/9/1.
//  Copyright © 2016年 shenfh. All rights reserved.
//

import XCTest
@testable import SwiftFrameWork

class SwiftFrameWorkTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testQuryUrl() {
        let url = "https://www.google.com.hk/?gws_rd=cr,ssl#q=ios+router&newwindow=1&safe=strict&start=20"
        let dicValue = url.queryParameters()
        printlen(dicValue)
        XCTAssert(dicValue.count > 0, "fdfdfd")
    }
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
