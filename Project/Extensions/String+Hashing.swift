//
//  String+Hashing.swift
//  EPICHashing
//
//  Created by Danny Bravo on 02/08/2015.
//  Copyright © 2015 EPIC. All rights reserved.
//  See LICENSE.txt for this sample’s licensing information
//

import Foundation

extension String  {
    
    //MARK: - hashing
    /**
    Creates a hash value for a string using a specific common crypto algorithm. This hash will be constant accross OS versions and can be persisted safely, unlike the `hash` and `hashValue` functions.
    - parameter algorithm: The algorithm to use for hashing a string as specified by the HashAlgorithm enum.
    - returns: A string value or nil depending on wether self can be converted to a valid NSData object. 
    */
    func hashUsingAlgorithm(algorithm: HashAlgorithm) -> String? {
        if let data = self.dataUsingEncoding(NSUTF8StringEncoding) {
            return data.hashUsingAlgorithm(algorithm)
        }
        return nil;
    }
    
}