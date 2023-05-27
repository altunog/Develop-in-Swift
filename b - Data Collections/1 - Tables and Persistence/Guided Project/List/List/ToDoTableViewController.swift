//
//  ToDoTableViewController.swift
//  List
//
//  Created by Oğuz Kaan Altun on 26.05.2023.
//

import UIKit

class ToDoTableViewController: UITableViewController {
    
    var toDos = [ToDo]()

    override func viewDidLoad() {
        super.viewDidLoad()

        if let savedToDos = ToDo.loadToDos() {
            toDos = savedToDos
        } else {
            toDos = ToDo.loadSampleToDos()
        }
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        navigationItem.leftBarButtonItem = editButtonItem
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDos.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoCellIdentifier", for: indexPath)
        
        let toDo = toDos[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = toDo.title
        cell.contentConfiguration = content
        return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            toDos.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
}

extension ToDoTableViewController {
    
    @IBSegueAction func editToDo(_ coder: NSCoder, sender: Any?) -> ToDoDetailTableViewController? {
        let detailController = ToDoDetailTableViewController(coder: coder)
        
        guard let senderCell = sender as? UITableViewCell,
              let indexPath = tableView.indexPath(for: senderCell) else {
            return detailController
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
        detailController?.toDo = toDos[indexPath.row]
        
        return detailController
    }
    
    @IBAction func unwindToToDoList(segue: UIStoryboardSegue) {
        guard segue.identifier == "saveUnwind" else { return }
        
        let sourceController = segue.source as! ToDoDetailTableViewController
        if let toDo = sourceController.toDo {
            let newIndexPath = IndexPath(row: toDos.count, section: 0)
            toDos.append(toDo)
            tableView.insertRows(at: [newIndexPath], with: .automatic)
        }
    }
}
