//
//  ViewController.swift
//  Todoey
//
//  Created by Philipp Muellauer on 02/12/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit
import RealmSwift

class TodoListViewController: SwipeTableViewController {

    var todoItems : Results<Item>?
    let realm = try! Realm()
    
    var selectedCategory : Category? {
        didSet{
            loadItems()
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
//        you can add plus button with programaticlly
//        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(pressedAddButton))
//        navigationItem.rightBarButtonItem?.tintColor = .white
        
//        print(FileManager.default.urls(for: .documentDirectory, in: .userDomainMask))

        
    }
    
    //MARK: - TableView Datasource Methods

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = super.tableView(tableView, cellForRowAt: indexPath)
        if let item = todoItems?[indexPath.row] {
            cell.textLabel?.text = item.title
            // ternary opearator
            // value = condition ? valueIfTrue : valueIfFalse
            cell.accessoryType = item.done ? .checkmark : .none
            
    //        if item.done {
    //            cell.accessoryType = .checkmark
    //        }else {
    //            cell.accessoryType = .none
    //        }
        }else {
            cell.textLabel?.text = "No Items Added"
        }

        return  cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todoItems?.count ?? 1
    }
    
    //MARK: - TableView Delegate Methods
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        if let item = todoItems?[indexPath.row] {
            do {
                try realm.write {
                     item.done = !item.done
                    // realm.delete(item)  this code delete item from databse
                }
            } catch{
                print("Error saving done status , \(error)")
            }
        }
        tableView.reloadData()
    }
    
    //MARK: - Add New Items

    @IBAction func addButtonPressed(_ sender: UIBarButtonItem) {
        var textField = UITextField()
        let alert = UIAlertController(title: "Add new Todoey Item", message: "", preferredStyle:.alert)
        let action = UIAlertAction(title: "Add item", style: .default) { action in
            // what will happen once the user clicks the Add Item button on our alert
            
            if let currentCategory = self.selectedCategory {
                do {
                    try self.realm.write {
                        
                        let newItem = Item()
                        newItem.title = textField.text!
                        newItem.dateCreated = Date()
                        currentCategory.items.append(newItem)
                        self.realm.add(newItem)
                    }
                } catch  {
                    print("Error saving new items \(error)")
                }
                
                
                
            }
            self.tableView.reloadData()
            


        }
        alert.addTextField { alertTextField in
            alertTextField.placeholder = "Create New Item"
            textField = alertTextField
        }
        alert.addAction(action)
        present(alert, animated: true)
    }
    
    //MARK: - Model Manupulation Function
    
    
    func loadItems()  {
        todoItems = selectedCategory?.items.sorted(byKeyPath: "title", ascending: true)
        tableView.reloadData()
    }
    
    override func updateModel(at indexPath: IndexPath) {
        if let deleteItem = todoItems?[indexPath.row] {
            do {
                try realm.write {
                    self.realm.delete(deleteItem)
                }
            } catch  {
                print("Error deleting item , \(error)")
            }
            self.tableView.reloadData()
        }
    }
}

//MARK: - SearchBar functions

extension TodoListViewController : UISearchBarDelegate {

    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchBar.text?.count == 0 {
            loadItems()
            DispatchQueue.main.async {
                searchBar.resignFirstResponder()
            }
        }else{
            todoItems = todoItems?.filter("title CONTAINS[cd] %@", searchBar.text!).sorted(byKeyPath: "dateCreated", ascending: true)
            tableView.reloadData()
        }

    }
    
   
    
}

