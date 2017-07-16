//
//  FirstViewController.swift
//  ThenSingsMySoul
//
//  Created by Sasha on 2/14/17.
//  Copyright © 2017 Novaci. All rights reserved.
//

import UIKit

class EnglishViewController: UITableViewController {

    //MARK: Properties
    var songs = [Song]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        loadEnglishSongs()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: Private Methods
    
    private func loadEnglishSongs() {
        guard let song1 = Song(title: "Test", text: "Going to be a longer one") else {
            fatalError("Unable to instantiate song")
        }
        guard let song2 = Song(title: "What", text: "Guess my name yo") else {
            fatalError("Unable to instantiate song")
        }
        
        guard let song3 = Song(title: "Who", text: "Guess my name yo bandito") else {
            fatalError("Unable to instantiate song")
        }
        
        songs += [song1, song2, song3]
    }
}

