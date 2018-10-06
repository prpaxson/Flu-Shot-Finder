//
//  StoreDatabase.swift
//  Flu Shot Finder
//
//
// Copyright 2018 Amazon.com, Inc. or its affiliates (Amazon). All Rights Reserved.
//
// Code generated by AWS Mobile Hub. Amazon gives unlimited permission to 
// copy, distribute and modify it.
//
// Source code generated from template: aws-my-sample-app-ios-swift v0.21
//

import Foundation
import UIKit
import AWSDynamoDB

class StoreDatabase: AWSDynamoDBObjectModel, AWSDynamoDBModeling {
    
    var _userId: String?
    var _storeName: String?
    var _perks: String?
    var _shotPrice: NSNumber?
    
    class func dynamoDBTableName() -> String {

        return "flushotfinder-mobilehub-698310344-StoreDatabase"
    }
    
    class func hashKeyAttribute() -> String {

        return "_userId"
    }
    
    class func rangeKeyAttribute() -> String {

        return "_storeName"
    }
    
    override class func jsonKeyPathsByPropertyKey() -> [AnyHashable: Any] {
        return [
               "_userId" : "userId",
               "_storeName" : "storeName",
               "_perks" : "perks",
               "_shotPrice" : "shotPrice",
        ]
    }
}
