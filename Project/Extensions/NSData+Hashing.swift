//
//  NSDate+Hashing.swift
//  EPICHashing
//
//  Created by Danny Bravo on 02/08/2015.
//  Copyright © 2015 EPIC. All rights reserved.
//

import Foundation

//MARK: - enumeration
/// A list of currently supported hash algorithms for string objects.
enum HashAlgorithm {
    case MD2
    case MD4
    case MD5
    case SHA1
    case SHA224
    case SHA256
    case SHA384
    case SHA512
    
    //MARK: - private utilities
    private func digestLength() -> Int {
        switch(self) {
        case .MD2:
            return Int(CC_MD2_DIGEST_LENGTH)
        case .MD4:
            return Int(CC_MD4_DIGEST_LENGTH)
        case .MD5:
            return Int(CC_MD5_DIGEST_LENGTH)
        case .SHA1:
            return Int(CC_SHA1_DIGEST_LENGTH)
        case .SHA224:
            return Int(CC_SHA224_DIGEST_LENGTH)
        case .SHA256:
            return Int(CC_SHA256_DIGEST_LENGTH)
        case .SHA384:
            return Int(CC_SHA384_DIGEST_LENGTH)
        case .SHA512:
            return Int(CC_SHA512_DIGEST_LENGTH)
        }
    }
    
    private func hashData(data:NSData, inout digest:[UInt8]) {
        switch(self) {
        case .MD2:
            CC_MD2(data.bytes, CC_LONG(data.length), &digest)
        case .MD4:
            CC_MD4(data.bytes, CC_LONG(data.length), &digest)
        case .MD5:
            CC_MD5(data.bytes, CC_LONG(data.length), &digest)
        case .SHA1:
            CC_SHA1(data.bytes, CC_LONG(data.length), &digest)
        case .SHA224:
            CC_SHA224(data.bytes, CC_LONG(data.length), &digest)
        case .SHA256:
            CC_SHA256(data.bytes, CC_LONG(data.length), &digest)
        case .SHA384:
            CC_SHA384(data.bytes, CC_LONG(data.length), &digest)
        case .SHA512:
            CC_SHA512(data.bytes, CC_LONG(data.length), &digest)
        }
    }
    
}

extension NSData {
    
    //MARK: - hashing
    /**
    Creates a hash value of a data object using a specific common crypto algorithm. This hash will be constant accross OS versions and can be persisted safely.
    - parameter algorithm: The algorithm to use for hashing the data as specified by the HashAlgorithm enum.
    - returns: A hashed string representation of the data.
    */
    func hashUsingAlgorithm(algorithm: HashAlgorithm) -> String {
        let hashLength = algorithm.digestLength()
        var digest = [UInt8](count:hashLength, repeatedValue: 0)
        algorithm.hashData(self, digest: &digest)
        let output = NSMutableString(capacity: hashLength)
        for byte in digest {
            output.appendFormat("%02x", byte)
        }
        return output as String
    }
    
}