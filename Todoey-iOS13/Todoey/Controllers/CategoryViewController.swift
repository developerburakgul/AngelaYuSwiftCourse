//
//  CategoryTableViewController.swift
//  Todoey
//
//  Created by Burak Gül on 7.09.2023.
//  Copyright © 2023 App Brewery. All rights reserved.
//

import UIKit
import RealmSwift


class CategoryViewController: SwipeTableViewController {
    let realm = try! Realm()
    var categoryArray : Results<Category>?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadCategories()

    }
    
    // MARK: - TableView Datasource Methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categoryArray?.count ?? 1
    }
    

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = super.tableView(tableView, cellForRowAt: indexPath)
        cell.textLabel?.text = categoryArray?[indexPath.row].name ?? "No Categories Added Yet"
        return cell
        
        
    }
    //MARK: - TableView Delegate Methods
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "goToItems", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! TodoListViewController
        if let indexPath = tableView.indexPathForSelectedRow {
            destinationVC.selectedCategory = categoryArray?[indexPath.row]
        }
        
    }
    
    
    
    
    //MARK: - Data Manipulation Methods
    func save(_ category : Category)  {
        
        do {
            try realm.write {
                realm.add(category)
            }
        }catch {
            print("Error saving context , \(error)")
        }
        self.tableView.reloadData()
    }
    
    func loadCategories()  {
        categoryArray = realm.objects(Category.self)
        tableView.reloadData()
    }
    
    //MARK: - Delete Data From Swipe
    
    override func updateModel(at indexPath: IndexPath) {
        if let categoryForDeletion = self.categoryArray?[indexPath.row]{
            do {
                try self.realm.write {
                    self.realm.delete(categoryForDeletion)
                }
            } catch  {
                print("Error deleting category , \(error)")
            }
        }
    }
    
    
    //MARK: - Add New Categories
    
    @IBAction func addButtonPressed(_ sender: UIBarButtonItem) {
        var textField = UITextField()
        let alert = UIAlertController(title: "Add new List ", message: "", preferredStyle:.alert)
        let action = UIAlertAction(title: "Add list", style: .default) { action in
            // what will happen once the user clicks the Add Item button on our alert
            
            let newCategory = Category()
            newCategory.name = textField.text!
            self.save(newCategory)
            
        }
        alert.addTextField { alertTextField in
            alertTextField.placeholder = "Create New List"
            textField = alertTextField
        }
        alert.addAction(action)
        present(alert, animated: true)
    }
    
}



