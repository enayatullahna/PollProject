//
//  VotingViewController.swift
//  PollPart2
//
//  Created by Enayatullah Naseri on 5/8/19.
//  Copyright © 2019 Enayatullah Naseri. All rights reserved.
//

import UIKit

class VotingViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var responseTextField: UITextField!
    
 //   var tableViewController: ResultsTableViewController?
    var voteController: VoteController?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func saveResponse(_ sender: Any) {
        guard let name = nameTextField.text,
            let response = responseTextField.text else {return}
        self.navigationController?.popToRootViewController(animated: true) // pop back to the previos storyboard sceine
        voteController?.createVote(with: name, response: response)
        
        nameTextField.text = ""
        responseTextField.text = ""
        
        }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "ShowVote" {
            
            guard let indexPath = sender as? ResultsTableViewController,
                let voteVC = segue.destination as? VotingViewController else {return}
            
//            let vote = voteController?.votes[indexPath.row]
            
 
            
        }
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }*/
    

}
