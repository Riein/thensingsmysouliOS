//
//  Song.swift
//  ThenSingsMySoul
//
//  Created by Sasha on 6/16/17.
//  Copyright © 2017 Novaci. All rights reserved.
//

import UIKit

class Song {
    //MARK: Properties
    
    var title: String
    var text: String
    
    init?(title: String, text:String) {
        //Initialization should fail if there is no name or if the rating is negative
        guard !title.isEmpty || text.isEmpty else {
            return nil
        }
        
        //Initialize stored properties
        self.title = title;
        self.text = text
    }
}
