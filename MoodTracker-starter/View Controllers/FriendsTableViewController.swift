//
//  FriendsTableViewController.swift
//  MoodTracker-starter
//
//  Created by Nikolas Burk on 02/11/16.
//  Copyright © 2016 Nikolas Burk. All rights reserved.
//

import UIKit


class FriendsTableViewController: UITableViewController {
    
    @IBAction func addButton(segue: UIStoryboardSegue) {
        
    }
    static let happyString = "Clap along if you feel like a room without a roof!"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    var friendArray = [Friend]() {
        didSet {
            tableView.reloadData()
        }
    }
    
    func nextMood(mood: Mood) -> Mood {
        switch mood {
        case .happy: return .angry
        case .medium: return .happy
        case .angry: return .medium
        }
    }
    
    func updateFriend(friend: Friend, mood: Mood) {
        friend.mood = mood //update model
        tableView.reloadData() //update view
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friendArray.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
    }
    
}
