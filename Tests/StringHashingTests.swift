//
//  StringHashingTests.swift
//  EPICHashing
//
//  Created by Danny Bravo on 02/08/2015.
//  Copyright © 2015 EPIC. All rights reserved.
//  See LICENSE.txt for this sample’s licensing information
//

import XCTest

class StringHashingTests: XCTestCase {

    let string1 = "helloworld!"
    let string2 = "helloworld!"
    let string3 = "Hello World!"

    func testHashes() {
        
        //MD2
        var hash = string1.hashUsingAlgorithm(EPICHashAlgorithm.MD2)
        XCTAssertNotNil(hash)
        XCTAssertEqual(hash!.lengthOfBytesUsingEncoding(NSUTF8StringEncoding), 32)
        XCTAssertEqual(hash!, string2.hashUsingAlgorithm(EPICHashAlgorithm.MD2)!)
        XCTAssertNotEqual(hash!, string3.hashUsingAlgorithm(EPICHashAlgorithm.MD2)!)
        
        //MD4
        hash = string1.hashUsingAlgorithm(EPICHashAlgorithm.MD4)
        XCTAssertNotNil(hash)
        XCTAssertEqual(hash!.lengthOfBytesUsingEncoding(NSUTF8StringEncoding), 32)
        XCTAssertEqual(hash!, string2.hashUsingAlgorithm(EPICHashAlgorithm.MD4)!)
        XCTAssertNotEqual(hash!, string3.hashUsingAlgorithm(EPICHashAlgorithm.MD4)!)
        
        //MD5
        hash = string1.hashUsingAlgorithm(EPICHashAlgorithm.MD5)
        XCTAssertNotNil(hash)
        hash?.dataUsingEncoding(NSUTF8StringEncoding)
        XCTAssertEqual(hash!.lengthOfBytesUsingEncoding(NSUTF8StringEncoding), 32)
        XCTAssertEqual(hash!, string2.hashUsingAlgorithm(EPICHashAlgorithm.MD5)!)
        XCTAssertNotEqual(hash!, string3.hashUsingAlgorithm(EPICHashAlgorithm.MD5)!)
        
        //SHA1
        hash = string1.hashUsingAlgorithm(EPICHashAlgorithm.SHA1)
        XCTAssertNotNil(hash)
        XCTAssertEqual(hash!.lengthOfBytesUsingEncoding(NSUTF8StringEncoding), 40)
        XCTAssertEqual(hash!, string2.hashUsingAlgorithm(EPICHashAlgorithm.SHA1)!)
        XCTAssertNotEqual(hash!, string3.hashUsingAlgorithm(EPICHashAlgorithm.SHA1)!)
        
        //SHA224
        hash = string1.hashUsingAlgorithm(EPICHashAlgorithm.SHA224)
        XCTAssertNotNil(hash)
        XCTAssertEqual(hash!.lengthOfBytesUsingEncoding(NSUTF8StringEncoding), 56)
        XCTAssertEqual(hash!, string2.hashUsingAlgorithm(EPICHashAlgorithm.SHA224)!)
        XCTAssertNotEqual(hash!, string3.hashUsingAlgorithm(EPICHashAlgorithm.SHA224)!)
        
        //SHA256
        hash = string1.hashUsingAlgorithm(EPICHashAlgorithm.SHA256)
        XCTAssertNotNil(hash)
        XCTAssertEqual(hash!.lengthOfBytesUsingEncoding(NSUTF8StringEncoding), 64)
        XCTAssertEqual(hash!, string2.hashUsingAlgorithm(EPICHashAlgorithm.SHA256)!)
        XCTAssertNotEqual(hash!, string3.hashUsingAlgorithm(EPICHashAlgorithm.SHA256)!)
        
        //SHA384
        hash = string1.hashUsingAlgorithm(EPICHashAlgorithm.SHA384)
        XCTAssertNotNil(hash)
        XCTAssertEqual(hash!.lengthOfBytesUsingEncoding(NSUTF8StringEncoding), 96)
        XCTAssertEqual(hash!, string2.hashUsingAlgorithm(EPICHashAlgorithm.SHA384)!)
        XCTAssertNotEqual(hash!, string3.hashUsingAlgorithm(EPICHashAlgorithm.SHA384)!)
        
        //SHA512
        hash = string1.hashUsingAlgorithm(EPICHashAlgorithm.SHA512)
        XCTAssertNotNil(hash)
        XCTAssertEqual(hash!.lengthOfBytesUsingEncoding(NSUTF8StringEncoding), 128)
        XCTAssertEqual(hash!, string2.hashUsingAlgorithm(EPICHashAlgorithm.SHA512)!)
        XCTAssertNotEqual(hash!, string3.hashUsingAlgorithm(EPICHashAlgorithm.SHA512)!)
        
    }

}
