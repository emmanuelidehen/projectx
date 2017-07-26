//
//  Post.swift
//  projectx
//
//  Created by Emmanuel Idehen on 7/25/17.
//  Copyright © 2017 Emmanuel Idehen. All rights reserved.
//

import UIKit
import FirebaseDatabase.FIRDataSnapshot





class Post {
    var key: String?
    let imageURL: String
    let imageHeight: CGFloat
    let creationDate: Date
    
    
    // properties and initializers
    
    init(imageURL: String, imageHeight: CGFloat) {
        self.imageURL = imageURL
        self.imageHeight = imageHeight
        self.creationDate = Date()
    }
    
}
