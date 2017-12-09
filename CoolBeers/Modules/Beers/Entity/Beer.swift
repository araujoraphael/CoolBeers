//
//  Beer.swift
//  CoolBeers
//
//  Created by Raphael Araújo on 09/12/17.
//  Copyright © 2017 Raphael Araújo. All rights reserved.
//

import UIKit
import ObjectMapper
import RealmSwift

class Beer: Object, Mappable {
    
    @objc dynamic var id: Int = 0
    @objc dynamic var name: String = ""
    @objc dynamic var tagline: String = ""
    @objc dynamic var imageURL: String = ""
    
    override class func primaryKey() -> String {
        return "id"
    }
    
    required convenience init?(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        tagline <- map["tagline"]
        imageURL <- map["image_url"]
    }
    

}
