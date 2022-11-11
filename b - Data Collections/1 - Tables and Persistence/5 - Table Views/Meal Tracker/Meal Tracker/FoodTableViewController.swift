//
//  FoodTableViewController.swift
//  Meal Tracker
//
//  Created by Oğuz Kaan Altun on 11.11.2022.
//

import UIKit

class FoodTableViewController: UITableViewController {

    var meals: [Meal] {
        let breakfast = Meal(
            name: "Breakfast",
            food: [Food(name: "egg", description: "omlet"),
                   Food(name: "Cheese", description: "slice")])
        let lunch = Meal(
            name: "Lunch",
            food: [Food(name: "Sandwich", description: "nugget"),
                   Food(name: "Yogurt", description: "plain")])
        let dinner = Meal(
            name: "Dinner",
            food: [Food(name: "Soup", description: "tomatoes"),
                   Food(name: "T-Bone Steak", description: "medium-rare")])
        return [breakfast, lunch, dinner]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Meal Tracker"
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return meals.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return meals[section].food.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Food", for: indexPath)
        let meal = meals[indexPath.section]
        let food = meal.food[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = food.name
        content.secondaryText = food.description
        cell.contentConfiguration = content
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return meals[section].name
    }
}
