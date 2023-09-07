//
//  CategoryTableViewController.swift
//  Todoey
//
//  Created by Burak Gül on 7.09.2023.
//  Copyright © 2023 App Brewery. All rights reserved.
//

import UIKit
import CoreData

class CategoryViewController: UITableViewController {
    
    var categoryArray = [CategoryList]()
    let context = (UIApplication.shared.delegate as!AppDelegate).persistentContainer.viewContext
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadCategories()

    }
    
    // MARK: - TableView Datasource Methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categoryArray.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell", for: indexPath)
        cell.textLabel?.text = categoryArray[indexPath.row].name
        
        return cell
        
        
    }
    //MARK: - TableView Delegate Methods
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "goToItems", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! TodoListViewController
        if let indexPath = tableView.indexPathForSelectedRow {
            destinationVC.selectedCategory = categoryArray[indexPath.row]
        }
        
    }
    
    
    
    
    //MARK: - Data Manipulation Methods
    func saveCategories()  {
        
        do {
            try context.save()
        }catch {
            print("Error saving context , \(error)")
        }
        self.tableView.reloadData()
    }
    
    func loadCategories(with request : NSFetchRequest<CategoryList>=CategoryList.fetchRequest())  {
        
        do {
            categoryArray = try context.fetch(request)
        } catch  {
            print("Error loading categories \(error)")
        }
        tableView.reloadData()
    }
    
    
    //MARK: - Add New Categories
    
    @IBAction func addButtonPressed(_ sender: UIBarButtonItem) {
        var textField = UITextField()
        let alert = UIAlertController(title: "Add new List ", message: "", preferredStyle:.alert)
        let action = UIAlertAction(title: "Add list", style: .default) { action in
            // what will happen once the user clicks the Add Item button on our alert
            
            
            
            let newList = CategoryList(context: self.context)
            newList.name = textField.text!
            
            self.categoryArray.append(newList)
            self.saveCategories()
            
        }
        alert.addTextField { alertTextField in
            alertTextField.placeholder = "Create New List"
            textField = alertTextField
        }
        alert.addAction(action)
        present(alert, animated: true)
    }
    
    
    
    
    
    


 

}
