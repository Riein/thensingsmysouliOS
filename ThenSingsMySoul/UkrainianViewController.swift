//
//  SecondViewController.swift
//  ThenSingsMySoul
//
//  Created by Sasha on 2/14/17.
//  Copyright © 2017 Novaci. All rights reserved.
//

import UIKit

class UkrainianViewController: UITableViewController {

    //MARK: Properties
    var songs = [Song]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        loadUkrainianSongs()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: Private Methods
    
    private func loadUkrainianSongs() {
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
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return songs.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //Table view cells are reused and should be dequeued using a cell identifier
        let cellIdentifier = "UkrainianTableViewCell"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? UkrainianTableViewCell else {
            fatalError("The dequeued cell is not an instance of UkrainianTableViewCell")
        }
        
        // Fetches the appropriate song for the data source layout
        let song = songs[indexPath.row]
        
        //configure the cell...
        cell.songLabel.text = song.text
        
        return cell
    }

}

