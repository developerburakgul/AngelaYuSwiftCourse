//
//  ChatViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
import FirebaseCore
import FirebaseFirestore
import FirebaseAuth

class ChatViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var messageTextfield: UITextField!
    let db = Firestore.firestore()
    var messages : [Message] = [
        Message(sender: "1@2.com", body: "hey"),
        Message(sender: "a@b.com", body: "Hello"),
        Message(sender: "1@2.com", body: "What's up ?")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        navigationItem.title = K.appName
        navigationItem.hidesBackButton = true
        tableView.register(UINib(nibName: K.cellNibName, bundle: nil), forCellReuseIdentifier: K.cellIdentifier)
    

    }
    
    @IBAction func sendPressed(_ sender: UIButton) {
        
        if let messageBody = messageTextfield.text , let messageSender = Auth.auth().currentUser?.email {
            db.collection(K.FStore.collectionName).addDocument(data: [
                K.FStore.bodyField : messageBody,
                K.FStore.senderField : messageSender
            ]){
                (error) in
                if let e = error {
                    print("There was an issue saving data to FireStore , \(e)")
                }else {
                    print("Succesfully saved data")
                }
            }
        }
    }
    
    @IBAction func logOutPressed(_ sender: UIBarButtonItem) {
        
        do {
          try Auth.auth().signOut()
            navigationController?.popToRootViewController(animated: true)
        } catch let signOutError as NSError {
          print("Error signing out: %@", signOutError)
        }
    }
    
}

extension ChatViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: K.cellIdentifier, for: indexPath) as! MessageCell
        cell.label.text = messages[indexPath.row].body
        return cell
    }
    
    
    
    
}