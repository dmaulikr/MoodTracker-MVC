//
//  AddFriendViewController.swift
//  MoodTracker-starter
//
//  Created by Madhur Malhotra on 1/10/17.
//  Copyright © 2017 Nikolas Burk. All rights reserved.
//

import UIKit

class AddFriendViewController: UIViewController {

    @IBOutlet weak var friendTextField: UITextField!
    @IBOutlet weak var moodSegmentedControl: UISegmentedControl!
    
    var moodStatus: Mood!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let identifier = segue.identifier {
            if identifier == "AddFriend" {
                let friendName = friendTextField.text
                switch moodSegmentedControl.selectedSegmentIndex {
                    case 0: moodStatus = Mood.happy
                    case 1: moodStatus = Mood.medium
                    case 2: moodStatus = Mood.angry
                    default: break
                }
                let friend = Friend(name: friendName!, mood: moodStatus)
                let destination = segue.destination as! FriendsTableViewController
                destination.friendArray.append(friend)
            }
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
